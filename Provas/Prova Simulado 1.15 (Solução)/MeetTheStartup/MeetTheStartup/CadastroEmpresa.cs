namespace MeetTheStartup;

public partial class CadastroEmpresa : Form
{
    public CadastroEmpresa()
    {
        InitializeComponent();
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

    private void addImageBtn_Click(object sender, EventArgs e)
    {
        this.ImageGallery();
    }
}
