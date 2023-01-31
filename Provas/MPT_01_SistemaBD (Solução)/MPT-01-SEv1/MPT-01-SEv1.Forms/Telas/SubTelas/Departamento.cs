using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models.Employees;
using MPT_01_SEv1.Forms.Telas.Dialogos;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class Departamento : Form
{
    private readonly Employee _user;
    private int _skip = 0;
    private int _take = 2;

    public Departamento(Employee user)
    {
        InitializeComponent();

        _user = user;
    }

    private void Departamento_KeyUp(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4) this.Close();
    }

    private void resetTableAndComboBox()
    {
        
    }

    private void loadTable()
    {
        this.dataGridViewDepartments.Rows.Clear();
        using ApplicationDbContext context = new();
        IQueryable<Employee> employeess;
        var employees = context.Employees;
        var list = employees;
        employeess = employees.AsNoTracking().OrderBy(c => c.empname).Skip(_skip * _take).Take(_take);
        foreach (var emp in employeess.ToList())
        {
            int? gerenteId;
            try
            {
                gerenteId = (int)emp.mgrid!;
            }
            catch (Exception)
            {
                gerenteId = null;
            }

            Employee? gerente = context.Employees.FirstOrDefault(x => x.empid == gerenteId);
            this.dataGridViewDepartments.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
        }
    }

    private void buttonAdd_Click(object sender, EventArgs e)
    {
        using ApplicationDbContext context = new();
        using var form = new CrudDepartamento();
        form.Text = "Adição de departamento";

        form.loadCombo();

        if (form.ShowDialog() == DialogResult.OK)
        {
            try
            {
                int? mgrid = (form.comboBoxGerents.SelectedItem as Employee)?.mgrid;
                if (mgrid == null) throw new Exception();
            }
            catch (Exception)
            {
                MessageBox.Show("É necessário um gerente para o departamento");
            }
        }
    }

    private void buttonViewGerent_Click(object sender, EventArgs e)
    {
        using ApplicationDbContext context = new();
        using var form = new DadosGerente(_user); // fazer
        form.Text = "Adição de departamento";

        if (form.ShowDialog() == DialogResult.OK)
        {

        }
    }
}
