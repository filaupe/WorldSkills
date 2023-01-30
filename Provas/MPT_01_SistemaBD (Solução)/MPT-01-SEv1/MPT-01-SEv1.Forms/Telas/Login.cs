using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models.Employees;
using System.Globalization;
using System.Text;

namespace MPT_01_SEv1.Forms.Telas;

public partial class Login : Form
{
    private int _counter;
    private Employee? _user = null;
    private readonly Thread _t;
    private readonly ApplicationDbContext _context;

    public Login()
    {
        InitializeComponent();

        _counter = 0;
        _context = new();

        _t = new Thread(() => Application.Run(new Principal(_user!)));
        _t.SetApartmentState(ApartmentState.STA);

        this.addDefaultUsers();
    }

    private async void addDefaultUsers()
    {
        Employee janet = new()
        {
            mgrid = null,
            empname = "Janet",
            salary = 40.000M,
            depid = 1,
            deptname = "RH",
            deptmgrid = 1,
            bornDate = new DateTime(2000, 12, 12),
            admissionDate = DateTime.Now,
            loginCount = 0
        };
        Employee laura = new()
        {
            mgrid = 1,
            empname = "Laura",
            salary = 40.000M,
            depid = 1,
            deptname = "RH",
            deptmgrid = 1,
            bornDate = new DateTime(1986, 8, 12),
            admissionDate = DateTime.Now,
            loginCount = 0
        };
        Employee andrew = new()
        {
            mgrid = null,
            empname = "Andrew",
            salary = 40.000M,
            depid = 2,
            deptname = "TI",
            deptmgrid = null,
            bornDate = new DateTime(2001, 1, 12),
            admissionDate = DateTime.Now,
            loginCount = 0
        };
        
        if (!await _context.Employees.AnyAsync(c => c.empname == "Andrew"))
        {
            _context.AddRange(janet, laura, andrew);
            _context.SaveChanges();
        }
    }

    private async void login()
    {
        try
        {
            var name = Reform(this.textBoxUserName.Text);
            var employees = await _context.Employees.ToListAsync();
            _user = employees.FirstOrDefault(x => Reform(x.empname) == name);

            if (_user != null)
            {
                _t.Start();
                this.Close();
            }

            _counter++;
            if (_counter == 3) this.Close();
            this.textBoxUserName.Text = String.Empty;
            MessageBox.Show($"Login incorreto, você ainda tem {3 - _counter} tentativas");
        }
        catch { }
    }

    private string Reform(string str)
    {
        StringBuilder stringBuilder= new();
        var arrayText = str.Normalize(NormalizationForm.FormD).ToCharArray();
        foreach (char letter in arrayText)
            if (CharUnicodeInfo.GetUnicodeCategory(letter) != UnicodeCategory.NonSpacingMark)
                stringBuilder.Append(letter);
        return stringBuilder.ToString().ToLower().Trim().Replace(" ", String.Empty);
    }

    private void buttonExt_Click(object sender, EventArgs e) => this.Close();

    private void buttonLogin_Click(object sender, EventArgs e) => login();

    private void textBoxUserName_KeyPress(object sender, KeyPressEventArgs e)
    {
        if (e.KeyChar == (char)Keys.Enter)
            this.login();
    }
}
