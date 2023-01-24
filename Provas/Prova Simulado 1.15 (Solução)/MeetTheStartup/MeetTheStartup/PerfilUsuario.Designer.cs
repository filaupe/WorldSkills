namespace MeetTheStartup
{
    partial class PerfilUsuario
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
            this.vistCalendar = new System.Windows.Forms.MonthCalendar();
            this.dataTableData = new System.Windows.Forms.DataGridView();
            this.horario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.vagas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.listaEspera = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ImageGalleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutImagePanel = new System.Windows.Forms.TableLayoutPanel();
            this.monthCalendar1 = new System.Windows.Forms.MonthCalendar();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.vistsLbl = new System.Windows.Forms.Label();
            this.nameLbl = new System.Windows.Forms.Label();
            this.profilePictureBox = new System.Windows.Forms.PictureBox();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataTableData)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.profilePictureBox)).BeginInit();
            this.SuspendLayout();
            // 
            // vistCalendar
            // 
            this.vistCalendar.Location = new System.Drawing.Point(28, 300);
            this.vistCalendar.Name = "vistCalendar";
            this.vistCalendar.TabIndex = 30;
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
            this.dataTableData.Location = new System.Drawing.Point(289, 300);
            this.dataTableData.Name = "dataTableData";
            this.dataTableData.ReadOnly = true;
            this.dataTableData.RowTemplate.Height = 25;
            this.dataTableData.Size = new System.Drawing.Size(393, 123);
            this.dataTableData.TabIndex = 29;
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
            // ImageGalleryGroupBox
            // 
            this.ImageGalleryGroupBox.Location = new System.Drawing.Point(0, 0);
            this.ImageGalleryGroupBox.Name = "ImageGalleryGroupBox";
            this.ImageGalleryGroupBox.Size = new System.Drawing.Size(200, 100);
            this.ImageGalleryGroupBox.TabIndex = 0;
            this.ImageGalleryGroupBox.TabStop = false;
            // 
            // galleryPanel
            // 
            this.galleryPanel.AutoScroll = true;
            this.galleryPanel.Location = new System.Drawing.Point(0, 0);
            this.galleryPanel.Name = "galleryPanel";
            this.galleryPanel.AutoScroll = true;
            this.galleryPanel.Size = new System.Drawing.Size(200, 100);
            this.galleryPanel.TabIndex = 0;
            // 
            // tableLayoutImagePanel
            // 
            this.tableLayoutImagePanel.BackColor = System.Drawing.Color.White;
            this.tableLayoutImagePanel.ColumnCount = 3;
            this.tableLayoutImagePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutImagePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutImagePanel.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutImagePanel.Name = "tableLayoutImagePanel";
            this.tableLayoutImagePanel.RowCount = 1;
            this.tableLayoutImagePanel.Size = new System.Drawing.Size(200, 100);
            this.tableLayoutImagePanel.TabIndex = 0;
            // 
            // monthCalendar1
            // 
            this.monthCalendar1.Location = new System.Drawing.Point(290, 326);
            this.monthCalendar1.Name = "monthCalendar1";
            this.monthCalendar1.TabIndex = 30;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2});
            this.dataGridView1.Location = new System.Drawing.Point(529, 365);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowTemplate.Height = 25;
            this.dataGridView1.Size = new System.Drawing.Size(241, 123);
            this.dataGridView1.TabIndex = 29;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Location = new System.Drawing.Point(395, 14);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(378, 265);
            this.groupBox1.TabIndex = 28;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Galeria de Imagens";
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.tableLayoutPanel1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 19);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(372, 243);
            this.panel1.TabIndex = 0;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.BackColor = System.Drawing.Color.White;
            this.tableLayoutPanel1.ColumnCount = 3;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 116F));
            this.tableLayoutPanel1.Location = new System.Drawing.Point(3, 3);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 160F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(348, 160);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // vistsLbl
            // 
            this.vistsLbl.AutoSize = true;
            this.vistsLbl.Location = new System.Drawing.Point(290, 302);
            this.vistsLbl.Name = "vistsLbl";
            this.vistsLbl.Size = new System.Drawing.Size(106, 15);
            this.vistsLbl.TabIndex = 26;
            this.vistsLbl.Text = "Visitas já realizadas";
            // 
            // nameLbl
            // 
            this.nameLbl.AutoSize = true;
            this.nameLbl.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.nameLbl.Location = new System.Drawing.Point(28, 230);
            this.nameLbl.Name = "nameLbl";
            this.nameLbl.Size = new System.Drawing.Size(73, 30);
            this.nameLbl.TabIndex = 25;
            this.nameLbl.Text = "Nome";
            // 
            // profilePictureBox
            // 
            this.profilePictureBox.Location = new System.Drawing.Point(28, 14);
            this.profilePictureBox.Name = "profilePictureBox";
            this.profilePictureBox.Size = new System.Drawing.Size(200, 200);
            this.profilePictureBox.TabIndex = 24;
            this.profilePictureBox.TabStop = false;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.HeaderText = "Empresa";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.HeaderText = "Horário";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            // 
            // PerfilUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 503);
            this.Controls.Add(this.monthCalendar1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.vistsLbl);
            this.Controls.Add(this.nameLbl);
            this.Controls.Add(this.profilePictureBox);
            this.Name = "PerfilUsuario";
            this.Text = "PerfilUsuario";
            this.Load += new System.EventHandler(this.PerfilUsuario_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataTableData)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.profilePictureBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MonthCalendar vistCalendar;
        private DataGridView dataTableData;
        private DataGridViewTextBoxColumn horario;
        private DataGridViewTextBoxColumn vagas;
        private DataGridViewTextBoxColumn listaEspera;
        private GroupBox ImageGalleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutImagePanel;
        private MonthCalendar monthCalendar1;
        private DataGridView dataGridView1;
        private GroupBox groupBox1;
        private Panel panel1;
        private TableLayoutPanel tableLayoutPanel1;
        private Label vistsLbl;
        private Label nameLbl;
        private PictureBox profilePictureBox;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
    }
}