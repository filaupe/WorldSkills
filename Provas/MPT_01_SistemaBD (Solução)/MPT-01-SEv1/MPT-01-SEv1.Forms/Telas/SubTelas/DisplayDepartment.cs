using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models;
using MPT_01_SEv1.Forms.Telas.Dialogos;
using System.Text;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class DisplayDepartment : Form
{
    private readonly AppDbContext _context;
    private readonly Employee _user;

    private int _count = 0;
    private int _skip = 0;
    private int _take = 2;
    private int _min = 0;
    private int _max = 0;

    public DisplayDepartment(Employee user)
    {
        InitializeComponent();

        _context = new();
        _user = _context.Employees.Find(user.empid)!;
    }

    private void TableReset()
    {
        this.dataGridViewDepartments.Rows.Clear();
        var list = _context.Departments.AsNoTracking();

        _count = list.Count();
        int id = 0;
        foreach (var row in list.Skip(_skip * _take).Take(_take).ToList())
        {
            id++;
            Employee? gerente = _context.Employees.Find(row.deptmgrid);
            this.dataGridViewDepartments.Rows.Add(
                id, row.deptname, gerente != null ? gerente.empname : "Não gerenciado");
        }
        this.CheckBtn();
    }
    private void ComboBoxReset()
    {
        this.comboBoxDepartments.DataSource = _context.Departments.ToList();
        this.comboBoxDepartments.DisplayMember = "deptname";
        this.comboBoxDepartments.ValueMember = "depid";
    }
    private void CheckBtn()
    {
        int calc = (int)Math.Ceiling(_count * 1M / _take) - 1;

        _min = 0;
        _max = calc;

        if (_skip == 0)
        {
            this.buttonFirst.Enabled = false;
            this.buttonPrevious.Enabled = false;
        }
        else
        {
            this.buttonFirst.Enabled = true;
            this.buttonPrevious.Enabled = true;
        }
        if (_skip >= calc)
        {
            this.buttonLast.Enabled = false;
            this.buttonNext.Enabled = false;
        }
        else
        {
            this.buttonLast.Enabled = true;
            this.buttonNext.Enabled = true;
        }
    }
    private void Access()
    {
        if (!_context.Employees.Any(x => x.mgrid == _user.empid))
        {
            this.buttonAlter.Visible = false;
            this.buttonDelete.Visible = false;
        }
    }

    private void OpenDialogAdd()
    {
        using DialogDepartment form = new();

        form.Text = "Criando funcionário...";
        form.buttonDialog.Text = "Adicinar";

        var list = _context.Employees.ToList();

        form.comboBoxGerents.DataSource = list.Where(c => _context.Employees.Any(x => c.empid == x.mgrid)).ToList();
        form.comboBoxGerents.DisplayMember = "empname";
        form.comboBoxGerents.ValueMember = "empid";

        if (form.ShowDialog() == DialogResult.OK)
        {
            int? empid = (form.comboBoxGerents.SelectedItem as Employee)?.empid;
            if (empid.HasValue)
            {
                if (!_context.Departments.Any(x => x.deptmgrid == empid))
                {
                    Department department = new()
                    {
                        deptname = form.textBoxName.Text,
                        deptmgrid = empid.Value,
                    };
                    _context.Departments.Add(department);
                    _context.SaveChanges();
                    MessageBox.Show("Departamento criado com sucesso!");
                    this.ComboBoxReset();
                    this.TableReset();
                }
                else
                {
                    MessageBox.Show("Um gerente não pode estar associado a mais de um departamento.");
                    this.OpenDialogAlter();
                }
            }
            else
            {
                MessageBox.Show("Um departamento precisa de um gerente");
                this.OpenDialogAdd();
            }
        }
    }
    private void OpenDialogAlter()
    {
        using DialogDepartment form = new();

        form.Text = "Alterando departamento...";
        form.buttonDialog.Text = "Alterar";

        var list = _context.Employees.ToList();

        form.comboBoxGerents.DataSource = list.Where(c => _context.Employees.Any(x => c.empid == x.mgrid)).ToList();
        form.comboBoxGerents.DisplayMember = "empname";
        form.comboBoxGerents.ValueMember = "empid";

        Department department = (this.comboBoxDepartments.SelectedItem as Department)!;

        if (form.ShowDialog() == DialogResult.OK)
        {
            int? empid = (form.comboBoxGerents.SelectedItem as Employee)?.empid;
            if (empid.HasValue)
            {
                if (!_context.Departments.Any(x => x.deptmgrid == empid) || empid == department.deptmgrid)
                {
                    department.deptname = form.textBoxName.Text;
                    department.deptmgrid = empid.Value;
                    _context.Departments.Update(department);
                    _context.SaveChanges();
                    MessageBox.Show("Departamento alterado com sucesso!");
                    this.ComboBoxReset();
                    this.TableReset();
                }
                else 
                {
                    MessageBox.Show("Um gerente não pode estar associado a mais de um departamento.");
                    this.OpenDialogAlter();
                }
            }
            else
            {
                MessageBox.Show("Um departamento precisa de um gerente");
                this.OpenDialogAlter();
            }

        }
    }
    private void OpenDialogDelete()
    {
        Department department = (this.comboBoxDepartments.SelectedItem as Department)!;
        if (MessageBox.Show("Realmente deseja apagar este departamento?", "Deletar departamento", MessageBoxButtons.YesNo) == DialogResult.Yes)
        {
            _context.Departments.Remove(department);
            _context.SaveChanges();
            MessageBox.Show("Funcionário deletado com sucesso!");
        }
           
    }

    private void DisplayDepartment_Load(object sender, EventArgs e)
    {
        this.ComboBoxReset();
        this.TableReset();
        this.CheckBtn();
        this.Access();
    }
    public void DisplayDepartment_KeyDown(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4)
            this.Close();
    }

    private void buttonNext_Click(object sender, EventArgs e)
    {
        _skip++;
        this.TableReset();
        this.CheckBtn();
    }
    private void buttonLast_Click(object sender, EventArgs e)
    {
        _skip = _max;
        this.TableReset();
        this.CheckBtn();
    }
    private void buttonPrivious_Click(object sender, EventArgs e)
    {
        _skip--;
        this.TableReset();
        this.CheckBtn();
    }
    private void buttonFirst_Click(object sender, EventArgs e)
    {
        _skip = _min;
        this.TableReset();
        this.CheckBtn();
    }
    private void checkBoxGerent_CheckedChanged(object sender, EventArgs e)
    {
        this.TableReset();
    }
    private void buttonAdd_Click(object sender, EventArgs e)
    {
        this.OpenDialogAdd();
    }
    private void buttonAlter_Click(object sender, EventArgs e)
    {
        this.OpenDialogAlter();
    }
    private void buttonDelete_Click(object sender, EventArgs e)
    {
        this.OpenDialogDelete();
    }
    private void buttonGerentList_Click(object sender, EventArgs e)
    {
        DialogGerentDepartmentList form = new();
        form.dataGridViewGerents.Rows.Clear();
        foreach (var row in _context.Departments.ToList())
        {
            Employee gerente = _context.Employees.Find(row.deptmgrid)!;
            int idade = (DateTime.Now.Year - gerente.bornDate.Year);
            int calc = (DateTime.Now.Year - gerente.enterDate.Year);
            form.dataGridViewGerents.Rows.Add(
                gerente.empname, gerente.salary, $"{idade} anos", calc >= 5?$"R${((double)gerente.salary*0.2)}":"Sem bônus");
        }
        form.Show();
    }

    private void button1_Click(object sender, EventArgs e)
    {
        SaveFileDialog file = new();
        if (file.ShowDialog() == DialogResult.OK)
        {
            FileStream fs = File.Create($"{file.FileName}.pdf");

            byte[] info = new UTF8Encoding(true).GetBytes("Brasil Resort Ltda\r\nCNPJ: 09.062.773.0001-99\r\nEmail: brasilresort@brasilresort.com.br\r\nTelefone: (79) 3522-1005\r\n");
            fs.Write(info, 0, info.Length);

            fs.Close();
        }
    }
}
