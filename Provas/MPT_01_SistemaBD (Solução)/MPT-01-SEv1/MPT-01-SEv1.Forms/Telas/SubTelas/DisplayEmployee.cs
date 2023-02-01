using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models;
using MPT_01_SEv1.Forms.Telas.Dialogos;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class DisplayEmployee : Form
{
    private readonly AppDbContext _context;
    private readonly Employee _user;

    private int _skip = 0;
    private int _take = 2;
    private int _min = 0;
    private int _max = 0;

    public DisplayEmployee(Employee user)
    {
        InitializeComponent();

        _context = new();
        _user = _context.Employees.Find(user.empid)!;
    }

    private void TableReset()
    {
        this.dataGridViewEmployees.Rows.Clear();
        var list = _context.Employees.AsNoTracking();
        if (this.checkBoxGerent.Checked) //Fazer
            list = list.Where(x => list.Any(c => x.empid == c.mgrid));
        list = list.OrderBy(x => x.empname);
        foreach (var row in list.Skip(_skip * _take).Take(_take).ToList())
        {
            Employee? gerente = _context.Employees.Find(row.mgrid);
            this.dataGridViewEmployees.Rows.Add(
                row.empid, row.empname, gerente != null ? gerente.empname : "Não gerenciado", row.salary);
        }
    }

    private void ComboBoxReset()
    {
        this.comboBoxEmployees.DataSource = _context.Employees.ToList();
        this.comboBoxEmployees.DisplayMember = "empname";
        this.comboBoxEmployees.ValueMember = "empid";
    }

    private void CeckBtn()
    {
        decimal count = _context.Employees.Distinct().Count();
        int calc = (int)Math.Ceiling(count*1M/_take);

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
        if (_context.Employees.Any(x => x.mgrid == _user.empid))
        {
            this.buttonAlter.Visible = false;
            this.buttonDelete.Visible = false;
        }
    }

    private void OpenDialogAdd()
    {
        using DialogEmployee form = new();

        form.comboBoxEmployees.DataSource = _context.Employees.ToList();
        form.comboBoxEmployees.DisplayMember = "empname";
        form.comboBoxEmployees.ValueMember = "empid";

        if (form.ShowDialog() == DialogResult.OK)
        {
            int calc = DateTime.Now.Year - form.dateTimePicker.Value.Year;
            decimal salary = decimal.Parse(form.textBoxSalary.Text);
            if (calc > 18)
            {
                if (salary >= 0)
                {
                    Employee employee = new()
                    {
                        empid = _context.Employees.OrderBy(x => x.empid).Last().empid+1,
                        empname = form.textBoxName.Text,
                        deptname = _user.deptname,
                        salary = salary,
                        depid = _user.depid,
                        bornDate = form.dateTimePicker.Value,
                        mgrid = (form.comboBoxEmployees.SelectedItem as Employee)?.empid,
                    };
                    _context.Employees.Add(employee);
                    _context.SaveChanges();
                }
                else MessageBox.Show("Não é permitido salários menores ou iguais a 0.");
                MessageBox.Show("Funcionário criado com sucesso!");
            }
            else MessageBox.Show("É apenas permitido maiores de 18 anos.");
            this.ComboBoxReset();
            this.TableReset();
        }
    }
    
    private void OpenDialogAlter()
    {
        using DialogEmployee form = new();

        form.comboBoxEmployees.DataSource = _context.Employees.ToList();
        form.comboBoxEmployees.DisplayMember = "empname";
        form.comboBoxEmployees.ValueMember = "empid";

        Employee employee = (this.comboBoxEmployees.SelectedItem as Employee)!;

        form.textBoxName.Text = employee.empname;
        form.textBoxSalary.Text = employee.salary.ToString();
        form.dateTimePicker.Value = employee.bornDate;
        form.comboBoxEmployees.SelectedItem = employee.mgrid;

        if (form.ShowDialog() == DialogResult.OK)
        {
            int calc = DateTime.Now.Year - form.dateTimePicker.Value.Year;
            decimal salary = decimal.Parse(form.textBoxSalary.Text);
            if (calc > 18)
            {
                if (salary >= 0)
                {
                    Employee employeed = new()
                    {
                        empid = _context.Employees.OrderBy(x => x.empid).Last().empid + 1,
                        empname = form.textBoxName.Text,
                        deptname = _user.deptname,
                        salary = salary,
                        depid = _user.depid,
                        enterDate = employee.enterDate,
                        bornDate = form.dateTimePicker.Value,
                        mgrid = (form.comboBoxEmployees.SelectedItem as Employee)?.empid,
                    };
                    _context.Employees.Update(employeed);
                    _context.SaveChanges();
                }
                else MessageBox.Show("Não é permitido salários menores ou iguais a 0.");
                MessageBox.Show("Funcionário criado com sucesso!");
            }
            else MessageBox.Show("É apenas permitido maiores de 18 anos.");
            this.ComboBoxReset();
            this.TableReset();
        }
    }

    private void DisplayEmployee_Load(object sender, EventArgs e)
    {
        this.ComboBoxReset();
        this.TableReset();
        this.CeckBtn();
        this.Access();
    }

    public void DisplayEmployee_KeyDown(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4)
            this.Close();
    }

    private void buttonNext_Click(object sender, EventArgs e)
    {
        _skip++;
        this.TableReset();
        this.CeckBtn();
    }

    private void buttonLast_Click(object sender, EventArgs e)
    {
        _skip = _max;
        this.TableReset();
        this.CeckBtn();
    }

    private void buttonPrivious_Click(object sender, EventArgs e)
    {
        _skip--;
        this.TableReset();
        this.CeckBtn();
    }

    private void buttonFirst_Click(object sender, EventArgs e)
    {
        _skip = _min;
        this.TableReset();
        this.CeckBtn();
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
}
