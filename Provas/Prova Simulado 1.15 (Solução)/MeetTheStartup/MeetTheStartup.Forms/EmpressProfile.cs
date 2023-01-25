using MeetTheStartup.FormClassLib;

namespace MeetTheStartup.Forms;

public partial class EmpressProfile : Form
{
    private Panel _panel = null!;
    private PictureBox _pictureBox = null!;

    private EmpressModel _empress;

    private List<Image> _images;

    public EmpressProfile(EmpressModel empress)
    {
        InitializeComponent();

        _empress = empress;
        _images = empress.Images;
    }

    private void LoadImageGallery()
    {
        foreach (var image in _images)
        {
            _panel = new();
            _pictureBox = new();

            _pictureBox.Location = new System.Drawing.Point(3, 3);
            _pictureBox.Image = image;
            _pictureBox.SizeMode = PictureBoxSizeMode.Zoom;
            _pictureBox.Size = new System.Drawing.Size(104, 104);
            _pictureBox.TabIndex = 1;
            _pictureBox.TabStop = false;

            _panel.Controls.Add(_pictureBox);
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
        }
    }

    private void EmpressProfile_Load(object sender, EventArgs e)
    {
        LoadImageGallery();

        this.labelName.Text = _empress.Name;
        this.labelFantasyName.Text = _empress.FantasyName;
        this.pictureBoxProfileImg.Image = _empress.Images.First();
        this.dataGridViewVisits.ColumnCount = 2;
        foreach (var visit in _empress.Visits)
            this.dataGridViewVisits.Rows.Add(visit.Date.Hour, visit.Vacancys, visit.HaveWaitingList ? "Sim" : "Não");
    }
}
