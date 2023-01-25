namespace MeetTheStartup.Forms
{
    partial class RegisterUser
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
            this.registerBtn = new System.Windows.Forms.Button();
            this.addImage = new System.Windows.Forms.Button();
            this.galleryGroupBox = new System.Windows.Forms.GroupBox();
            this.galleryPanel = new System.Windows.Forms.Panel();
            this.tableLayoutGalleryPanel = new System.Windows.Forms.TableLayoutPanel();
            this.label6 = new System.Windows.Forms.Label();
            this.textBoxPassword = new System.Windows.Forms.TextBox();
            this.textBoxLogin = new System.Windows.Forms.TextBox();
            this.textBoxName = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.galleryGroupBox.SuspendLayout();
            this.galleryPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // registerBtn
            // 
            this.registerBtn.Location = new System.Drawing.Point(634, 375);
            this.registerBtn.Name = "registerBtn";
            this.registerBtn.Size = new System.Drawing.Size(94, 28);
            this.registerBtn.TabIndex = 18;
            this.registerBtn.Text = "Cadastrar";
            this.registerBtn.UseVisualStyleBackColor = true;
            this.registerBtn.Click += new System.EventHandler(this.registerBtn_Click);
            // 
            // addImage
            // 
            this.addImage.Location = new System.Drawing.Point(380, 375);
            this.addImage.Name = "addImage";
            this.addImage.Size = new System.Drawing.Size(185, 28);
            this.addImage.TabIndex = 17;
            this.addImage.Text = "Adicione imagem...";
            this.addImage.UseVisualStyleBackColor = true;
            this.addImage.Click += new System.EventHandler(this.addImage_Click_1);
            // 
            // galleryGroupBox
            // 
            this.galleryGroupBox.Controls.Add(this.galleryPanel);
            this.galleryGroupBox.Location = new System.Drawing.Point(380, 12);
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
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(50, 90);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(39, 15);
            this.label6.TabIndex = 24;
            this.label6.Text = "Senha";
            // 
            // textBoxPassword
            // 
            this.textBoxPassword.Location = new System.Drawing.Point(152, 87);
            this.textBoxPassword.Name = "textBoxPassword";
            this.textBoxPassword.Size = new System.Drawing.Size(213, 23);
            this.textBoxPassword.TabIndex = 23;
            // 
            // textBoxLogin
            // 
            this.textBoxLogin.Location = new System.Drawing.Point(152, 58);
            this.textBoxLogin.Name = "textBoxLogin";
            this.textBoxLogin.Size = new System.Drawing.Size(213, 23);
            this.textBoxLogin.TabIndex = 22;
            // 
            // textBoxName
            // 
            this.textBoxName.Location = new System.Drawing.Point(152, 28);
            this.textBoxName.Name = "textBoxName";
            this.textBoxName.Size = new System.Drawing.Size(213, 23);
            this.textBoxName.TabIndex = 21;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(50, 61);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 15);
            this.label2.TabIndex = 20;
            this.label2.Text = "Login";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(52, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 15);
            this.label1.TabIndex = 19;
            this.label1.Text = "Nome";
            // 
            // RegisterUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(740, 423);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textBoxPassword);
            this.Controls.Add(this.textBoxLogin);
            this.Controls.Add(this.textBoxName);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.registerBtn);
            this.Controls.Add(this.addImage);
            this.Controls.Add(this.galleryGroupBox);
            this.Name = "RegisterUser";
            this.Text = "RegisterUser";
            this.Load += new System.EventHandler(this.RegisterUser_Load);
            this.galleryGroupBox.ResumeLayout(false);
            this.galleryPanel.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Button registerBtn;
        private Button addImage;
        private GroupBox galleryGroupBox;
        private Panel galleryPanel;
        private TableLayoutPanel tableLayoutGalleryPanel;
        private Label label6;
        private TextBox textBoxPassword;
        private TextBox textBoxLogin;
        private TextBox textBoxName;
        private Label label2;
        private Label label1;
    }
}