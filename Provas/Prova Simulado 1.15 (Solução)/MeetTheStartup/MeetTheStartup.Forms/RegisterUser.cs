using MeetTheStartup.FormClassLib;

namespace MeetTheStartup.Forms;

public partial class RegisterUser : Form
{
    private int _id = 0;
    private Panel _panel = null!;
    private Button _btn = null!;
    private PictureBox _pictureBox = null!;

    private readonly UserModel? _user;

    private readonly List<UserModel> _users;
    private readonly List<EmpressModel> _empresses;

    private List<Image> Gallery;

    public RegisterUser(List<UserModel> users, List<EmpressModel> empresses, UserModel? user = null)
    {
        InitializeComponent();

        _users = users;
        _empresses = empresses;
        _user = user;
        Gallery = user?.Images ?? new();
    }

    private void LoadImageGallery()
    {
        foreach (var image in Gallery)
        {
            _panel = new();
            _pictureBox = new();
            _btn = new();

            _pictureBox.Location = new System.Drawing.Point(3, 3);
            _pictureBox.Image = image;
            _pictureBox.Name = $"pictureBox{_id}";
            _pictureBox.SizeMode = PictureBoxSizeMode.Zoom;
            _pictureBox.Size = new System.Drawing.Size(104, 104);
            _pictureBox.TabIndex = 1;
            _pictureBox.TabStop = false;

            _btn.Location = new System.Drawing.Point(17, 119);
            _btn.Name = "deleteBtn";
            _btn.Size = new System.Drawing.Size(75, 23);
            _btn.TabIndex = 0;
            _btn.Tag = _id;
            _btn.Click += _btn_Click;
            _btn.Text = "Excluir";
            _btn.UseVisualStyleBackColor = true;

            _panel.Controls.Add(_pictureBox);
            _panel.Controls.Add(_btn);
            _panel.Name = $"ImagePanel{_id}";
            _panel.Dock = System.Windows.Forms.DockStyle.Fill;
            _panel.Location = new System.Drawing.Point(3, 3);
            _panel.Size = new System.Drawing.Size(110, 154);
            _panel.TabIndex = 0;

            var calc = this.tableLayoutGalleryPanel.ColumnCount * this.tableLayoutGalleryPanel.RowCount;

            if (this.tableLayoutGalleryPanel.Controls.Count > calc)
            {
                this.tableLayoutGalleryPanel.RowCount++;
                this.tableLayoutGalleryPanel.RowStyles.Add(new RowStyle());
                this.tableLayoutGalleryPanel.Height += 160;
            }

            this.tableLayoutGalleryPanel.Controls.Add(_panel);
            _id++;
        }
    }

    private void ImageGallery()
    {
        _panel = new();
        _btn = new();
        _pictureBox = new();
        OpenFileDialog dlg = new();

        this.galleryPanel.AutoScroll = true;

        if (dlg.ShowDialog() == DialogResult.OK)
        {
            var image = Image.FromFile(dlg.FileName);
            _pictureBox.Location = new System.Drawing.Point(3, 3);
            _pictureBox.Name = $"pictureBox{_id}";
            _pictureBox.Image = image;
            _pictureBox.SizeMode = PictureBoxSizeMode.Zoom;
            _pictureBox.Size = new System.Drawing.Size(104, 104);
            _pictureBox.TabIndex = 1;
            _pictureBox.TabStop = false;

            Gallery.Add(_pictureBox.Image);

            _btn.Location = new System.Drawing.Point(17, 119);
            _btn.Name = "deleteBtn";
            _btn.Size = new System.Drawing.Size(75, 23);
            _btn.TabIndex = 0;
            _btn.Tag = _id;
            _btn.Click += _btn_Click;
            _btn.Text = "Excluir";
            _btn.UseVisualStyleBackColor = true;

            _panel.Controls.Add(_pictureBox);
            _panel.Controls.Add(_btn);
            _panel.Dock = System.Windows.Forms.DockStyle.Fill;
            _panel.Location = new System.Drawing.Point(3, 3);
            _panel.Name = $"ImagePanel{_id}";
            _panel.Size = new System.Drawing.Size(110, 154);
            _panel.TabIndex = 0;

            var calc = this.tableLayoutGalleryPanel.ColumnCount * this.tableLayoutGalleryPanel.RowCount;

            if (this.tableLayoutGalleryPanel.Controls.Count > calc)
            {
                this.tableLayoutGalleryPanel.RowCount++;
                this.tableLayoutGalleryPanel.RowStyles.Add(new RowStyle());
                this.tableLayoutGalleryPanel.Height += 160;
            }

            this.tableLayoutGalleryPanel.Controls.Add(_panel);
            _id++;
        }
    }

    private void _btn_Click(object? sender, EventArgs e)
    {
        var btn = (Button)sender!;
        var id = (int)btn.Tag!;
        var panel = (Panel)this.tableLayoutGalleryPanel.Controls[$"ImagePanel{id}"]!;
        var picture = (PictureBox)panel!.Controls[$"pictureBox{id}"]!;

        Gallery.Remove(picture.Image);
        this.tableLayoutGalleryPanel.Controls.Remove(panel);
    }

    private void registerBtn_Click(object sender, EventArgs e)
    {
        var user = _users.FirstOrDefault(_user);
        if (user != null)
        {
            if (Gallery.Count() > 0)
            {
                user.Name = textBoxName.Text;
                user.Login = textBoxLogin.Text;
                user.Password = textBoxPassword.Text;
                user.Images = Gallery;

                Methods.OpenForm(this, new Principal(_users, _empresses, _user, null));
            }
            else MessageBox.Show("Adicine ao menos uma imagem, tente novamente");
        }
        else
        {
            if (Gallery.Count() > 0)
            {
                UserModel model = new()
                {
                    Name = textBoxName.Text,
                    Login = textBoxLogin.Text,
                    Password = textBoxPassword.Text,
                    Images = Gallery,
                    Visits = new(),
                    Type = EuserType.USER,
                };
                _users.Add(model);
                Methods.OpenForm(this, new Login(_users, _empresses));
            }
            else MessageBox.Show("Adicine ao menos uma imagem, tente novamente");
        }
    }

    private void addImage_Click_1(object sender, EventArgs e)
    {
        ImageGallery();
    }

    private void RegisterUser_Load(object sender, EventArgs e)
    {
        if (_user != null)
        {
            LoadImageGallery();
            textBoxLogin.Text = _user.Login;
            textBoxName.Text = _user.Name;
            textBoxPassword.Text = _user.Password;
        }
    }
}
