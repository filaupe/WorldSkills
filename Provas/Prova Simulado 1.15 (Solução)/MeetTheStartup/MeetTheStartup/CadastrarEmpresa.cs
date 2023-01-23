using MeetTheStatup.ClassLibrary.Models.User;
using MeetTheStatup.ClassLibrary.Models.User.Enums;

namespace MeetTheStartup;

public partial class Empresa : Form
{
    private Thread _t1 = null!;
    private readonly List<UserModelPrincipal> _users = new();
    private UserModelPrincipal? _user;

    public Empresa(List<UserModelPrincipal> users, UserModelPrincipal? user = null)
    {
        InitializeComponent();
        if (users != null)
            _users.AddRange(users);
        _user = user;
    }

    private void Empresa_Load(object sender, EventArgs e)
    {

    }

    private void OpenForm(Form form)
    {
        _t1 = new Thread(() => Application.Run(form));
        _t1.SetApartmentState(ApartmentState.STA);
        _t1.Start();
        this.Close();
    }

    private void addImageBtn_Click(object sender, EventArgs e)
    {
        OpenFileDialog openFileDialog = new()
        {
            Filter = "Choose Imgae(*.jpg;*.png;*.gif)|*.jpg;*.png;*.gif"
        };

        if (openFileDialog.ShowDialog() == DialogResult.OK)
        {
            try
            {
                //GalleryImageGridView.Rows.Add(Image.FromFile(openFileDialog.FileName));
            }
            catch (OutOfMemoryException ex)
            {
                MessageBox.Show(ex.Message);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }

    private void RegisterBtn_Click(object sender, EventArgs e)
    {
        var name = NameTextBox.Text;
        var login = LoginTextBox.Text;
        //var password = PasswordTextBox.Text;

        //_user ??= new(name, login, password, EUserType.USER, new());
        //_user.Images.AddRange(_images);
        _users.Add(_user);

        this.OpenForm(new Login(_users));
    }
}
