namespace MeetTheStartup.Forms
{
    partial class EmpressProfile
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridViewVisits = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.monthCalendar1 = new System.Windows.Forms.MonthCalendar();
            this.pictureBoxProfileImg = new System.Windows.Forms.PictureBox();
            this.labelFantasyName = new System.Windows.Forms.Label();
            this.labelName = new System.Windows.Forms.Label();
            this.galleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutGalleryPanel = new System.Windows.Forms.TableLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVisits)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxProfileImg)).BeginInit();
            this.galleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridViewVisits
            // 
            this.dataGridViewVisits.AllowUserToAddRows = false;
            this.dataGridViewVisits.AllowUserToDeleteRows = false;
            this.dataGridViewVisits.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewVisits.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3});
            this.dataGridViewVisits.Location = new System.Drawing.Point(298, 343);
            this.dataGridViewVisits.Name = "dataGridViewVisits";
            this.dataGridViewVisits.ReadOnly = true;
            this.dataGridViewVisits.RowTemplate.Height = 25;
            this.dataGridViewVisits.Size = new System.Drawing.Size(393, 162);
            this.dataGridViewVisits.TabIndex = 0;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Horário";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Vagas";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Possui Lista de Espera";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Width = 150;
            // 
            // monthCalendar1
            // 
            this.monthCalendar1.Location = new System.Drawing.Point(27, 343);
            this.monthCalendar1.Name = "monthCalendar1";
            this.monthCalendar1.TabIndex = 1;
            // 
            // pictureBoxProfileImg
            // 
            this.pictureBoxProfileImg.Location = new System.Drawing.Point(32, 12);
            this.pictureBoxProfileImg.Name = "pictureBoxProfileImg";
            this.pictureBoxProfileImg.Size = new System.Drawing.Size(182, 182);
            this.pictureBoxProfileImg.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBoxProfileImg.TabIndex = 2;
            this.pictureBoxProfileImg.TabStop = false;
            // 
            // labelFantasyName
            // 
            this.labelFantasyName.AutoSize = true;
            this.labelFantasyName.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.labelFantasyName.Location = new System.Drawing.Point(27, 199);
            this.labelFantasyName.Name = "labelFantasyName";
            this.labelFantasyName.Size = new System.Drawing.Size(158, 30);
            this.labelFantasyName.TabIndex = 3;
            this.labelFantasyName.Text = "Nome Fantasia";
            // 
            // labelName
            // 
            this.labelName.AutoSize = true;
            this.labelName.Location = new System.Drawing.Point(32, 233);
            this.labelName.Name = "labelName";
            this.labelName.Size = new System.Drawing.Size(40, 15);
            this.labelName.TabIndex = 4;
            this.labelName.Text = "Nome";
            // 
            // galleryGroupBox
            // 
            this.galleryGroupBox.Controls.Add(this.galleryPanel);
            this.galleryGroupBox.Location = new System.Drawing.Point(440, 12);
            this.galleryGroupBox.Name = "galleryGroupBox";
            this.galleryGroupBox.Size = new System.Drawing.Size(348, 320);
            this.galleryGroupBox.TabIndex = 16;
            this.galleryGroupBox.TabStop = false;
            this.galleryGroupBox.Text = "Galeria de Imagens";
            // 
            // galleryPanel
            // 
            this.galleryPanel.Controls.Add(this.tableLayoutGalleryPanel);
            this.galleryPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.galleryPanel.Location = new System.Drawing.Point(3, 19);
            this.galleryPanel.Name = "galleryPanel";
            this.galleryPanel.Size = new System.Drawing.Size(342, 298);
            this.galleryPanel.TabIndex = 0;
            // 
            // tableLayoutGalleryPanel
            // 
            this.tableLayoutGalleryPanel.ColumnCount = 3;
            this.tableLayoutGalleryPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutGalleryPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutGalleryPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutGalleryPanel.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutGalleryPanel.Name = "tableLayoutGalleryPanel";
            this.tableLayoutGalleryPanel.RowCount = 2;
            this.tableLayoutGalleryPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 160F));
            this.tableLayoutGalleryPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 160F));
            this.tableLayoutGalleryPanel.Size = new System.Drawing.Size(342, 298);
            this.tableLayoutGalleryPanel.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 319);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(103, 15);
            this.label1.TabIndex = 17;
            this.label1.Text = "Visitas Disponíveis";
            // 
            // EmpressProfile
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 517);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.galleryGroupBox);
            this.Controls.Add(this.labelName);
            this.Controls.Add(this.labelFantasyName);
            this.Controls.Add(this.pictureBoxProfileImg);
            this.Controls.Add(this.monthCalendar1);
            this.Controls.Add(this.dataGridViewVisits);
            this.Name = "EmpressProfile";
            this.Text = "EmpressProfile";
            this.Load += new System.EventHandler(this.EmpressProfile_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVisits)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxProfileImg)).EndInit();
            this.galleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DataGridView dataGridViewVisits;
        private MonthCalendar monthCalendar1;
        private PictureBox pictureBoxProfileImg;
        private Label labelFantasyName;
        private Label labelName;
        private GroupBox galleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutGalleryPanel;
        private DataGridViewTextBoxColumn Column1;
        private DataGridViewTextBoxColumn Column2;
        private DataGridViewTextBoxColumn Column3;
        private Label label1;
    }
}