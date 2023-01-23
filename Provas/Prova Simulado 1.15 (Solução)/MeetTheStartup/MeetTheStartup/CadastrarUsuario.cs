using MeetTheStatup.ClassLibrary.Models.User;

namespace MeetTheStartup;

public partial class CadastrarUsuario : Form
{
    private readonly UserModel? _user;

    public CadastrarUsuario(UserModel? user = null)
    {
        InitializeComponent();

        _user = user;
    }
}