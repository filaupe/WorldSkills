namespace MeetTheStartup;

public partial class ParticipantesVisita : Form
{
    private List<Image> _images = new();

    public ParticipantesVisita()
    {
        InitializeComponent();
    }

    private void ImageGallery(TableLayoutPanel tablePanel, List<Image> images)
    {
        PictureBox pic = new();
        Label lbl = new();
        Panel imageControlPanel = new();

        foreach (var image in images)
        {
            pic.Location = new Point(0, 0);
            pic.Name = "pictureBox";
            pic.Size = new Size(110, 110);
            pic.SizeMode = PictureBoxSizeMode.Zoom;
            pic.Image = image;
            pic.TabStop = false;

            lbl.Name = "userName";
            lbl.Size = new Size(75, 23);
            lbl.Text = "User";
            lbl.Location = new Point((imageControlPanel.Width / 2) - lbl.Width, (imageControlPanel.Height + 20));

            imageControlPanel.Controls.Add(pic);
            imageControlPanel.Controls.Add(lbl);
            imageControlPanel.Dock = DockStyle.Fill;
            imageControlPanel.Location = new Point(3, 3);
            imageControlPanel.Name = "imageControlPanel";
            imageControlPanel.Size = new Size(110, 154);
            imageControlPanel.TabIndex = 3;

            int calc = tablePanel.ColumnCount * tablePanel.RowCount;

            if (tablePanel.Controls.Count == calc)
            {
                tablePanel.RowCount++;
                tablePanel.Height += 160;
                tablePanel.RowStyles.Add(new RowStyle(SizeType.Absolute, 160F));
            }

            tablePanel.Controls.Add(imageControlPanel);
        }
    }

    private void ParticipantesVisita_Load(object sender, EventArgs e)
    {
        ImageGallery(this.tableLayoutImagePanel1, _images);
        ImageGallery(this.tableLayoutImagePanel2, _images);
    }
}
