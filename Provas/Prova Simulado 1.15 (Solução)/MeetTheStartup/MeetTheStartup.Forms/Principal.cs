using MeetTheStartup.FormClassLib;

namespace MeetTheStartup.Forms;

public partial class Principal : Form
{
    private readonly UserModel? _user;
    private readonly EmpressModel? _empress;

    private readonly List<UserModel> _users = null!;
    private readonly List<EmpressModel> _empresses = null!;

    public Principal(List<UserModel> users, List<EmpressModel> empresses, UserModel? user, EmpressModel? empress)
    {
        InitializeComponent();

        _users = users;
        _empresses = empresses;
        _user = user;
        _empress = empress;
    }

    private void pesquisarEmpresaToolStripMenuItem_Click(object sender, EventArgs e)
        => Methods.OpenForm(this, new Search(_users, _empresses, EuserType.EMPRESS));

    private void pesquisarUsuárioToolStripMenuItem_Click(object sender, EventArgs e)
        => Methods.OpenForm(this, new Search(_users, _empresses, EuserType.USER));

    private void meuPerfilToolStripMenuItem_Click(object sender, EventArgs e)
    {
        if (_user != null) Methods.OpenForm(this, new RegisterUser(_users, _empresses, _user));
        else Methods.OpenForm(this, new RegisterEmpress(_users, _empresses, _empress));
    }

    private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        => Methods.OpenForm(this, new Login(_users, _empresses));
}
