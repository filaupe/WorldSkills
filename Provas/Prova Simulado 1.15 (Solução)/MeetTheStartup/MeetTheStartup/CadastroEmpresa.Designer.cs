namespace MeetTheStartup
{
    partial class CadastroEmpresa
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
            this.addImageBtn = new System.Windows.Forms.Button();
            this.ImageGalleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutImagePanel = new System.Windows.Forms.TableLayoutPanel();
            this.registerBtn = new System.Windows.Forms.Button();
            this.addAtSelectDayBtn = new System.Windows.Forms.Button();
            this.waitingListLbl = new System.Windows.Forms.Label();
            this.waitingListOptions = new System.Windows.Forms.ComboBox();
            this.vacancyLbl = new System.Windows.Forms.Label();
            this.hourLbl = new System.Windows.Forms.Label();
            this.hourTextBox = new System.Windows.Forms.TextBox();
            this.vacancyTextBox = new System.Windows.Forms.TextBox();
            this.dataTimeGridView = new System.Windows.Forms.DataGridView();
            this.Horario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Vagas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dateTimePicker = new System.Windows.Forms.DateTimePicker();
            this.passwordLbl = new System.Windows.Forms.Label();
            this.fanstasyNameLbl = new System.Windows.Forms.Label();
            this.nameLbl = new System.Windows.Forms.Label();
            this.passwordTextBox = new System.Windows.Forms.TextBox();
            this.fantasyNameTextBox = new System.Windows.Forms.TextBox();
            this.nameTextBox = new System.Windows.Forms.TextBox();
            this.ImageGalleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataTimeGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // addImageBtn
            // 
            this.addImageBtn.Location = new System.Drawing.Point(365, 388);
            this.addImageBtn.Name = "addImageBtn";
            this.addImageBtn.Size = new System.Drawing.Size(188, 33);
            this.addImageBtn.TabIndex = 0;
            this.addImageBtn.Text = "Adicionar Imagem...";
            this.addImageBtn.UseVisualStyleBackColor = true;
            this.addImageBtn.Click += new System.EventHandler(this.addImageBtn_Click);
            // 
            // ImageGalleryGroupBox
            // 
            this.ImageGalleryGroupBox.Controls.Add(this.galleryPanel);
            this.ImageGalleryGroupBox.Location = new System.Drawing.Point(365, 12);
            this.ImageGalleryGroupBox.Name = "ImageGalleryGroupBox";
            this.ImageGalleryGroupBox.Size = new System.Drawing.Size(378, 370);
            this.ImageGalleryGroupBox.TabIndex = 1;
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
            this.galleryPanel.Size = new System.Drawing.Size(372, 348);
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
            // registerBtn
            // 
            this.registerBtn.Location = new System.Drawing.Point(623, 388);
            this.registerBtn.Name = "registerBtn";
            this.registerBtn.Size = new System.Drawing.Size(117, 33);
            this.registerBtn.TabIndex = 2;
            this.registerBtn.Text = "Cadastrar";
            this.registerBtn.UseVisualStyleBackColor = true;
            this.registerBtn.Click += new System.EventHandler(this.registerBtn_Click);
            // 
            // addAtSelectDayBtn
            // 
            this.addAtSelectDayBtn.Location = new System.Drawing.Point(25, 388);
            this.addAtSelectDayBtn.Name = "addAtSelectDayBtn";
            this.addAtSelectDayBtn.Size = new System.Drawing.Size(244, 33);
            this.addAtSelectDayBtn.TabIndex = 3;
            this.addAtSelectDayBtn.Text = "Adicionar ao dia selecionado";
            this.addAtSelectDayBtn.UseVisualStyleBackColor = true;
            this.addAtSelectDayBtn.Click += new System.EventHandler(this.addAtSelectDayBtn_Click);
            // 
            // waitingListLbl
            // 
            this.waitingListLbl.AutoSize = true;
            this.waitingListLbl.Location = new System.Drawing.Point(25, 343);
            this.waitingListLbl.Name = "waitingListLbl";
            this.waitingListLbl.Size = new System.Drawing.Size(84, 15);
            this.waitingListLbl.TabIndex = 4;
            this.waitingListLbl.Text = "Lista de Espera";
            // 
            // waitingListOptions
            // 
            this.waitingListOptions.FormattingEnabled = true;
            this.waitingListOptions.Items.AddRange(new object[] {
            "Sim",
            "Não"});
            this.waitingListOptions.Location = new System.Drawing.Point(128, 340);
            this.waitingListOptions.Name = "waitingListOptions";
            this.waitingListOptions.Size = new System.Drawing.Size(55, 23);
            this.waitingListOptions.TabIndex = 5;
            this.waitingListOptions.Text = "Sim";
            // 
            // vacancyLbl
            // 
            this.vacancyLbl.AutoSize = true;
            this.vacancyLbl.Location = new System.Drawing.Point(25, 294);
            this.vacancyLbl.Name = "vacancyLbl";
            this.vacancyLbl.Size = new System.Drawing.Size(37, 15);
            this.vacancyLbl.TabIndex = 6;
            this.vacancyLbl.Text = "Vagas";
            // 
            // hourLbl
            // 
            this.hourLbl.AutoSize = true;
            this.hourLbl.Location = new System.Drawing.Point(25, 260);
            this.hourLbl.Name = "hourLbl";
            this.hourLbl.Size = new System.Drawing.Size(47, 15);
            this.hourLbl.TabIndex = 7;
            this.hourLbl.Text = "Horário";
            // 
            // hourTextBox
            // 
            this.hourTextBox.Location = new System.Drawing.Point(128, 257);
            this.hourTextBox.Name = "hourTextBox";
            this.hourTextBox.Size = new System.Drawing.Size(210, 23);
            this.hourTextBox.TabIndex = 8;
            // 
            // vacancyTextBox
            // 
            this.vacancyTextBox.Location = new System.Drawing.Point(128, 291);
            this.vacancyTextBox.Name = "vacancyTextBox";
            this.vacancyTextBox.Size = new System.Drawing.Size(210, 23);
            this.vacancyTextBox.TabIndex = 9;
            // 
            // dataTimeGridView
            // 
            this.dataTimeGridView.AllowUserToAddRows = false;
            this.dataTimeGridView.AllowUserToDeleteRows = false;
            this.dataTimeGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataTimeGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Horario,
            this.Vagas});
            this.dataTimeGridView.Location = new System.Drawing.Point(175, 136);
            this.dataTimeGridView.Name = "dataTimeGridView";
            this.dataTimeGridView.ReadOnly = true;
            this.dataTimeGridView.RowTemplate.Height = 25;
            this.dataTimeGridView.Size = new System.Drawing.Size(163, 115);
            this.dataTimeGridView.TabIndex = 10;
            // 
            // Horario
            // 
            this.Horario.HeaderText = "Horário";
            this.Horario.Name = "Horario";
            this.Horario.ReadOnly = true;
            this.Horario.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Horario.Width = 60;
            // 
            // Vagas
            // 
            this.Vagas.HeaderText = "Vagas";
            this.Vagas.Name = "Vagas";
            this.Vagas.ReadOnly = true;
            this.Vagas.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Vagas.Width = 60;
            // 
            // dateTimePicker
            // 
            this.dateTimePicker.Location = new System.Drawing.Point(25, 136);
            this.dateTimePicker.Name = "dateTimePicker";
            this.dateTimePicker.Size = new System.Drawing.Size(112, 23);
            this.dateTimePicker.TabIndex = 11;
            // 
            // passwordLbl
            // 
            this.passwordLbl.AutoSize = true;
            this.passwordLbl.Location = new System.Drawing.Point(23, 99);
            this.passwordLbl.Name = "passwordLbl";
            this.passwordLbl.Size = new System.Drawing.Size(39, 15);
            this.passwordLbl.TabIndex = 12;
            this.passwordLbl.Text = "Senha";
            // 
            // fanstasyNameLbl
            // 
            this.fanstasyNameLbl.AutoSize = true;
            this.fanstasyNameLbl.Location = new System.Drawing.Point(23, 65);
            this.fanstasyNameLbl.Name = "fanstasyNameLbl";
            this.fanstasyNameLbl.Size = new System.Drawing.Size(86, 15);
            this.fanstasyNameLbl.TabIndex = 13;
            this.fanstasyNameLbl.Text = "Nome Fantasia";
            // 
            // nameLbl
            // 
            this.nameLbl.AutoSize = true;
            this.nameLbl.Location = new System.Drawing.Point(25, 34);
            this.nameLbl.Name = "nameLbl";
            this.nameLbl.Size = new System.Drawing.Size(40, 15);
            this.nameLbl.TabIndex = 14;
            this.nameLbl.Text = "Nome";
            // 
            // passwordTextBox
            // 
            this.passwordTextBox.Location = new System.Drawing.Point(128, 96);
            this.passwordTextBox.Name = "passwordTextBox";
            this.passwordTextBox.Size = new System.Drawing.Size(210, 23);
            this.passwordTextBox.TabIndex = 15;
            // 
            // fantasyNameTextBox
            // 
            this.fantasyNameTextBox.Location = new System.Drawing.Point(128, 62);
            this.fantasyNameTextBox.Name = "fantasyNameTextBox";
            this.fantasyNameTextBox.Size = new System.Drawing.Size(210, 23);
            this.fantasyNameTextBox.TabIndex = 16;
            // 
            // nameTextBox
            // 
            this.nameTextBox.Location = new System.Drawing.Point(128, 31);
            this.nameTextBox.Name = "nameTextBox";
            this.nameTextBox.Size = new System.Drawing.Size(210, 23);
            this.nameTextBox.TabIndex = 17;
            // 
            // CadastroEmpresa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(755, 450);
            this.Controls.Add(this.nameTextBox);
            this.Controls.Add(this.fantasyNameTextBox);
            this.Controls.Add(this.passwordTextBox);
            this.Controls.Add(this.nameLbl);
            this.Controls.Add(this.fanstasyNameLbl);
            this.Controls.Add(this.passwordLbl);
            this.Controls.Add(this.dateTimePicker);
            this.Controls.Add(this.dataTimeGridView);
            this.Controls.Add(this.vacancyTextBox);
            this.Controls.Add(this.hourTextBox);
            this.Controls.Add(this.hourLbl);
            this.Controls.Add(this.vacancyLbl);
            this.Controls.Add(this.waitingListOptions);
            this.Controls.Add(this.waitingListLbl);
            this.Controls.Add(this.addAtSelectDayBtn);
            this.Controls.Add(this.registerBtn);
            this.Controls.Add(this.ImageGalleryGroupBox);
            this.Controls.Add(this.addImageBtn);
            this.Name = "CadastroEmpresa";
            this.Text = "Empresas";
            this.ImageGalleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataTimeGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Button addImageBtn;
        private GroupBox ImageGalleryGroupBox;
        private TableLayoutPanel tableLayoutImagePanel;
        private Button registerBtn;
        private Button addAtSelectDayBtn;
        private Label waitingListLbl;
        private ComboBox waitingListOptions;
        private Label vacancyLbl;
        private Label hourLbl;
        private TextBox hourTextBox;
        private TextBox vacancyTextBox;
        private DataGridView dataTimeGridView;
        private DataGridViewTextBoxColumn Horario;
        private DataGridViewTextBoxColumn Vagas;
        private DateTimePicker dateTimePicker;
        private Label passwordLbl;
        private Label fanstasyNameLbl;
        private Label nameLbl;
        private TextBox passwordTextBox;
        private TextBox fantasyNameTextBox;
        private TextBox nameTextBox;
        private Panel galleryPanel;
    }
}