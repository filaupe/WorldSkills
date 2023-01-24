using MeetTheStartup.ClassLib;
using MeetTheStartup.ClassLib.enums;
using MeetTheStartup.ClassLib.Models.User.Empress;
using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup;

public partial class CadastroUsuario : Form
{
    private UserModel? _user;

    private List<UserModel> _users;
    private List<EmpressModel> _empresses;

    private List<Image> _gallery = null!;

    public CadastroUsuario(List<UserModel> users, List<EmpressModel> empresses, List<Image>? gallery = null, UserModel? user = null)
    {
        InitializeComponent();

        _users = users;
        _gallery = gallery ?? new();
        _empresses = empresses;
        _user = user;
    }

    private void ImageGallery()
    {
        Button btn = new();
        PictureBox pic = new();
        OpenFileDialog dlg = new();
        Panel imageControlPanel = new();

        if (dlg.ShowDialog() == DialogResult.OK)
        {
            pic.Location = new Point(0, 0);
            pic.Name = "pictureBox";
            pic.Size = new Size(110, 110);
            pic.SizeMode = PictureBoxSizeMode.Zoom;
            pic.Image = Image.FromFile(dlg.FileName);
            _gallery.Add(pic.Image);
            pic.TabStop = false;

            btn.Name = "deleteImageBtn";
            btn.Size = new Size(75, 23);
            btn.UseVisualStyleBackColor = true;
            btn.Text = "Excluir";
            btn.Click += Btn_Click;
            btn.Location = new Point((imageControlPanel.Width / 2) - btn.Width, (imageControlPanel.Height + 20));

            imageControlPanel.Controls.Add(btn);
            imageControlPanel.Controls.Add(pic);
            imageControlPanel.Dock = DockStyle.Fill;
            imageControlPanel.Location = new Point(3, 3);
            imageControlPanel.Name = "imageControlPanel";
            imageControlPanel.Size = new Size(110, 154);
            imageControlPanel.TabIndex = 3;

            int calc = this.tableLayoutImagePanel.ColumnCount * this.tableLayoutImagePanel.RowCount;

            if (this.tableLayoutImagePanel.Controls.Count == calc)
            {
                this.tableLayoutImagePanel.RowCount++;
                this.tableLayoutImagePanel.Height += 160;
                this.tableLayoutImagePanel.RowStyles.Add(new RowStyle(SizeType.Absolute, 160F));
            }

            this.tableLayoutImagePanel.Controls.Add(imageControlPanel);
        }
    }

    private void LoadImageGallery()
    {
        PictureBox pic = new();
        Panel imageControlPanel = new();

        foreach (var image in _gallery)
        {
            pic.Location = new Point(0, 0);
            pic.Name = "pictureBox";
            pic.Size = new Size(110, 110);
            pic.SizeMode = PictureBoxSizeMode.Zoom;
            pic.Image = image;
            pic.TabStop = false;

            imageControlPanel.Controls.Add(pic);
            imageControlPanel.Dock = DockStyle.Fill;
            imageControlPanel.Location = new Point(3, 3);
            imageControlPanel.Name = "imageControlPanel";
            imageControlPanel.Size = new Size(110, 154);
            imageControlPanel.TabIndex = 3;

            int calc = this.tableLayoutImagePanel.ColumnCount * this.tableLayoutImagePanel.RowCount;

            if (this.tableLayoutImagePanel.Controls.Count == calc)
            {
                this.tableLayoutImagePanel.RowCount++;
                this.tableLayoutImagePanel.Height += 160;
                this.tableLayoutImagePanel.RowStyles.Add(new RowStyle(SizeType.Absolute, 160F));
            }

            this.tableLayoutImagePanel.Controls.Add(imageControlPanel);
        }
    }

    private void Btn_Click(object? sender, EventArgs e)
    {

    }

    private void addImageBtn_Click(object sender, EventArgs e)
    {
        this.ImageGallery();
    }

    private void registerBtn_Click(object sender, EventArgs e)
    {
        if (_gallery.Count == 1)
        {
            if (_user != null)
            {
                var user = _users[_users.IndexOf(_user)];
                user.Name = this.nameTextBox.Text;
                user.Login = this.loginTextBox.Text;
                user.Password = this.passwordTextBox.Text;
                user.Images = _gallery;
            }
            else
            {
                var user = new UserModel()
                {
                    Name = this.nameTextBox.Text,
                    Login = this.loginTextBox.Text,
                    Password = this.passwordTextBox.Text,
                    Type = EUserType.USER,
                    Images = _gallery,
                };
                _users.Add(user);
                FormMethods.OpenForm(this, new Login(_users, _empresses));
            }
            
        }
        else MessageBox.Show("Adicione ao menos uma imagem");
    }

    private void CadastroUsuario_Load(object sender, EventArgs e)
    {
        if (_user != null)
        {
            this.nameTextBox.Text =_user.Name;
            this.loginTextBox.Text = _user.Login;
            this.passwordTextBox.Text = _user.Password;
            _gallery = _user.Images;
            LoadImageGallery();
        }
    }
}
