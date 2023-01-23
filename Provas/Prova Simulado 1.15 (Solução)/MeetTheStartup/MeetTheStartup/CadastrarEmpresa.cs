using MeetTheStatup.ClassLibrary.Models.User;

namespace MeetTheStartup;

public partial class CadastrarEmpresa : Form
{
    private readonly UserModel? _user;

    public CadastrarEmpresa(UserModel? user = null)
    {
        InitializeComponent();

        _user = user;
    }
}
