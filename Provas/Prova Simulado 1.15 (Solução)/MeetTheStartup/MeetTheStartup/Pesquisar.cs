using MeetTheStatup.ClassLibrary.Models.User;
using MeetTheStatup.ClassLibrary.Models.User.Enums;

namespace MeetTheStartup;

public partial class Pesquisar : Form
{
    private readonly List<UserModelPrincipal> _users;
    private readonly EUserType _type;

    public Pesquisar(List<UserModelPrincipal> users, EUserType type)
    {
        InitializeComponent();

        _users = users;
        _type = type;

        this.SetGrid(String.Empty);
    }

    private void ClearGrid()
    {
        searchGridView.Rows.Clear();
        searchGridView.Columns.Clear();
    }

    private void SetGrid(string text)
    {
        this.ClearGrid();
        searchGridView.ColumnCount = 2;
        foreach (var user in _users.Where(user => user.Type == _type && user.Name.Contains(text, StringComparison.OrdinalIgnoreCase)))
            searchGridView.Rows.Add(user.Name);
    }

    private void searchBar_TextChanged(object sender, EventArgs e) => this.SetGrid(searchBar.Text);
}
