using MeetTheStartup.ClassLib.enums;
using MeetTheStartup.ClassLib.Models.User.Empress;
using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup;

public partial class Pesquisar : Form
{
    private List<UserModel> _usersList;
    private List<EmpressModel> _empressesList;
    private EUserType _type;
    public Pesquisar(List<EmpressModel> empressesList, List<UserModel> usersList, EUserType type)
    {
        InitializeComponent();

        _type = type;
        _usersList = usersList;
        _empressesList = empressesList;
    }

    private void PrintUsers()
    {
        Button btn = new();
        this.usersGridView.Rows.Clear();

        if (_type == EUserType.USER)
            foreach (var user in _usersList.Where(x => x.Name.Contains(searchTextBox.Text)))
                this.usersGridView.Rows.Add(user.Name, btn);
        else
            foreach (var empress in _empressesList.Where(x => x.FantasyName.Contains(searchTextBox.Text)))
                this.usersGridView.Rows.Add(empress.FantasyName, btn);
    }

    private void Pesquisar_Load(object sender, EventArgs e)
    {
        var btnColumn = new DataGridViewButtonColumn
        {
            Text = "Visualizar"
        };
        this.usersGridView.Columns.Add("Users", "Usuários");
        this.usersGridView.Columns.Add(btnColumn);
        this.PrintUsers();
    }

    private void searchTextBox_TextChanged(object sender, EventArgs e)
    {
        this.PrintUsers();
    }
}
