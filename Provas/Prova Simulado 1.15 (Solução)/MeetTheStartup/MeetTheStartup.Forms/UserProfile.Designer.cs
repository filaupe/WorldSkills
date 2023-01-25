namespace MeetTheStartup.Forms
{
    partial class UserProfile
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
            this.galleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutGalleryPanel = new System.Windows.Forms.TableLayoutPanel();
            this.pictureBoxProfileImg = new System.Windows.Forms.PictureBox();
            this.labelName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridViewVisits = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.monthCalendar1 = new System.Windows.Forms.MonthCalendar();
            this.galleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxProfileImg)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVisits)).BeginInit();
            this.SuspendLayout();
            // 
            // galleryGroupBox
            // 
            this.galleryGroupBox.Controls.Add(this.galleryPanel);
            this.galleryGroupBox.Location = new System.Drawing.Point(440, 12);
            this.galleryGroupBox.Name = "galleryGroupBox";
            this.galleryGroupBox.Size = new System.Drawing.Size(348, 320);
            this.galleryGroupBox.TabIndex = 17;
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
            // pictureBoxProfileImg
            // 
            this.pictureBoxProfileImg.Location = new System.Drawing.Point(42, 12);
            this.pictureBoxProfileImg.Name = "pictureBoxProfileImg";
            this.pictureBoxProfileImg.Size = new System.Drawing.Size(182, 182);
            this.pictureBoxProfileImg.TabIndex = 18;
            this.pictureBoxProfileImg.TabStop = false;
            // 
            // labelName
            // 
            this.labelName.AutoSize = true;
            this.labelName.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.labelName.Location = new System.Drawing.Point(42, 206);
            this.labelName.Name = "labelName";
            this.labelName.Size = new System.Drawing.Size(73, 30);
            this.labelName.TabIndex = 19;
            this.labelName.Text = "Nome";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(295, 327);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(111, 15);
            this.label2.TabIndex = 20;
            this.label2.Text = "Visistas já realizadas";
            // 
            // dataGridViewVisits
            // 
            this.dataGridViewVisits.AllowUserToAddRows = false;
            this.dataGridViewVisits.AllowUserToDeleteRows = false;
            this.dataGridViewVisits.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewVisits.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2});
            this.dataGridViewVisits.Location = new System.Drawing.Point(546, 351);
            this.dataGridViewVisits.Name = "dataGridViewVisits";
            this.dataGridViewVisits.ReadOnly = true;
            this.dataGridViewVisits.RowTemplate.Height = 25;
            this.dataGridViewVisits.Size = new System.Drawing.Size(242, 162);
            this.dataGridViewVisits.TabIndex = 21;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Empresa";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Horário";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // monthCalendar1
            // 
            this.monthCalendar1.Location = new System.Drawing.Point(295, 351);
            this.monthCalendar1.Name = "monthCalendar1";
            this.monthCalendar1.TabIndex = 22;
            // 
            // UserProfile
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 520);
            this.Controls.Add(this.monthCalendar1);
            this.Controls.Add(this.dataGridViewVisits);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.labelName);
            this.Controls.Add(this.pictureBoxProfileImg);
            this.Controls.Add(this.galleryGroupBox);
            this.Name = "UserProfile";
            this.Text = "UserProfile";
            this.Load += new System.EventHandler(this.UserProfile_Load);
            this.galleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxProfileImg)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVisits)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private GroupBox galleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutGalleryPanel;
        private PictureBox pictureBoxProfileImg;
        private Label labelName;
        private Label label2;
        private DataGridView dataGridViewVisits;
        private DataGridViewTextBoxColumn Column1;
        private DataGridViewTextBoxColumn Column2;
        private MonthCalendar monthCalendar1;
    }
}