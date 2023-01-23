namespace MeetTheStartup
{
    partial class CadastrarUsuario
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
            this.LoginTextBox = new System.Windows.Forms.TextBox();
            this.NameTextBox = new System.Windows.Forms.TextBox();
            this.LoginNameLbl = new System.Windows.Forms.Label();
            this.NameLbl = new System.Windows.Forms.Label();
            this.PasswordTextBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.GalleryImageGridView = new System.Windows.Forms.DataGridView();
            this.addImageBtn = new System.Windows.Forms.Button();
            this.RegisterBtn = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GalleryImageGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // LoginTextBox
            // 
            this.LoginTextBox.Location = new System.Drawing.Point(121, 59);
            this.LoginTextBox.Name = "LoginTextBox";
            this.LoginTextBox.Size = new System.Drawing.Size(261, 23);
            this.LoginTextBox.TabIndex = 11;
            // 
            // NameTextBox
            // 
            this.NameTextBox.Location = new System.Drawing.Point(121, 30);
            this.NameTextBox.Name = "NameTextBox";
            this.NameTextBox.Size = new System.Drawing.Size(261, 23);
            this.NameTextBox.TabIndex = 10;
            // 
            // LoginNameLbl
            // 
            this.LoginNameLbl.AutoSize = true;
            this.LoginNameLbl.Location = new System.Drawing.Point(29, 62);
            this.LoginNameLbl.Name = "LoginNameLbl";
            this.LoginNameLbl.Size = new System.Drawing.Size(86, 15);
            this.LoginNameLbl.TabIndex = 9;
            this.LoginNameLbl.Text = "Nome Fantasia";
            // 
            // NameLbl
            // 
            this.NameLbl.AutoSize = true;
            this.NameLbl.Location = new System.Drawing.Point(29, 30);
            this.NameLbl.Name = "NameLbl";
            this.NameLbl.Size = new System.Drawing.Size(40, 15);
            this.NameLbl.TabIndex = 8;
            this.NameLbl.Text = "Nome";
            // 
            // PasswordTextBox
            // 
            this.PasswordTextBox.Location = new System.Drawing.Point(121, 88);
            this.PasswordTextBox.Name = "PasswordTextBox";
            this.PasswordTextBox.Size = new System.Drawing.Size(261, 23);
            this.PasswordTextBox.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(29, 91);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(39, 15);
            this.label1.TabIndex = 12;
            this.label1.Text = "Senha";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.GalleryImageGridView);
            this.groupBox1.Location = new System.Drawing.Point(395, 30);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(393, 341);
            this.groupBox1.TabIndex = 14;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Galeria de Imagens";
            // 
            // GalleryImageGridView
            // 
            this.GalleryImageGridView.AllowUserToAddRows = false;
            this.GalleryImageGridView.AllowUserToDeleteRows = false;
            this.GalleryImageGridView.BackgroundColor = System.Drawing.Color.White;
            this.GalleryImageGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GalleryImageGridView.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GalleryImageGridView.Location = new System.Drawing.Point(3, 19);
            this.GalleryImageGridView.Name = "GalleryImageGridView";
            this.GalleryImageGridView.ReadOnly = true;
            this.GalleryImageGridView.RowTemplate.Height = 25;
            this.GalleryImageGridView.Size = new System.Drawing.Size(387, 319);
            this.GalleryImageGridView.TabIndex = 0;
            // 
            // addImageBtn
            // 
            this.addImageBtn.Location = new System.Drawing.Point(395, 388);
            this.addImageBtn.Name = "addImageBtn";
            this.addImageBtn.Size = new System.Drawing.Size(142, 34);
            this.addImageBtn.TabIndex = 13;
            this.addImageBtn.Text = "Adicioanr Imagem...";
            this.addImageBtn.UseVisualStyleBackColor = true;
            this.addImageBtn.Click += new System.EventHandler(this.addImageBtn_Click);
            // 
            // RegisterBtn
            // 
            this.RegisterBtn.Location = new System.Drawing.Point(710, 399);
            this.RegisterBtn.Name = "RegisterBtn";
            this.RegisterBtn.Size = new System.Drawing.Size(75, 23);
            this.RegisterBtn.TabIndex = 16;
            this.RegisterBtn.Text = "Cadastrar";
            this.RegisterBtn.UseVisualStyleBackColor = true;
            this.RegisterBtn.Click += new System.EventHandler(this.RegisterBtn_Click);
            // 
            // CadastrarUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.RegisterBtn);
            this.Controls.Add(this.addImageBtn);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.PasswordTextBox);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.LoginTextBox);
            this.Controls.Add(this.NameTextBox);
            this.Controls.Add(this.LoginNameLbl);
            this.Controls.Add(this.NameLbl);
            this.Name = "CadastrarUsuario";
            this.Text = "CadastrarUsuario";
            this.Load += new System.EventHandler(this.CadastrarUsuario_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GalleryImageGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox LoginTextBox;
        private TextBox NameTextBox;
        private Label LoginNameLbl;
        private Label NameLbl;
        private TextBox PasswordTextBox;
        private Label label1;
        private GroupBox groupBox1;
        private Button addImageBtn;
        private DataGridView GalleryImageGridView;
        private Button RegisterBtn;
    }
}