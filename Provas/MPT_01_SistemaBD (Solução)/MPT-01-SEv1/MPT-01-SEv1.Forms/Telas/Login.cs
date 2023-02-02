using MPT_01_SEv1.Forms.Models;
using System.Globalization;
using System.Text;

namespace MPT_01_SEv1.Forms.Telas;

public partial class Login : Form
{
    private readonly AppDbContext _context;
    private readonly Thread _openPrincipal;
    private Employee? _user = null;
    private int _counter = 0;
    public Login()
    {
        InitializeComponent();

        _context = new();
        _openPrincipal = new Thread(() => Application.Run(new Principal(_user!)));
        _openPrincipal.SetApartmentState(ApartmentState.STA);
    }
    private string RefactoryString(string str)
    {
        StringBuilder strBuilder = new();
        var letters = str.Normalize(NormalizationForm.FormD).ToCharArray();
        foreach (var letter in letters)
            if (CharUnicodeInfo.GetUnicodeCategory(letter) != UnicodeCategory.NonSpacingMark)
                strBuilder.Append(letter);
        return strBuilder.ToString().ToLower().Replace(" ", String.Empty);
    }
    private void buttonLogin_Click(object sender, EventArgs e)
    {
        _user = _context.Employees.ToList().FirstOrDefault(x => this.RefactoryString(x.empname) == this.RefactoryString(this.textBoxName.Text));

        if (_user != null)
        {
            _openPrincipal.Start();
            this.Close();
        }
        else
        {
            _counter++;
            if (_counter == 3)
                Application.Exit();
            MessageBox.Show($"Login incorreto, você tem mais {3 - _counter} tentativas.");
        }
    }

    private void textBoxName_Enter(object sender, EventArgs e)
    {
        this.textBoxName.BackColor = Color.LightCoral;
    }

    private void textBoxName_Leave(object sender, EventArgs e)
    {
        this.textBoxName.BackColor = Color.White;
    }

    private void Login_Load(object sender, EventArgs e)
    {

    }
}
