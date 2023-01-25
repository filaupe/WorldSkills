using MeetTheStartup.FormClassLib;
using System.Xml.Linq;

namespace MeetTheStartup.Forms;

public partial class Login : Form
{
    private UserModel? _user = null;
    private EmpressModel? _empress = null;

    private readonly List<UserModel> _users = null!;
    private readonly List<EmpressModel> _empresses = null!;

    public Login(List<UserModel>? users = null, List<EmpressModel>? empresses = null)
    {
        InitializeComponent();

        fantasyNameLbl.Visible = false;
        fantasyNameTxtBox.Visible = false;

        _users = users ?? new();
        _empresses = empresses ?? new();
    }

    private bool login(string login, string password) 
        => _users.Any(x => x.Login == login && x.Password == password);

    private bool login(string name, string password, string fantasyName)
        => _empresses.Any(x => x.Name == name && x.Password == password && x.FantasyName == fantasyName);

    private void cancelBtn_Click(object sender, EventArgs e) => this.Close();

    private void loginBtn_Click(object sender, EventArgs e)
    {
        if (!loginEmpressCheckBox.Checked)
        {
            if (this.login(this.loginTxtBox.Text, this.passwordTxtBox.Text))
            {
                _user = _users.FirstOrDefault(x => x.Login == this.loginTxtBox.Text && x.Password == this.passwordTxtBox.Text);
                Methods.OpenForm(this, new Principal(_users, _empresses, _user, _empress));
            }
            else MessageBox.Show("Login Incorreto, tente novamente!");
        }
        else
        {
            if (this.login(this.loginTxtBox.Text, this.passwordTxtBox.Text, this.fantasyNameTxtBox.Text))
            {
                _empress = _empresses.FirstOrDefault(x => x.Name == this.loginTxtBox.Text && x.Password == this.passwordTxtBox.Text && x.FantasyName == this.fantasyNameTxtBox.Text);
                Methods.OpenForm(this, new Principal(_users, _empresses, _user, _empress));
            }
            else MessageBox.Show("Login Incorreto, tente novamente!");
        }
    }

    private void loginEmpressCheckBox_CheckStateChanged(object sender, EventArgs e)
    {
        if (loginEmpressCheckBox.Checked)
        {
            loginLbl.Text = "Name";
            fantasyNameLbl.Visible = true;
            fantasyNameTxtBox.Visible = true;
        }
        else
        {
            loginLbl.Text = "Login";
            fantasyNameLbl.Visible = false;
            fantasyNameTxtBox.Visible = false;
        }
    }

    private void registerEmpressLinkLbl_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
    {
        Methods.OpenForm(this, new RegisterEmpress(_users, _empresses));
    }

    private void registerUserLinkLbl_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
    {
        Methods.OpenForm(this, new RegisterUser(_users, _empresses));
    }
}
