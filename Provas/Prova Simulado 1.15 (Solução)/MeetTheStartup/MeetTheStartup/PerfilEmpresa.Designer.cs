namespace MeetTheStartup
{
    partial class PerfilEmpresa
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
            this.profilePictureBox = new System.Windows.Forms.PictureBox();
            this.fantasyNameLbl = new System.Windows.Forms.Label();
            this.vistsLbl = new System.Windows.Forms.Label();
            this.nameLbl = new System.Windows.Forms.Label();
            this.ImageGalleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutImagePanel = new System.Windows.Forms.TableLayoutPanel();
            this.dataTableData = new System.Windows.Forms.DataGridView();
            this.horario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.vagas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.listaEspera = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.vistCalendar = new System.Windows.Forms.MonthCalendar();
            ((System.ComponentModel.ISupportInitialize)(this.profilePictureBox)).BeginInit();
            this.ImageGalleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataTableData)).BeginInit();
            this.SuspendLayout();
            // 
            // profilePictureBox
            // 
            this.profilePictureBox.Location = new System.Drawing.Point(43, 12);
            this.profilePictureBox.Name = "profilePictureBox";
            this.profilePictureBox.Size = new System.Drawing.Size(200, 200);
            this.profilePictureBox.TabIndex = 0;
            this.profilePictureBox.TabStop = false;
            // 
            // fantasyNameLbl
            // 
            this.fantasyNameLbl.AutoSize = true;
            this.fantasyNameLbl.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.fantasyNameLbl.Location = new System.Drawing.Point(43, 228);
            this.fantasyNameLbl.Name = "fantasyNameLbl";
            this.fantasyNameLbl.Size = new System.Drawing.Size(158, 30);
            this.fantasyNameLbl.TabIndex = 1;
            this.fantasyNameLbl.Text = "Nome Fantasia";
            // 
            // vistsLbl
            // 
            this.vistsLbl.AutoSize = true;
            this.vistsLbl.Location = new System.Drawing.Point(46, 300);
            this.vistsLbl.Name = "vistsLbl";
            this.vistsLbl.Size = new System.Drawing.Size(108, 15);
            this.vistsLbl.TabIndex = 2;
            this.vistsLbl.Text = "Visistas Disponíveis";
            // 
            // nameLbl
            // 
            this.nameLbl.AutoSize = true;
            this.nameLbl.Location = new System.Drawing.Point(47, 268);
            this.nameLbl.Name = "nameLbl";
            this.nameLbl.Size = new System.Drawing.Size(40, 15);
            this.nameLbl.TabIndex = 3;
            this.nameLbl.Text = "Nome";
            // 
            // ImageGalleryGroupBox
            // 
            this.ImageGalleryGroupBox.Controls.Add(this.galleryPanel);
            this.ImageGalleryGroupBox.Location = new System.Drawing.Point(410, 12);
            this.ImageGalleryGroupBox.Name = "ImageGalleryGroupBox";
            this.ImageGalleryGroupBox.Size = new System.Drawing.Size(378, 265);
            this.ImageGalleryGroupBox.TabIndex = 21;
            this.ImageGalleryGroupBox.TabStop = false;
            this.ImageGalleryGroupBox.Text = "Galeria de Imagens";
            // 
            // galleryPanel
            // 
            this.galleryPanel.AutoScroll = true;
            this.galleryPanel.Controls.Add(this.tableLayoutImagePanel);
            this.galleryPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.galleryPanel.Location = new System.Drawing.Point(3, 19);
            this.galleryPanel.Name = "galleryPanel";
            this.galleryPanel.AutoScroll = true;
            this.galleryPanel.Size = new System.Drawing.Size(372, 243);
            this.galleryPanel.TabIndex = 0;
            // 
            // tableLayoutImagePanel
            // 
            this.tableLayoutImagePanel.BackColor = System.Drawing.Color.White;
            this.tableLayoutImagePanel.ColumnCount = 3;
            this.tableLayoutImagePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutImagePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutImagePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutImagePanel.Location = new System.Drawing.Point(3, 3);
            this.tableLayoutImagePanel.Name = "tableLayoutImagePanel";
            this.tableLayoutImagePanel.RowCount = 1;
            this.tableLayoutImagePanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 160F));
            this.tableLayoutImagePanel.Size = new System.Drawing.Size(348, 160);
            this.tableLayoutImagePanel.TabIndex = 0;
            // 
            // dataTableData
            // 
            this.dataTableData.AllowUserToAddRows = false;
            this.dataTableData.AllowUserToDeleteRows = false;
            this.dataTableData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataTableData.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.horario,
            this.vagas,
            this.listaEspera});
            this.dataTableData.Location = new System.Drawing.Point(304, 324);
            this.dataTableData.Name = "dataTableData";
            this.dataTableData.ReadOnly = true;
            this.dataTableData.RowTemplate.Height = 25;
            this.dataTableData.Size = new System.Drawing.Size(393, 123);
            this.dataTableData.TabIndex = 22;
            // 
            // horario
            // 
            this.horario.HeaderText = "Horário";
            this.horario.Name = "horario";
            this.horario.ReadOnly = true;
            // 
            // vagas
            // 
            this.vagas.HeaderText = "Vagas";
            this.vagas.Name = "vagas";
            this.vagas.ReadOnly = true;
            // 
            // listaEspera
            // 
            this.listaEspera.FillWeight = 150F;
            this.listaEspera.HeaderText = "Possui Lista de Espera";
            this.listaEspera.Name = "listaEspera";
            this.listaEspera.ReadOnly = true;
            this.listaEspera.Width = 150;
            // 
            // vistCalendar
            // 
            this.vistCalendar.Location = new System.Drawing.Point(43, 324);
            this.vistCalendar.Name = "vistCalendar";
            this.vistCalendar.TabIndex = 23;
            // 
            // PerfilEmpresa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 503);
            this.Controls.Add(this.vistCalendar);
            this.Controls.Add(this.dataTableData);
            this.Controls.Add(this.ImageGalleryGroupBox);
            this.Controls.Add(this.nameLbl);
            this.Controls.Add(this.vistsLbl);
            this.Controls.Add(this.fantasyNameLbl);
            this.Controls.Add(this.profilePictureBox);
            this.Name = "PerfilEmpresa";
            this.Text = "PerfilEmpresa";
            this.Load += new System.EventHandler(this.PerfilEmpresa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.profilePictureBox)).EndInit();
            this.ImageGalleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataTableData)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private PictureBox profilePictureBox;
        private Label fantasyNameLbl;
        private Label vistsLbl;
        private Label nameLbl;
        private GroupBox ImageGalleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutImagePanel;
        private DataGridView dataTableData;
        private DataGridViewTextBoxColumn horario;
        private DataGridViewTextBoxColumn vagas;
        private DataGridViewTextBoxColumn listaEspera;
        private MonthCalendar vistCalendar;
    }
}