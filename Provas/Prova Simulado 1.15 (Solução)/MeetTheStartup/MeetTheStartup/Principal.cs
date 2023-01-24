using MeetTheStartup.ClassLib;
using MeetTheStartup.ClassLib.enums;
using MeetTheStartup.ClassLib.Models.User.Empress;
using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup;

public partial class Principal : Form
{
    private List<UserModel> _usersList;
    private List<EmpressModel> _empressesList;

    private readonly EmpressModel? _empress;
    private readonly UserModel? _user;

    public Principal(List<UserModel> usersList, List<EmpressModel> empressesList, EmpressModel? empress = null, UserModel? user = null)
    {
        InitializeComponent();


        _usersList = usersList;
        _empressesList = empressesList;
        _empress = empress;
        _user = user;
    }

    private void logoutToolStripMenuItem_Click(object sender, EventArgs e) => FormMethods.OpenForm(this, new Login());

    private void myProfileToolStripMenuItem_Click(object sender, EventArgs e)
    {
        if (_user != null)
        {
            FormMethods.ShowForm(new CadastroUsuario(_usersList, _empressesList, _user.Images, _user)); ;
        }
        else
        {
            FormMethods.ShowForm(new PerfilEmpresa(_empress!));
        }  
    }

    private void findUserToolStripMenuItem_Click(object sender, EventArgs e) 
        => FormMethods.ShowForm(new Pesquisar(_empressesList, _usersList, EUserType.USER));

    private void findEmpressToolStripMenuItem_Click(object sender, EventArgs e) 
        => FormMethods.ShowForm(new Pesquisar(_empressesList, _usersList, EUserType.EMPRESS));
}
