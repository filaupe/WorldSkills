namespace MeetTheStartup
{
    partial class CadastroUsuario
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
            this.nameTextBox = new System.Windows.Forms.TextBox();
            this.loginTextBox = new System.Windows.Forms.TextBox();
            this.passwordTextBox = new System.Windows.Forms.TextBox();
            this.nameLbl = new System.Windows.Forms.Label();
            this.loginLbl = new System.Windows.Forms.Label();
            this.passwordLbl = new System.Windows.Forms.Label();
            this.registerBtn = new System.Windows.Forms.Button();
            this.ImageGalleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutImagePanel = new System.Windows.Forms.TableLayoutPanel();
            this.addImageBtn = new System.Windows.Forms.Button();
            this.ImageGalleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // nameTextBox
            // 
            this.nameTextBox.Location = new System.Drawing.Point(145, 40);
            this.nameTextBox.Name = "nameTextBox";
            this.nameTextBox.Size = new System.Drawing.Size(210, 23);
            this.nameTextBox.TabIndex = 35;
            // 
            // loginTextBox
            // 
            this.loginTextBox.Location = new System.Drawing.Point(145, 71);
            this.loginTextBox.Name = "loginTextBox";
            this.loginTextBox.Size = new System.Drawing.Size(210, 23);
            this.loginTextBox.TabIndex = 34;
            // 
            // passwordTextBox
            // 
            this.passwordTextBox.Location = new System.Drawing.Point(145, 105);
            this.passwordTextBox.Name = "passwordTextBox";
            this.passwordTextBox.Size = new System.Drawing.Size(210, 23);
            this.passwordTextBox.TabIndex = 33;
            // 
            // nameLbl
            // 
            this.nameLbl.AutoSize = true;
            this.nameLbl.Location = new System.Drawing.Point(42, 43);
            this.nameLbl.Name = "nameLbl";
            this.nameLbl.Size = new System.Drawing.Size(40, 15);
            this.nameLbl.TabIndex = 32;
            this.nameLbl.Text = "Nome";
            // 
            // loginLbl
            // 
            this.loginLbl.AutoSize = true;
            this.loginLbl.Location = new System.Drawing.Point(40, 74);
            this.loginLbl.Name = "loginLbl";
            this.loginLbl.Size = new System.Drawing.Size(37, 15);
            this.loginLbl.TabIndex = 31;
            this.loginLbl.Text = "Login";
            // 
            // passwordLbl
            // 
            this.passwordLbl.AutoSize = true;
            this.passwordLbl.Location = new System.Drawing.Point(40, 108);
            this.passwordLbl.Name = "passwordLbl";
            this.passwordLbl.Size = new System.Drawing.Size(39, 15);
            this.passwordLbl.TabIndex = 30;
            this.passwordLbl.Text = "Senha";
            // 
            // registerBtn
            // 
            this.registerBtn.Location = new System.Drawing.Point(640, 397);
            this.registerBtn.Name = "registerBtn";
            this.registerBtn.Size = new System.Drawing.Size(117, 33);
            this.registerBtn.TabIndex = 20;
            this.registerBtn.Text = "Cadastrar";
            this.registerBtn.UseVisualStyleBackColor = true;
            this.registerBtn.Click += new System.EventHandler(this.registerBtn_Click);
            // 
            // ImageGalleryGroupBox
            // 
            this.ImageGalleryGroupBox.Controls.Add(this.galleryPanel);
            this.ImageGalleryGroupBox.Location = new System.Drawing.Point(382, 21);
            this.ImageGalleryGroupBox.Name = "ImageGalleryGroupBox";
            this.ImageGalleryGroupBox.Size = new System.Drawing.Size(378, 370);
            this.ImageGalleryGroupBox.TabIndex = 19;
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
            // addImageBtn
            // 
            this.addImageBtn.Location = new System.Drawing.Point(382, 397);
            this.addImageBtn.Name = "addImageBtn";
            this.addImageBtn.Size = new System.Drawing.Size(188, 33);
            this.addImageBtn.TabIndex = 18;
            this.addImageBtn.Text = "Adicionar Imagem...";
            this.addImageBtn.UseVisualStyleBackColor = true;
            this.addImageBtn.Click += new System.EventHandler(this.addImageBtn_Click);
            // 
            // CadastroUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.nameTextBox);
            this.Controls.Add(this.loginTextBox);
            this.Controls.Add(this.passwordTextBox);
            this.Controls.Add(this.nameLbl);
            this.Controls.Add(this.loginLbl);
            this.Controls.Add(this.passwordLbl);
            this.Controls.Add(this.registerBtn);
            this.Controls.Add(this.ImageGalleryGroupBox);
            this.Controls.Add(this.addImageBtn);
            this.Name = "CadastroUsuario";
            this.Text = "Usuario";
            this.Load += new System.EventHandler(this.CadastroUsuario_Load);
            this.ImageGalleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox nameTextBox;
        private TextBox loginTextBox;
        private TextBox passwordTextBox;
        private Label nameLbl;
        private Label loginLbl;
        private Label passwordLbl;
        private Button registerBtn;
        private GroupBox ImageGalleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutImagePanel;
        private Button addImageBtn;
    }
}