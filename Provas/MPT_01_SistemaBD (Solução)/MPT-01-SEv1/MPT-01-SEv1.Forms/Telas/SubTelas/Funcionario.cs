using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models.Employees;
using MPT_01_SEv1.Forms.Telas.Dialogos;
using System.Collections.Generic;
using System.Windows.Forms;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class Funcionario : Form
{
    private readonly Employee _user;
    private int _skip = 0;
    private int _take = 2;

    public Funcionario(Employee user)
    {
        InitializeComponent();
        _user = user;
        using ApplicationDbContext db = new();
        if (!db.Employees.Any(x => x.mgrid == _user.empid))
        {
            buttonDelete.Visible = false;
            buttonEdit.Visible = false;
        }
    }

    private void Funcionario_KeyUp(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4) this.Close();
    }

    private void buttonAdd_Click(object sender, EventArgs e)
    {
        using ApplicationDbContext context = new();
        using var form = new CrudFuncionario();
        form.Text = "Adição de funcionário";

        form.comboBoxGerenteDoFuncionario.DataSource = context.Employees.ToList();
        form.comboBoxGerenteDoFuncionario.DisplayMember = "empname";
        form.comboBoxGerenteDoFuncionario.ValueMember = "empid";

        if (form.ShowDialog() == DialogResult.OK)
        {
            int? mgrid = (form.comboBoxGerenteDoFuncionario.SelectedItem as Employee)?.empid;
            try
            {
                decimal salario = decimal.Parse(form.textBoxSalary.Text);
                if (salario <= 0)
                    throw new Exception();
                Employee employee = new()
                {
                    mgrid = mgrid,
                    empname = form.textBoxName.Text,
                    salary = salario,
                    depid = _user.depid,
                    deptname = _user.deptname,
                    deptmgrid = _user.deptmgrid,
                    bornDate = new DateTime(int.Parse(form.textBoxYear.Text), int.Parse(form.textBoxMouth.Text), int.Parse(form.textBoxDay.Text)),
                    admissionDate = DateTime.Now,
                    loginCount = 0
                };
                if ((employee.admissionDate.Year-employee.bornDate.Year) > 18)
                {
                    context.Employees.Add(employee);
                    try
                    {
                        context.SaveChanges();
                    }
                    catch (Exception)
                    {

                    }

                    resetTableAndComboBox(); 
                    MessageBox.Show("Funcionário adicionado com sucesso!");
                }
                else
                {
                    MessageBox.Show("Não é permitido menores de 18 anos.");
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Não é permitido, valores menores ou iguais a R$0");
            }
            
        }
    }

    private void resetTableAndComboBox()
    {
        using ApplicationDbContext context = new();
        this.comboBoxFuncionarios.DataSource = context.Employees.ToList();
        this.comboBoxFuncionarios.DisplayMember = "empname";
        this.comboBoxFuncionarios.ValueMember = "empid";
        this.dataGridViewEmployees.Rows.Clear();
        foreach (var emp in context.Employees.AsNoTracking().Skip(_skip*_take).Take(_take).ToList())
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
            this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
        }
    }

    private void buttonEdit_Click(object sender, EventArgs e)
    {
        using var form = new CrudFuncionario();
        form.Text = "Edição de funcionário";
        Employee employee = (this.comboBoxFuncionarios.SelectedItem as Employee)!;

        form.textBoxName.Text = employee.empname;
        form.textBoxSalary.Text = employee.salary.ToString();
        form.textBoxDay.Text = employee.bornDate.Day.ToString();
        form.textBoxMouth.Text = employee.bornDate.Month.ToString();
        form.textBoxYear.Text = employee.bornDate.Year.ToString();

        if (form.ShowDialog() == DialogResult.OK)
        {
            using ApplicationDbContext context = new();
            

            employee.empname = form.textBoxName.Text;
            employee.salary = decimal.Parse(form.textBoxSalary.Text);
            employee.bornDate = new DateTime(int.Parse(form.textBoxYear.Text), int.Parse(form.textBoxMouth.Text), int.Parse(form.textBoxDay.Text));

            context.Employees.Attach(employee);
            context.Entry(employee).State = EntityState.Modified;
            context.SaveChanges();

            resetTableAndComboBox();
            this.comboBoxFuncionarios.SelectedItem = employee;

            MessageBox.Show("Funcionário alterado com sucesso!");
        }
    }

    private void Funcionario_Load(object sender, EventArgs e)
    {
        if (_skip == 0)
        {
            this.buttonPreviousPage.Enabled = false;
            this.buttonFirstPage.Enabled = false;
        }
        this.resetTableAndComboBox();
        using ApplicationDbContext context = new();
        this.comboBoxFuncionarios.DataSource = context.Employees.ToList();
        this.comboBoxFuncionarios.DisplayMember = "empname";
        this.comboBoxFuncionarios.ValueMember = "empid";
    }

    private void buttonDelete_Click(object sender, EventArgs e)
    {
        if (MessageBox.Show("Deseja realmente remover este funcionário?", "", MessageBoxButtons.YesNo) == DialogResult.Yes)
        {
            using ApplicationDbContext context = new();
            int idEmployee = (this.comboBoxFuncionarios.SelectedItem as Employee)!.empid;
            if (!context.Employees.Any(x => x.empid == idEmployee))
            {
                var employee = context.Employees.Find(idEmployee);
                context.Employees.Remove(employee!);
                context.SaveChanges();
                resetTableAndComboBox();

                MessageBox.Show("Funcionário removido com sucesso!");
            }
            else MessageBox.Show("Não é possível apagar gerentes de departamentos");
        }
    }

    private void button3_Click(object sender, EventArgs e)
    {
        try
        {
            this.dataGridViewEmployees.Rows.Clear();
            using ApplicationDbContext context = new();
            decimal salary = decimal.Parse(this.textBoxValue.Text);
            var list = context.Employees.ToList();
            foreach (var emp in list.Where(x => x.salary >= salary))
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

                Employee? gerente = list.FirstOrDefault(x => x.empid == gerenteId);
                this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
            }
        }
        catch (Exception)
        {
            MessageBox.Show("Não é permitido letras na caixa de texto");
        }
    }

    private void button4_Click(object sender, EventArgs e)
    {
        try
        {
            this.dataGridViewEmployees.Rows.Clear();
            using ApplicationDbContext context = new();
            decimal salary = decimal.Parse(this.textBoxValue.Text);
            var list = context.Employees.ToList();
            foreach (var emp in list.Where(x => x.salary <= salary))
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

                Employee? gerente = list.FirstOrDefault(x => x.empid == gerenteId);
                this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
            }
        }
        catch (Exception)
        {
            MessageBox.Show("Não é permitido letras na caixa de texto");
        }
    }

    private void button5_Click(object sender, EventArgs e)
    {
        try
        {
            this.dataGridViewEmployees.Rows.Clear();
            using ApplicationDbContext context = new();
            decimal salary = decimal.Parse(this.textBoxValue.Text);
            var list = context.Employees.ToList();
            foreach (var emp in list.Where(x => x.salary != salary))
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

                Employee? gerente = list.FirstOrDefault(x => x.empid == gerenteId);
                this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
            }
        }
        catch (Exception)
        {
            MessageBox.Show("Não é permitido letras na caixa de texto");
        }
    }

    private void button2_Click(object sender, EventArgs e)
    {
        try
        {
            this.dataGridViewEmployees.Rows.Clear();
            using ApplicationDbContext context = new();
            decimal salary = decimal.Parse(this.textBoxValue.Text);
            var list = context.Employees.ToList();
            foreach (var emp in list.Where(x => x.salary == salary))
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

                Employee? gerente = list.FirstOrDefault(x => x.empid == gerenteId);
                this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
            }
        }
        catch (Exception)
        {
            MessageBox.Show("Não é permitido letras na caixa de texto");
        }
    }

    private void button1_Click(object sender, EventArgs e)
    {
        try
        {
            this.dataGridViewEmployees.Rows.Clear();
            using ApplicationDbContext context = new();
            decimal salary = decimal.Parse(this.textBoxValue.Text);
            var list = context.Employees.ToList();
            foreach (var emp in list.Where(x => x.salary < salary))
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

                Employee? gerente = list.FirstOrDefault(x => x.empid == gerenteId);
                this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
            }
        }
        catch (Exception)
        {
            MessageBox.Show("Não é permitido letras na caixa de texto");
        }
    }

    private void button6_Click(object sender, EventArgs e)
    {
        try
        {
            this.dataGridViewEmployees.Rows.Clear();
            using ApplicationDbContext context = new();
            decimal salary = decimal.Parse(this.textBoxValue.Text);
            var list = context.Employees.ToList();
            foreach (var emp in list.Where(x => x.salary > salary))
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

                Employee? gerente = list.FirstOrDefault(x => x.empid == gerenteId);
                this.dataGridViewEmployees.Rows.Add(emp.empid, emp.empname, gerente?.empname, emp.salary);
            }
        }
        catch (Exception)
        {
            MessageBox.Show("Não é permitido letras na caixa de texto");
        }
    }

    private void buttonFirstPage_Click(object sender, EventArgs e)
    {
        _skip = 0;
        _take = 2;
        this.resetTableAndComboBox();
        if (_skip == 0)
        {
            this.buttonPreviousPage.Enabled = false;
            this.buttonFirstPage.Enabled = false;
            this.buttonNextPage.Enabled = true;
            this.buttonLastPage.Enabled = true;
        }
    }

    private void buttonPreviousPage_Click(object sender, EventArgs e)
    {
        _skip--;
        this.resetTableAndComboBox();
        if (_skip == 0)
        {
            this.buttonPreviousPage.Enabled = false;
            this.buttonFirstPage.Enabled = false;
        }
        else
        {
            this.buttonNextPage.Enabled = true;
            this.buttonLastPage.Enabled = true;
        }
    }

    private async void buttonNextPage_Click(object sender, EventArgs e)
    {
        _skip++;
        using ApplicationDbContext context = new();
        this.resetTableAndComboBox();
        if (_skip == Convert.ToInt32(Math.Ceiling(await context.Employees.CountAsync() * 1M / _take)))
        {
            this.buttonNextPage.Enabled = false;
            this.buttonLastPage.Enabled = false;
        }
        else
        {
            this.buttonPreviousPage.Enabled = true;
            this.buttonFirstPage.Enabled = true;
        }
    }

    private async void buttonLastPage_Click(object sender, EventArgs e)
    {
        using ApplicationDbContext context = new();
        _skip = Convert.ToInt32(Math.Ceiling(await context.Employees.CountAsync() * 1M / _take));
        this.resetTableAndComboBox();
        if (_skip == Convert.ToInt32(Math.Ceiling(await context.Employees.CountAsync() * 1M / _take)))
        {
            this.buttonNextPage.Enabled = false;
            this.buttonLastPage.Enabled = false;
            this.buttonPreviousPage.Enabled = true;
            this.buttonFirstPage.Enabled = true;
        }
    }

    private void dataGridViewEmployees_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
    {
        DataGridViewCell cell = (DataGridViewCell)sender;
        var color = cell.Style.BackColor;
        cell.Style.BackColor = Color.Red;
        Task.Delay(500);
        cell.Style.BackColor = color;
    }
}
