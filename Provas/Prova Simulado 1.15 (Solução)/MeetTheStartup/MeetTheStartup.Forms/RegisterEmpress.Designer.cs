namespace MeetTheStartup.Forms
{
    partial class RegisterEmpress
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.addAtDaySelectedBtn = new System.Windows.Forms.Button();
            this.dataGridViewHoursAndVacancys = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dateTimePickerVisist = new System.Windows.Forms.DateTimePicker();
            this.comboBoxWaintingList = new System.Windows.Forms.ComboBox();
            this.textBoxName = new System.Windows.Forms.TextBox();
            this.textBoxFantasyName = new System.Windows.Forms.TextBox();
            this.textBoxHour = new System.Windows.Forms.TextBox();
            this.textBoxVacancys = new System.Windows.Forms.TextBox();
            this.galleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutGalleryPanel = new System.Windows.Forms.TableLayoutPanel();
            this.addImage = new System.Windows.Forms.Button();
            this.registerBtn = new System.Windows.Forms.Button();
            this.textBoxPassword = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewHoursAndVacancys)).BeginInit();
            this.galleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(44, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nome";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(42, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "Nome Fantasia";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(44, 305);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "Vagas";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(44, 276);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(47, 15);
            this.label4.TabIndex = 3;
            this.label4.Text = "Horário";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(44, 346);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(84, 15);
            this.label5.TabIndex = 4;
            this.label5.Text = "Lista de Espera";
            // 
            // addAtDaySelectedBtn
            // 
            this.addAtDaySelectedBtn.Location = new System.Drawing.Point(44, 375);
            this.addAtDaySelectedBtn.Name = "addAtDaySelectedBtn";
            this.addAtDaySelectedBtn.Size = new System.Drawing.Size(178, 28);
            this.addAtDaySelectedBtn.TabIndex = 5;
            this.addAtDaySelectedBtn.Text = "Adicionar ao Dia Selecionado";
            this.addAtDaySelectedBtn.UseVisualStyleBackColor = true;
            this.addAtDaySelectedBtn.Click += new System.EventHandler(this.addAtDaySelectedBtn_Click);
            // 
            // dataGridViewHoursAndVacancys
            // 
            this.dataGridViewHoursAndVacancys.AllowUserToAddRows = false;
            this.dataGridViewHoursAndVacancys.AllowUserToDeleteRows = false;
            this.dataGridViewHoursAndVacancys.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewHoursAndVacancys.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2});
            this.dataGridViewHoursAndVacancys.Location = new System.Drawing.Point(179, 141);
            this.dataGridViewHoursAndVacancys.Name = "dataGridViewHoursAndVacancys";
            this.dataGridViewHoursAndVacancys.ReadOnly = true;
            this.dataGridViewHoursAndVacancys.RowTemplate.Height = 25;
            this.dataGridViewHoursAndVacancys.Size = new System.Drawing.Size(163, 118);
            this.dataGridViewHoursAndVacancys.TabIndex = 6;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Horário";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Width = 60;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Vagas";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Width = 60;
            // 
            // dateTimePickerVisist
            // 
            this.dateTimePickerVisist.Location = new System.Drawing.Point(42, 141);
            this.dateTimePickerVisist.Name = "dateTimePickerVisist";
            this.dateTimePickerVisist.Size = new System.Drawing.Size(115, 23);
            this.dateTimePickerVisist.TabIndex = 7;
            // 
            // comboBoxWaintingList
            // 
            this.comboBoxWaintingList.FormattingEnabled = true;
            this.comboBoxWaintingList.Items.AddRange(new object[] {
            "Sim",
            "Não"});
            this.comboBoxWaintingList.Location = new System.Drawing.Point(144, 343);
            this.comboBoxWaintingList.Name = "comboBoxWaintingList";
            this.comboBoxWaintingList.Size = new System.Drawing.Size(58, 23);
            this.comboBoxWaintingList.TabIndex = 8;
            // 
            // textBoxName
            // 
            this.textBoxName.Location = new System.Drawing.Point(144, 31);
            this.textBoxName.Name = "textBoxName";
            this.textBoxName.Size = new System.Drawing.Size(213, 23);
            this.textBoxName.TabIndex = 9;
            // 
            // textBoxFantasyName
            // 
            this.textBoxFantasyName.Location = new System.Drawing.Point(144, 61);
            this.textBoxFantasyName.Name = "textBoxFantasyName";
            this.textBoxFantasyName.Size = new System.Drawing.Size(213, 23);
            this.textBoxFantasyName.TabIndex = 10;
            // 
            // textBoxHour
            // 
            this.textBoxHour.Location = new System.Drawing.Point(144, 273);
            this.textBoxHour.Name = "textBoxHour";
            this.textBoxHour.Size = new System.Drawing.Size(198, 23);
            this.textBoxHour.TabIndex = 11;
            // 
            // textBoxVacancys
            // 
            this.textBoxVacancys.Location = new System.Drawing.Point(144, 302);
            this.textBoxVacancys.Name = "textBoxVacancys";
            this.textBoxVacancys.Size = new System.Drawing.Size(198, 23);
            this.textBoxVacancys.TabIndex = 12;
            // 
            // galleryGroupBox
            // 
            this.galleryGroupBox.Controls.Add(this.galleryPanel);
            this.galleryGroupBox.Location = new System.Drawing.Point(372, 12);
            this.galleryGroupBox.Name = "galleryGroupBox";
            this.galleryGroupBox.Size = new System.Drawing.Size(348, 320);
            this.galleryGroupBox.TabIndex = 13;
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
            // addImage
            // 
            this.addImage.Location = new System.Drawing.Point(372, 375);
            this.addImage.Name = "addImage";
            this.addImage.Size = new System.Drawing.Size(185, 28);
            this.addImage.TabIndex = 14;
            this.addImage.Text = "Adicione imagem...";
            this.addImage.UseVisualStyleBackColor = true;
            this.addImage.Click += new System.EventHandler(this.addImage_Click);
            // 
            // registerBtn
            // 
            this.registerBtn.Location = new System.Drawing.Point(626, 375);
            this.registerBtn.Name = "registerBtn";
            this.registerBtn.Size = new System.Drawing.Size(94, 28);
            this.registerBtn.TabIndex = 15;
            this.registerBtn.Text = "Cadastrar";
            this.registerBtn.UseVisualStyleBackColor = true;
            this.registerBtn.Click += new System.EventHandler(this.registerBtn_Click);
            // 
            // textBoxPassword
            // 
            this.textBoxPassword.Location = new System.Drawing.Point(144, 90);
            this.textBoxPassword.Name = "textBoxPassword";
            this.textBoxPassword.Size = new System.Drawing.Size(213, 23);
            this.textBoxPassword.TabIndex = 16;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(42, 93);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(39, 15);
            this.label6.TabIndex = 17;
            this.label6.Text = "Senha";
            // 
            // RegisterEmpress
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(724, 411);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textBoxPassword);
            this.Controls.Add(this.registerBtn);
            this.Controls.Add(this.addImage);
            this.Controls.Add(this.galleryGroupBox);
            this.Controls.Add(this.textBoxVacancys);
            this.Controls.Add(this.textBoxHour);
            this.Controls.Add(this.textBoxFantasyName);
            this.Controls.Add(this.textBoxName);
            this.Controls.Add(this.comboBoxWaintingList);
            this.Controls.Add(this.dateTimePickerVisist);
            this.Controls.Add(this.dataGridViewHoursAndVacancys);
            this.Controls.Add(this.addAtDaySelectedBtn);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "RegisterEmpress";
            this.Text = "RegistereEmpress";
            this.Load += new System.EventHandler(this.RegisterEmpress_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewHoursAndVacancys)).EndInit();
            this.galleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Button addAtDaySelectedBtn;
        private DataGridView dataGridViewHoursAndVacancys;
        private DateTimePicker dateTimePickerVisist;
        private ComboBox comboBoxWaintingList;
        private TextBox textBoxName;
        private TextBox textBoxFantasyName;
        private TextBox textBoxHour;
        private TextBox textBoxVacancys;
        private GroupBox galleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutGalleryPanel;
        private Button addImage;
        private Button registerBtn;
        private TextBox textBoxPassword;
        private Label label6;
        private DataGridViewTextBoxColumn Column1;
        private DataGridViewTextBoxColumn Column2;
    }
}