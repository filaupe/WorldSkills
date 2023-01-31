using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models.Employees;
using MPT_01_SEv1.Forms.Telas.SubTelas;
using System.Windows.Forms;

namespace MPT_01_SEv1.Forms.Telas;

public partial class Principal : Form
{
    private bool _onClose = false;
    private DateTime _dateTimeNow;
    private Thread _t1;
    private readonly Employee _user;
    private readonly ApplicationDbContext _context;

    public Principal(Employee user)
    {
        InitializeComponent();

        _context = new();
        _t1 = new Thread(() => this.DateTimeNow());
        var employees = _context.Employees.ToList();
        _user = employees.FirstOrDefault(user);
    }

    private void DateTimeNow()
    {
        while (true)
        {
            _dateTimeNow = DateTime.Now;
            Thread.Sleep(1000);
            if (_onClose) break;
        }
    }

    private void buttonExt_Click(object sender, EventArgs e)
    {
        _onClose = true;
        this.Close();
    }

    private void Principal_Load(object sender, EventArgs e)
    {
        _t1.Start();
        _user.loginCount++;
        this.labelCountLogin.Text = _user.loginCount.ToString();
        _context.SaveChanges();

        _dateTimeNow = DateTime.Now;
        this.labelDateTime.Text = _dateTimeNow.ToString("dd/MM/yyyy");
        if (_dateTimeNow.Month == _user.bornDate.Month)
        {
            this.labelDateTime.ForeColor = Color.White;
            this.labelCountLogin.ForeColor = Color.White;
            this.labelCounterLogin.ForeColor = Color.White;
            this.panelStatusBar.BackColor = Color.Green;
        }
        else
        {
            this.labelDateTime.ForeColor = Color.Black;
            this.labelCountLogin.ForeColor = Color.Black;
            this.labelCounterLogin.ForeColor = Color.Black;
            this.panelStatusBar.BackColor = Color.Yellow;
        }

        this.tableLayoutPanelWindows.AutoScroll = true;
    }

    private void buttonDepartment_Click(object sender, EventArgs e)
    {
        Departamento form = new(_user)
        {
            TopLevel = false,
            Visible = true,
            Dock = DockStyle.Fill
        };
        this.tableLayoutPanelWindows.Controls.Add(form);
        form.Show();
        MessageBox.Show("Uma aba de departamento foi aberta");
    }

    private async void buttonEmployee_Click(object sender, EventArgs e)
    {
        var list = await _context.Employees.ToListAsync();
        Funcionario form = new(_user)
        {
            TopLevel = false,
            Visible = true,
            Dock = DockStyle.Fill
        };
        this.tableLayoutPanelWindows.Controls.Add(form);
            
        form.Show();
        MessageBox.Show("Uma aba de funcionário foi aberta");
    }

    private void buttonCascade_Click(object sender, EventArgs e)
    {
        var tlpw = this.tableLayoutPanelWindows;
        var count = tlpw.Controls.Count;
        var list = tlpw.Controls;

        this.tableLayoutPanelWindows.Size = new Size(776, 337);
        tlpw.ColumnStyles.Clear();
        tlpw.RowStyles.Clear();
        tlpw.ColumnCount = 0;
        tlpw.RowCount = 0;

        for (int i = 0; i == count; i++)
        {
            if (tlpw.Controls.Count == 1) break;
            this.tableLayoutPanelWindows.RowStyles.Add(new RowStyle(SizeType.Absolute, 337));
            tlpw.Controls.Add(list[i]);
        }
    }

    private void buttonHorizontal_Click(object sender, EventArgs e)
    {
        var tlpw = this.tableLayoutPanelWindows;
        var count = tlpw.Controls.Count;
        var list = tlpw.Controls;

        this.tableLayoutPanelWindows.Size = new Size(776, 337);
        tlpw.ColumnStyles.Clear();
        tlpw.RowStyles.Clear();
        tlpw.ColumnCount = 0;
        tlpw.RowCount = 0;

        for (int i = 0; i == count; i++)
        {
            if (tlpw.Controls.Count == 1) break;
            this.tableLayoutPanelWindows.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 776));
            tlpw.Controls.Add(list[i]);
        }
    }
}
