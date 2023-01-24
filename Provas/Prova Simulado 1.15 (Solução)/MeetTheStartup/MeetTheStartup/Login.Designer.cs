namespace MeetTheStartup
{
    partial class Login
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.loginLbl = new System.Windows.Forms.Label();
            this.senhaLbl = new System.Windows.Forms.Label();
            this.empressRegister = new System.Windows.Forms.LinkLabel();
            this.userRegister = new System.Windows.Forms.LinkLabel();
            this.loginTextBox = new System.Windows.Forms.TextBox();
            this.empressNameTextBox = new System.Windows.Forms.TextBox();
            this.empressCheck = new System.Windows.Forms.CheckBox();
            this.empressNameLbl = new System.Windows.Forms.Label();
            this.passwordTextBox = new System.Windows.Forms.TextBox();
            this.cancelBtn = new System.Windows.Forms.Button();
            this.loginBtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // loginLbl
            // 
            this.loginLbl.AutoSize = true;
            this.loginLbl.Location = new System.Drawing.Point(44, 36);
            this.loginLbl.Name = "loginLbl";
            this.loginLbl.Size = new System.Drawing.Size(37, 15);
            this.loginLbl.TabIndex = 0;
            this.loginLbl.Text = "Login";
            // 
            // senhaLbl
            // 
            this.senhaLbl.AutoSize = true;
            this.senhaLbl.Location = new System.Drawing.Point(44, 68);
            this.senhaLbl.Name = "senhaLbl";
            this.senhaLbl.Size = new System.Drawing.Size(39, 15);
            this.senhaLbl.TabIndex = 1;
            this.senhaLbl.Text = "Senha";
            // 
            // empressRegister
            // 
            this.empressRegister.AutoSize = true;
            this.empressRegister.Location = new System.Drawing.Point(44, 179);
            this.empressRegister.Name = "empressRegister";
            this.empressRegister.Size = new System.Drawing.Size(105, 15);
            this.empressRegister.TabIndex = 2;
            this.empressRegister.TabStop = true;
            this.empressRegister.Text = "Cadastrar Empresa";
            this.empressRegister.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.empressRegister_LinkClicked);
            // 
            // userRegister
            // 
            this.userRegister.AutoSize = true;
            this.userRegister.Location = new System.Drawing.Point(44, 205);
            this.userRegister.Name = "userRegister";
            this.userRegister.Size = new System.Drawing.Size(100, 15);
            this.userRegister.TabIndex = 3;
            this.userRegister.TabStop = true;
            this.userRegister.Text = "Cadastrar Usuário";
            this.userRegister.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.userRegister_LinkClicked);
            // 
            // loginTextBox
            // 
            this.loginTextBox.Location = new System.Drawing.Point(147, 33);
            this.loginTextBox.Name = "loginTextBox";
            this.loginTextBox.Size = new System.Drawing.Size(182, 23);
            this.loginTextBox.TabIndex = 4;
            // 
            // empressNameTextBox
            // 
            this.empressNameTextBox.Location = new System.Drawing.Point(147, 95);
            this.empressNameTextBox.Name = "empressNameTextBox";
            this.empressNameTextBox.Size = new System.Drawing.Size(182, 23);
            this.empressNameTextBox.TabIndex = 5;
            this.empressNameTextBox.Visible = false;
            // 
            // empressCheck
            // 
            this.empressCheck.AutoSize = true;
            this.empressCheck.Location = new System.Drawing.Point(198, 201);
            this.empressCheck.Name = "empressCheck";
            this.empressCheck.Size = new System.Drawing.Size(143, 19);
            this.empressCheck.TabIndex = 6;
            this.empressCheck.Text = "Logar como empresa?";
            this.empressCheck.UseVisualStyleBackColor = true;
            this.empressCheck.CheckStateChanged += new System.EventHandler(this.empressCheck_CheckStateChanged);
            // 
            // empressNameLbl
            // 
            this.empressNameLbl.AutoSize = true;
            this.empressNameLbl.Location = new System.Drawing.Point(44, 98);
            this.empressNameLbl.Name = "empressNameLbl";
            this.empressNameLbl.Size = new System.Drawing.Size(86, 15);
            this.empressNameLbl.TabIndex = 7;
            this.empressNameLbl.Text = "Nome Fantasia";
            this.empressNameLbl.Visible = false;
            // 
            // passwordTextBox
            // 
            this.passwordTextBox.Location = new System.Drawing.Point(147, 65);
            this.passwordTextBox.Name = "passwordTextBox";
            this.passwordTextBox.Size = new System.Drawing.Size(182, 23);
            this.passwordTextBox.TabIndex = 8;
            // 
            // cancelBtn
            // 
            this.cancelBtn.Location = new System.Drawing.Point(44, 141);
            this.cancelBtn.Name = "cancelBtn";
            this.cancelBtn.Size = new System.Drawing.Size(86, 23);
            this.cancelBtn.TabIndex = 9;
            this.cancelBtn.Text = "Cancelar";
            this.cancelBtn.UseVisualStyleBackColor = true;
            this.cancelBtn.Click += new System.EventHandler(this.cancelBtn_Click);
            // 
            // loginBtn
            // 
            this.loginBtn.Location = new System.Drawing.Point(254, 141);
            this.loginBtn.Name = "loginBtn";
            this.loginBtn.Size = new System.Drawing.Size(75, 23);
            this.loginBtn.TabIndex = 10;
            this.loginBtn.Text = "Login";
            this.loginBtn.UseVisualStyleBackColor = true;
            this.loginBtn.Click += new System.EventHandler(this.loginBtn_Click);
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(365, 250);
            this.Controls.Add(this.loginBtn);
            this.Controls.Add(this.cancelBtn);
            this.Controls.Add(this.passwordTextBox);
            this.Controls.Add(this.empressNameLbl);
            this.Controls.Add(this.empressCheck);
            this.Controls.Add(this.empressNameTextBox);
            this.Controls.Add(this.loginTextBox);
            this.Controls.Add(this.userRegister);
            this.Controls.Add(this.empressRegister);
            this.Controls.Add(this.senhaLbl);
            this.Controls.Add(this.loginLbl);
            this.Name = "Login";
            this.Text = "Login";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label loginLbl;
        private Label senhaLbl;
        private LinkLabel empressRegister;
        private LinkLabel userRegister;
        private TextBox loginTextBox;
        private TextBox empressNameTextBox;
        private CheckBox empressCheck;
        private Label empressNameLbl;
        private TextBox passwordTextBox;
        private Button cancelBtn;
        private Button loginBtn;
    }
}