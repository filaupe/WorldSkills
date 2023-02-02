using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models;
using MPT_01_SEv1.Forms.Telas.Dialogos;
using System.IO;
using System.Text;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class DisplayEmployee : Form
{
    private readonly AppDbContext _context;
    private readonly Employee _user;

    private int _count = 0;
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

    private void TableReset(int filter = 0)
    {
        this.dataGridViewEmployees.Rows.Clear();
        var list = _context.Employees.AsNoTracking();
        if (this.checkBoxGerent.Checked)
            list = list.Where(c => _context.Employees.Any(x => x.mgrid == c.empid));
        
        switch (filter)
        {
            case 1:
                list = list.OrderBy(x => x.salary != decimal.Parse(this.textBoxSalary.Text));
                break;
            case 2:
                list = list.OrderBy(x => x.salary > decimal.Parse(this.textBoxSalary.Text));
                break;
            case 3:
                list = list.OrderBy(x => x.salary < decimal.Parse(this.textBoxSalary.Text));
                break;
            case 4:
                list = list.OrderBy(x => x.salary >= decimal.Parse(this.textBoxSalary.Text));
                break;
            case 5:
                list = list.OrderBy(x => x.salary <= decimal.Parse(this.textBoxSalary.Text));
                break;
            case 6:
                list = list.OrderBy(x => x.salary == decimal.Parse(this.textBoxSalary.Text));
                break;
            default:
                list = list.OrderBy(x => x.empname);
                break;
        }
        _count = list.Count();
        int id = 0;
        foreach (var row in list.Skip(_skip * _take).Take(_take).ToList())
        {
            id++;
            Employee? gerente = _context.Employees.Find(row.mgrid);
            this.dataGridViewEmployees.Rows.Add(
                id, row.empname, gerente != null ? gerente.empname : "Não gerenciado", row.salary);
        }
        this.CheckBtn();
    }
    private void ComboBoxReset()
    {
        this.comboBoxEmployees.DataSource = _context.Employees.ToList();
        this.comboBoxEmployees.DisplayMember = "empname";
        this.comboBoxEmployees.ValueMember = "empid";
    }
    private void CheckBtn()
    {
        int calc = (int)Math.Ceiling(_count*1M/_take)-1;

        _min = 0;
        _max = calc;

        if (_skip <= 0)
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
        using DialogEmployee form = new();

        form.Text = "Criando funcionário...";
        form.buttonDialog.Text = "Adicinar";

        form.comboBoxEmployees.DataSource = _context.Employees.ToList();
        form.comboBoxEmployees.DisplayMember = "empname";
        form.comboBoxEmployees.ValueMember = "empid";

        if (form.ShowDialog() == DialogResult.OK)
        {
            int calc = DateTime.Now.Year - form.dateTimePicker.Value.Year;
            decimal salary = decimal.Parse(form.textBoxSalary.Text);
            if (calc > 18)
            {
                if (salary > 0)
                {
                    Employee employee = new()
                    {
                        empid = _context.Employees.OrderBy(x => x.empid).Last().empid + 1,
                        empname = form.textBoxName.Text,
                        deptname = _user.deptname,
                        salary = salary,
                        depid = _user.depid,
                        deptmgrid = _user.deptmgrid,
                        bornDate = form.dateTimePicker.Value,
                        mgrid = (form.comboBoxEmployees.SelectedItem as Employee)?.empid,
                    };
                    _context.Employees.Add(employee);
                    _context.SaveChanges();
                    MessageBox.Show("Funcionário criado com sucesso!");
                }
                else
                {
                    MessageBox.Show("Não é permitido salários menores ou iguais a 0.");
                    this.OpenDialogAdd();
                }
            }
            else
            {
                MessageBox.Show("É apenas permitido maiores de 18 anos.");
                this.OpenDialogAdd();
            }
            this.ComboBoxReset();
            this.TableReset();
        }
    }
    private void OpenDialogAlter()
    {
        using DialogEmployee form = new();

        form.Text = "Alterando funcionário...";
        form.buttonDialog.Text = "Alterar";

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
                if (salary > 0)
                {
                    employee.empname = form.textBoxName.Text;
                    employee.salary = decimal.Parse(form.textBoxSalary.Text);
                    employee.mgrid = (form.comboBoxEmployees.SelectedItem as Employee)?.empid;
                    employee.bornDate = form.dateTimePicker.Value;
                    _context.Employees.Update(employee);
                    _context.SaveChanges();
                    MessageBox.Show("Funcionário alterado com sucesso!");
                }
                else
                {
                    MessageBox.Show("Não é permitido salários menores ou iguais a 0.");
                    this.OpenDialogAdd();
                }
            }
            else
            {
                MessageBox.Show("É apenas permitido maiores de 18 anos.");
                this.OpenDialogAdd();
            }
            this.ComboBoxReset();
            this.TableReset();
        }
    }
    private void OpenDialogDelete()
    {
        Employee employee = (this.comboBoxEmployees.SelectedItem as Employee)!;
        if (MessageBox.Show("Realmente deseja apagar este funcionario?","Deletar funcinário", MessageBoxButtons.YesNo) == DialogResult.Yes)
        {
            if (!_context.Employees.Any(x => employee.empid == x.deptmgrid))
            {
                _context.Employees.Remove(employee);
                _context.SaveChanges();
                MessageBox.Show("Funcionário deletado com sucesso!");
            }
            else MessageBox.Show("Não é possível deletar funcionário gerente de departamento.");
        }
    }

    private void DisplayEmployee_Load(object sender, EventArgs e)
    {
        this.ComboBoxReset();
        this.TableReset();
        this.CheckBtn();
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
    private void button1_Click(object sender, EventArgs e)
    {
        TableReset(1);
    }
    private void button2_Click(object sender, EventArgs e)
    {
        TableReset(2);
    }
    private void button3_Click(object sender, EventArgs e)
    {
        TableReset(3);
    }
    private void button4_Click(object sender, EventArgs e)
    {
        TableReset(4);
    }
    private void button5_Click(object sender, EventArgs e)
    {
        TableReset(5);
    }
    private void button6_Click(object sender, EventArgs e)
    {
        TableReset(6);
    }

    private void buttonPDFSave_Click(object sender, EventArgs e)
    {
        this.saveFileDialog1 = new();
        if (this.saveFileDialog1.ShowDialog() == DialogResult.OK)
        {
            FileStream fs = File.Create($"{ this.saveFileDialog1.FileName}.pdf");

            byte[] info = new UTF8Encoding(true).GetBytes("Brasil Resort Ltda\r\nCNPJ: 09.062.773.0001-99\r\nEmail: brasilresort@brasilresort.com.br\r\nTelefone: (79) 3522-1005\r\n");
            fs.Write(info, 0, info.Length);

            fs.Close();
        }
    }
}
