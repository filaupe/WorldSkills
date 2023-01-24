namespace MeetTheStartup.ControlLib
{
    public partial class ImageGalleryControl : UserControl
    {
        public ImageGalleryControl()
        {
            InitializeComponent();
        }

        private void addImageBtn_Click(object sender, EventArgs e)
        {
            Button btn = new();
            PictureBox pic = new();
            OpenFileDialog dlg = new();
            Panel imageControlPanel = new();
            TableLayoutPanel tableLayoutImagePanel = new();

            tableLayoutImagePanel.BackColor = Color.White;
            tableLayoutImagePanel.ColumnCount = 3;
            tableLayoutImagePanel.ColumnStyles.Add(new ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            tableLayoutImagePanel.ColumnStyles.Add(new ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            tableLayoutImagePanel.ColumnStyles.Add(new ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            tableLayoutImagePanel.Location = new Point(3, 3);
            tableLayoutImagePanel.Name = "tableLayoutImagePanel";
            tableLayoutImagePanel.RowCount = 1;
            tableLayoutImagePanel.RowStyles.Add(new RowStyle(System.Windows.Forms.SizeType.Absolute, 160F));
            tableLayoutImagePanel.Size = new Size(348, 160);
            tableLayoutImagePanel.TabIndex = 0;

            dlg.ShowDialog();

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

            int calc = tableLayoutImagePanel.ColumnCount * tableLayoutImagePanel.RowCount;

            if (tableLayoutImagePanel.Controls.Count == calc)
            {
                tableLayoutImagePanel.RowCount++;
                tableLayoutImagePanel.Height += 160;
                tableLayoutImagePanel.RowStyles.Add(new RowStyle(SizeType.Absolute, 160F));
            }

            tableLayoutImagePanel.Controls.Add(imageControlPanel);

            this.components.Add(tableLayoutImagePanel);
        }
    }
}