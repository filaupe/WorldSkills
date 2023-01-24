using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup;

public partial class PerfilUsuario : Form
{
    private List<Image> _images;
    private UserModel _user;

    public PerfilUsuario(UserModel user)
    {
        InitializeComponent();

        _user = user;
        _images = user.Images;
    }

    private void ImageGallery()
    {
        PictureBox pic = new();
        Panel imageControlPanel = new();

        foreach (var image in _images)
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

    private void PerfilUsuario_Load(object sender, EventArgs e)
    {
        this.ImageGallery();
        profilePictureBox.Image = _images[0];
        profilePictureBox.SizeMode = PictureBoxSizeMode.Zoom;
        nameLbl.Text = _user.Name;
    }
}
