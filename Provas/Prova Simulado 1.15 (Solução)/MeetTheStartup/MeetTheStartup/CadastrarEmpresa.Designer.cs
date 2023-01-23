namespace MeetTheStartup
{
    partial class Empresa
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.NameLbl = new System.Windows.Forms.Label();
            this.LoginNameLbl = new System.Windows.Forms.Label();
            this.HourLbl = new System.Windows.Forms.Label();
            this.Vacancies = new System.Windows.Forms.Label();
            this.WatingListLbl = new System.Windows.Forms.Label();
            this.NameTextBox = new System.Windows.Forms.TextBox();
            this.LoginTextBox = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.WaitingListComboBox = new System.Windows.Forms.ComboBox();
            this.button2 = new System.Windows.Forms.Button();
            this.addImageBtn = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.RegisterBtn = new System.Windows.Forms.Button();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Location = new System.Drawing.Point(395, 31);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(393, 341);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Galeria de Imagens";
            // 
            // NameLbl
            // 
            this.NameLbl.AutoSize = true;
            this.NameLbl.Location = new System.Drawing.Point(36, 31);
            this.NameLbl.Name = "NameLbl";
            this.NameLbl.Size = new System.Drawing.Size(40, 15);
            this.NameLbl.TabIndex = 1;
            this.NameLbl.Text = "Nome";
            // 
            // LoginNameLbl
            // 
            this.LoginNameLbl.AutoSize = true;
            this.LoginNameLbl.Location = new System.Drawing.Point(36, 69);
            this.LoginNameLbl.Name = "LoginNameLbl";
            this.LoginNameLbl.Size = new System.Drawing.Size(86, 15);
            this.LoginNameLbl.TabIndex = 2;
            this.LoginNameLbl.Text = "Nome Fantasia";
            // 
            // HourLbl
            // 
            this.HourLbl.AutoSize = true;
            this.HourLbl.Location = new System.Drawing.Point(35, 283);
            this.HourLbl.Name = "HourLbl";
            this.HourLbl.Size = new System.Drawing.Size(47, 15);
            this.HourLbl.TabIndex = 3;
            this.HourLbl.Text = "Horário";
            // 
            // Vacancies
            // 
            this.Vacancies.AutoSize = true;
            this.Vacancies.Location = new System.Drawing.Point(36, 318);
            this.Vacancies.Name = "Vacancies";
            this.Vacancies.Size = new System.Drawing.Size(37, 15);
            this.Vacancies.TabIndex = 4;
            this.Vacancies.Text = "Vagas";
            // 
            // WatingListLbl
            // 
            this.WatingListLbl.AutoSize = true;
            this.WatingListLbl.Location = new System.Drawing.Point(38, 357);
            this.WatingListLbl.Name = "WatingListLbl";
            this.WatingListLbl.Size = new System.Drawing.Size(84, 15);
            this.WatingListLbl.TabIndex = 5;
            this.WatingListLbl.Text = "Lista de Espera";
            // 
            // NameTextBox
            // 
            this.NameTextBox.Location = new System.Drawing.Point(128, 31);
            this.NameTextBox.Name = "NameTextBox";
            this.NameTextBox.Size = new System.Drawing.Size(261, 23);
            this.NameTextBox.TabIndex = 6;
            // 
            // LoginTextBox
            // 
            this.LoginTextBox.Location = new System.Drawing.Point(128, 66);
            this.LoginTextBox.Name = "LoginTextBox";
            this.LoginTextBox.Size = new System.Drawing.Size(261, 23);
            this.LoginTextBox.TabIndex = 7;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(128, 280);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(261, 23);
            this.textBox3.TabIndex = 8;
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(128, 315);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(261, 23);
            this.textBox4.TabIndex = 9;
            // 
            // WaitingListComboBox
            // 
            this.WaitingListComboBox.Items.AddRange(new object[] {
            "Sim",
            "Não"});
            this.WaitingListComboBox.Location = new System.Drawing.Point(128, 354);
            this.WaitingListComboBox.Name = "WaitingListComboBox";
            this.WaitingListComboBox.Size = new System.Drawing.Size(51, 23);
            this.WaitingListComboBox.TabIndex = 10;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(35, 393);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(178, 34);
            this.button2.TabIndex = 11;
            this.button2.Text = "Adicionar ao Dia Selecionado";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // addImageBtn
            // 
            this.addImageBtn.Location = new System.Drawing.Point(395, 393);
            this.addImageBtn.Name = "addImageBtn";
            this.addImageBtn.Size = new System.Drawing.Size(142, 34);
            this.addImageBtn.TabIndex = 12;
            this.addImageBtn.Text = "Adicioanr Imagem...";
            this.addImageBtn.UseVisualStyleBackColor = true;
            this.addImageBtn.Click += new System.EventHandler(this.addImageBtn_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(220, 101);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowTemplate.Height = 25;
            this.dataGridView1.Size = new System.Drawing.Size(169, 162);
            this.dataGridView1.TabIndex = 14;
            // 
            // RegisterBtn
            // 
            this.RegisterBtn.Location = new System.Drawing.Point(713, 399);
            this.RegisterBtn.Name = "RegisterBtn";
            this.RegisterBtn.Size = new System.Drawing.Size(75, 23);
            this.RegisterBtn.TabIndex = 15;
            this.RegisterBtn.Text = "Cadastrar";
            this.RegisterBtn.UseVisualStyleBackColor = true;
            this.RegisterBtn.Click += new System.EventHandler(this.RegisterBtn_Click);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(38, 101);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(175, 23);
            this.dateTimePicker1.TabIndex = 0;
            // 
            // Empresa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.RegisterBtn);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.addImageBtn);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.WaitingListComboBox);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.LoginTextBox);
            this.Controls.Add(this.NameTextBox);
            this.Controls.Add(this.WatingListLbl);
            this.Controls.Add(this.Vacancies);
            this.Controls.Add(this.HourLbl);
            this.Controls.Add(this.LoginNameLbl);
            this.Controls.Add(this.NameLbl);
            this.Controls.Add(this.groupBox1);
            this.Name = "Empresa";
            this.Text = "CadastrarEmpresa";
            this.Load += new System.EventHandler(this.Empresa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private GroupBox groupBox1;
        private Label NameLbl;
        private Label LoginNameLbl;
        private Label HourLbl;
        private Label Vacancies;
        private Label WatingListLbl;
        private TextBox NameTextBox;
        private TextBox LoginTextBox;
        private TextBox textBox3;
        private TextBox textBox4;
        private ComboBox WaitingListComboBox;
        private Button button2;
        private Button addImageBtn;
        private DataGridView dataGridView1;
        private DataGridView ImageGalleryGridView;
        private Button RegisterBtn;
        private DateTimePicker dateTimePicker1;
    }
}