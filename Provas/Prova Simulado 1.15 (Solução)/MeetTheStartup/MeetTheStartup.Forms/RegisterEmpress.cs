using MeetTheStartup.FormClassLib;
using Microsoft.VisualBasic.ApplicationServices;
using System.ComponentModel;

namespace MeetTheStartup.Forms;

public partial class RegisterEmpress : Form
{
    private int _id = 0;
    private Panel _panel = null!;
    private Button _btn = null!;
    private PictureBox _pictureBox = null!;

    private readonly EmpressModel? _empress;

    private readonly List<UserModel> _users;
    private readonly List<EmpressModel> _empresses;

    private List<Visit> _visits = new();
    private List<Image> Gallery;

    public RegisterEmpress(List<UserModel> users, List<EmpressModel> empresses, EmpressModel? empress = null)
    {
        InitializeComponent();

        comboBoxWaintingList.Text = "Sim";

        _users = users;
        _empresses = empresses;
        _empress = empress;
        Gallery = empress?.Images ?? new();
    }

    private void LoadGridView()
    {
        foreach (var item in _empress!.Visits)
        {
            this.dataGridViewHoursAndVacancys.ColumnCount = 2;
            this.dataGridViewHoursAndVacancys.Rows.Add(item.Date.Hour, item.Vacancys);
        }
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

    private void addImage_Click(object sender, EventArgs e)
    {
        ImageGallery();
    }

    private void addAtDaySelectedBtn_Click(object sender, EventArgs e)
    {
        this.dataGridViewHoursAndVacancys.ColumnCount = 2;
        this.dataGridViewHoursAndVacancys.Rows.Add(this.textBoxHour.Text, this.textBoxVacancys.Text);

        Visit model = new()
        {
            EmpressName = this.textBoxName.Text,
            Date = this.dateTimePickerVisist.Value,
            Vacancys = int.Parse(this.textBoxVacancys.Text),
            HaveWaitingList = this.comboBoxWaintingList.SelectedItem.ToString() == "Sim",
            Participants = new(),
            WaitingList = new()
        };
        _visits.Add(model);
    }

    private void registerBtn_Click(object sender, EventArgs e)
    {
        var empress = _empresses.FirstOrDefault(_empress);
        if (empress != null)
        {
            if (Gallery.Count() > 0)
            {
                empress.Name = this.textBoxName.Text;
                empress.Password = this.textBoxPassword.Text;
                empress.FantasyName = this.textBoxFantasyName.Text;
                empress.Visits = _visits;
                empress.Images = Gallery;

                Methods.OpenForm(this, new Principal(_users, _empresses, null, _empress));
            }
            else MessageBox.Show("Adicine ao menos uma imagem, tente novamente");
        }
        else
        {
            if (Gallery.Count() > 0)
            {
                EmpressModel model = new()
                {
                    Name = this.textBoxName.Text,
                    Password = this.textBoxPassword.Text,
                    FantasyName = this.textBoxFantasyName.Text,
                    Visits = _visits,
                    Images = Gallery,
                    Type = EuserType.EMPRESS,
                };
                _empresses.Add(model);
                Methods.OpenForm(this, new Login(_users, _empresses));
            }
            else MessageBox.Show("Adicine ao menos uma imagem, tente novamente");
        }
    }

    private void RegisterEmpress_Load(object sender, EventArgs e)
    {
        if (_empress != null)
        {
            LoadImageGallery();
            LoadGridView();
            textBoxFantasyName.Text = _empress.FantasyName;
            textBoxName.Text = _empress.Name;
            textBoxPassword.Text = _empress.Password;
        }
    }
}
