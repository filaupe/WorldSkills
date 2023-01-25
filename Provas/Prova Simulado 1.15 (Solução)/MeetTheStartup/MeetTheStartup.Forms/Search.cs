using MeetTheStartup.FormClassLib;

namespace MeetTheStartup.Forms;

public partial class Search : Form
{
    private readonly EuserType _type;
    private readonly List<UserModel> _users;
    private readonly List<EmpressModel> _empresses;

    public Search(List<UserModel> users, List<EmpressModel> empresses, EuserType type)
    {
        InitializeComponent();

        _type = type;
        _users = users;
        _empresses = empresses;
    }

    private void Search_Load(object sender, EventArgs e)
    {
        this.dataGridViewUsers.ColumnCount = 2;
        if (_type == EuserType.EMPRESS)
        {
            foreach (var empress in _empresses)
            {
                this.dataGridViewUsers.Rows.Add(empress.FantasyName);
            }
        }
        else
        {
            foreach (var user in _users)
            {
                this.dataGridViewUsers.Rows.Add(user.Name);
            }
        }
    }

    private void textBoxSearch_TextChanged(object sender, EventArgs e)
    {
        if (_type == EuserType.EMPRESS)
        {
            foreach (var empress in _empresses.Where(x => x.FantasyName.Contains(this.textBoxSearch.Text)))
            {
                this.dataGridViewUsers.Rows.Clear();
                this.dataGridViewUsers.Rows.Add(empress.FantasyName);
            }
        }
        else
        {
            foreach (var user in _users.Where(x => x.Name.Contains(this.textBoxSearch.Text)))
            {
                this.dataGridViewUsers.Rows.Clear();
                this.dataGridViewUsers.Rows.Add(user.Name);
            }
        }
    }
}
