using MeetTheStartup.ClassLib;
using MeetTheStartup.ClassLib.Models.User.Empress;
using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup;

public partial class Login : Form
{
    private List<UserModel> _users;
    private List<EmpressModel> _empresses;

    public Login(List<UserModel>? users = null, List<EmpressModel>? empresses = null)
    {
        InitializeComponent();

        _users = users ?? new();
        _empresses = empresses ?? new();
    }

    private void empressCheck_CheckStateChanged(object sender, EventArgs e)
    {
        if (empressCheck.Checked)
        {
            this.loginLbl.Text = "Nome";
            empressNameTextBox.Visible = true;
            empressNameLbl.Visible = true;
        }
        else
        {
            this.loginLbl.Text = "Login";
            empressNameTextBox.Visible = false;
            empressNameLbl.Visible = false;
        }
    }

    private void cancelBtn_Click(object sender, EventArgs e) => FormMethods.CloseForm(this);

    private void loginBtn_Click(object sender, EventArgs e)
    {
        if (!empressCheck.Checked)
        {
            var user = _users.First(x => x.Login == loginTextBox.Text && x.Password == passwordTextBox.Text);
            if (DataMethods.Login(_users, this.loginTextBox.Text, passwordTextBox.Text))
                FormMethods.OpenForm(this, new Principal(_users, _empresses, null, user));
            else MessageBox.Show("Login Incorreto, tente novamente");
        }
        else
        {
            var empress = _empresses.First(x => x.Name == loginTextBox.Text && x.Password == passwordTextBox.Text && x.FantasyName == empressNameTextBox.Text);
            if (DataMethods.Login(_empresses, this.loginTextBox.Text, this.passwordTextBox.Text, this.empressNameTextBox.Text))
                FormMethods.OpenForm(this, new Principal(_users, _empresses, empress, null));
            else MessageBox.Show("Login Incorreto, tente novamente");
        }
    }

    private void empressRegister_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e) => FormMethods.OpenForm(this, new CadastroEmpresa());

    private void userRegister_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e) => FormMethods.OpenForm(this, new CadastroUsuario(_users, _empresses, null));
}