using MeetTheStatup.ClassLibrary.Models.User;
using MeetTheStatup.ClassLibrary.Models.User.Enums;
using System.Data.Common;

namespace MeetTheStartup;

public partial class CadastrarUsuario : Form
{
    private Thread _t1 = null!;
    private readonly List<UserModelPrincipal> _users = new();
    private List<Image> _images = new();
    private UserModelPrincipal? _user;

    public CadastrarUsuario(List<UserModelPrincipal> users, UserModelPrincipal? user = null)
    {
        InitializeComponent();
        if (users != null)
            _users.AddRange(users);
        _user = user;
    }

    private void OpenForm(Form form)
    {
        _t1 = new Thread(() => Application.Run(form));
        _t1.SetApartmentState(ApartmentState.STA);
        _t1.Start();
        this.Close();
    }

    private void CadastrarUsuario_Load(object sender, EventArgs e)
    {
        GalleryImageGridView.RowTemplate.Height = 60;
    }

    private void addImageBtn_Click(object sender, EventArgs e)
    {
        OpenFileDialog openFileDialog = new()
        {
            Filter = "Choose Imgae(*.jpg;*.png;*.gif)|*.jpg;*.png;*.gif"
        };

        if (openFileDialog.ShowDialog() == DialogResult.OK)
        {
            DataGridViewImageColumn column = new();
            column.ImageLayout = DataGridViewImageCellLayout.Zoom;
            if (GalleryImageGridView.ColumnCount != 1)
                GalleryImageGridView.Columns.Add(column);
            try
            {
                var img = Image.FromFile(openFileDialog.FileName);
                GalleryImageGridView.Rows.Add(img);
                _images.Add(img);
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
        var password = PasswordTextBox.Text;

        _user ??= new(name, login, password, EUserType.USER, new());
        _user.Images.AddRange(_images);
        _users.Add(_user);

        this.OpenForm(new Login(_users));
    }


}