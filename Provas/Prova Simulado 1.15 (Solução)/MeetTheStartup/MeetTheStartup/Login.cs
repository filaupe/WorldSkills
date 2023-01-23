using MeetTheStatup.ClassLibrary.Models.User;
using MeetTheStatup.ClassLibrary.Models.User.Enums;
using MeetTheStatup.ClassLibrary.Models.User.Login;

namespace MeetTheStartup;

public partial class Login : Form
{
    private Thread _t1 = null!;
    private MeetTheStatup.ClassLibrary.Models.User.UserModel _user = null!;
    private readonly List<MeetTheStatup.ClassLibrary.Models.User.UserModel> _users;

    public Login()
    {
        InitializeComponent();

        _users = new();

        this.AddDefaultUsers();
    }

    protected void AddDefaultUsers()
    {
        UserModel empressUser = new("Empresa de Filaupe", "FilaupeCorp", "123", EUserType.EMPRESS);
        UserModel user = new("Usuário Filaupe", "Filaupe", "123", EUserType.USER);
        _users.Add(empressUser);
        _users.Add(user);
    }

    private void ShowForm(Form form) => form.Show();

    private void OpenForm(Form form) 
    {
        this.Close();

        _t1 = new Thread(() => Application.Run(form));
        _t1.SetApartmentState(ApartmentState.STA);
        _t1.Start();
    } 

    private void cancelBtn_Click(object sender, EventArgs e) => this.Close();

    private void loginBtn_Click(object sender, EventArgs e)
    {
        string login = loginTextBox.Text;
        string password = passwordTextBox.Text;

        try
        {
            LoginModel logining = new()
            {
                Login = login,
                Password = password
            };
            if (logining.Verify(_users))
            {
                _user = _users.First(c => c.Login == login && c.Password == password);

                this.OpenForm(new Principal(_users, _user));

                MessageBox.Show("Login bem-sucedido");
            }
            else MessageBox.Show("Login mal-sucedido");
        }
        catch
        {
            MessageBox.Show("Adicione um login válido, tente novamente.");
        }
    }

    private void registerEmpressLinkLabel_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e) => this.ShowForm(new CadastrarEmpresa());

    private void registerUserLinkLabel_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e) => this.ShowForm(new CadastrarUsuario());
}
