using MeetTheStartup.ClassLib.Models.User.Empress;
using MeetTheStartup.ClassLib.Models.User.User;
using Microsoft.VisualBasic.ApplicationServices;

namespace MeetTheStartup;

public partial class CadastroEmpresa : Form
{
    private EmpressModel? _empress;

    private List<UserModel> _users;
    private List<EmpressModel> _empresses;

    private List<string> _hours;
    private List<int> _vacancys;

    private List<Image> _gallery = null!;

    public CadastroEmpresa(List<UserModel> users, List<EmpressModel> empresses, EmpressModel? empress = null)
    {
        InitializeComponent();

        _users = users;
        _gallery = empress?.Images ?? new();
        _empresses = empresses;
        _empress = empress;
        _hours = new();
        _vacancys = new();
    }

    private void ImageGallery()
    {
        Button btn = new();
        PictureBox pic = new();
        OpenFileDialog dlg = new();
        Panel imageControlPanel = new();

        if(dlg.ShowDialog() == DialogResult.OK)
        {
            pic.Location = new Point(0, 0);
            pic.Name = "pictureBox";
            pic.Size = new Size(110, 110);
            pic.SizeMode = PictureBoxSizeMode.Zoom;
            pic.Image = Image.FromFile(dlg.FileName);
            pic.TabStop = false;

            btn.Name = "deleteImageBtn";
            btn.Size = new Size(75, 23);
            btn.UseVisualStyleBackColor = true;
            btn.Text = "Excluir";
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

    private void addImageBtn_Click(object sender, EventArgs e)
    {
        this.ImageGallery();
    }

    private void registerBtn_Click(object sender, EventArgs e)
    {

    }

    private void addAtSelectDayBtn_Click(object sender, EventArgs e)
    {
        _vacancys.Add(int.Parse(vacancyTextBox.Text));
        _hours.Add(hourTextBox.Text);
        this.dataTimeGridView.Rows.Add(hourTextBox.Text, vacancyTextBox.Text);
    }
}
