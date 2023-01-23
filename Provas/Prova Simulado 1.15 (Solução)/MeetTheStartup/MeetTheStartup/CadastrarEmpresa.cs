using MeetTheStatup.ClassLibrary.Models.User;

namespace MeetTheStartup;

public partial class Empresa : Form
{
    private readonly UserModelPrincipal? _user;

    public Empresa(UserModelPrincipal? user = null)
    {
        InitializeComponent();

        _user = user;
    }
}
