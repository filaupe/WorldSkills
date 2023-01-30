using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models.Employees;
using MPT_01_SEv1.Forms.Telas.Dialogos;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class Funcionario : Form
{
    private readonly Employee _user;

    public Funcionario(Employee user)
    {
        InitializeComponent();
        _user = user;
    }

    private void Funcionario_KeyUp(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4) this.Close();
    }

    private void buttonAdd_Click(object sender, EventArgs e)
    {
        using var form = new CrudFuncionario();
        form.Text = "Adição de funcionário";
        if (form.ShowDialog() == DialogResult.OK)
        {
            using ApplicationDbContext context = new();
            Employee employee = new()
            {
                empname = form.textBoxName.Text,
                salary = decimal.Parse(form.textBoxSalary.Text),
                depid = _user.depid,
                mgrid = _user.empid,
                bornDate = new DateTime(),
                admissionDate = DateTime.Now
            };
            context.Employees.Add(employee);
            context.SaveChanges();
            this.comboBoxFuncionarios.DataSource = context.Employees.ToList();
            this.comboBoxFuncionarios.DisplayMember = "empname";
            this.comboBoxFuncionarios.ValueMember = "empid";
            MessageBox.Show("Funcionário adicionado com sucesso!");
        }
    }

    private void buttonEdit_Click(object sender, EventArgs e)
    {
        using var form = new CrudFuncionario();
        form.Text = "Edição de funcionário";
        if (form.ShowDialog() == DialogResult.OK)
        {
            using ApplicationDbContext context = new();
            Employee employee = (this.comboBoxFuncionarios.SelectedItem as Employee);
            context.Employees.Attach(employee);
            context.Entry(employee).State = EntityState.Modified;
            context.SaveChanges();
            this.comboBoxFuncionarios.SelectedItem = employee;
            MessageBox.Show("Funcionário adicionado com sucesso!");
        }
    }
}
