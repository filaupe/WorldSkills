using MeetTheStatup.ClassLibrary.Models.User;
using MeetTheStatup.ClassLibrary.Models.User.Enums;

namespace MeetTheStartup;

public partial class Principal : Form
{
    private Thread _t1 = null!;
    private readonly List<UserModel> _users;
    private readonly UserModel _user;

    public Principal(List<UserModel> users, UserModel user)
    {
        InitializeComponent();

        _users = users;
        _user = user;
    }

    private void Logout()
    {
        this.Close();

        _t1 = new Thread(() => Application.Run(new Login()));
        _t1.SetApartmentState(ApartmentState.STA);
        _t1.Start();
    }

    private void ShowSearch(EUserType type)
    {
        Pesquisar search = new(_users, type);
        search.Show();
    }

    private void ShowProfile()
    {
        Form profile = _user.Type == EUserType.EMPRESS ? new PerfilEmpresa() : new PerfilUsuario();
        profile.Show();
    }

    private void searchEmpressTool_Click(object sender, EventArgs e) => this.ShowSearch(EUserType.EMPRESS);

    private void searchUserTool_Click(object sender, EventArgs e) => this.ShowSearch(EUserType.USER);

    private void profileTool_Click(object sender, EventArgs e) => this.ShowProfile();

    private void exitTool_Click(object sender, EventArgs e) => this.Logout();
}

