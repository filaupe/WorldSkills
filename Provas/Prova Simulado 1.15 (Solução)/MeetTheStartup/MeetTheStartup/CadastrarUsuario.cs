using MeetTheStatup.ClassLibrary.Models.User;

namespace MeetTheStartup;

public partial class CadastrarUsuario : Form
{
    private readonly UserModelPrincipal? _user;

    public CadastrarUsuario(UserModelPrincipal? user = null)
    {
        InitializeComponent();

        _user = user;
    }
}