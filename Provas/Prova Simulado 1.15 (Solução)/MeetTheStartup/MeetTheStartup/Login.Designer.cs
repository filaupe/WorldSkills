namespace MeetTheStartup
{
    partial class Login
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
            this.cancelBtn = new System.Windows.Forms.Button();
            this.loginBtn = new System.Windows.Forms.Button();
            this.loginLbl = new System.Windows.Forms.Label();
            this.passwordLbl = new System.Windows.Forms.Label();
            this.registerEmpressLinkLabel = new System.Windows.Forms.LinkLabel();
            this.registerUserLinkLabel = new System.Windows.Forms.LinkLabel();
            this.loginTextBox = new System.Windows.Forms.TextBox();
            this.passwordTextBox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // cancelBtn
            // 
            this.cancelBtn.Location = new System.Drawing.Point(47, 120);
            this.cancelBtn.Name = "cancelBtn";
            this.cancelBtn.Size = new System.Drawing.Size(75, 23);
            this.cancelBtn.TabIndex = 0;
            this.cancelBtn.Text = "Cancelar";
            this.cancelBtn.UseVisualStyleBackColor = true;
            this.cancelBtn.Click += new System.EventHandler(this.cancelBtn_Click);
            // 
            // loginBtn
            // 
            this.loginBtn.Location = new System.Drawing.Point(208, 120);
            this.loginBtn.Name = "loginBtn";
            this.loginBtn.Size = new System.Drawing.Size(75, 23);
            this.loginBtn.TabIndex = 1;
            this.loginBtn.Text = "Login";
            this.loginBtn.UseVisualStyleBackColor = true;
            this.loginBtn.Click += new System.EventHandler(this.loginBtn_Click);
            // 
            // loginLbl
            // 
            this.loginLbl.AutoSize = true;
            this.loginLbl.Location = new System.Drawing.Point(47, 40);
            this.loginLbl.Name = "loginLbl";
            this.loginLbl.Size = new System.Drawing.Size(37, 15);
            this.loginLbl.TabIndex = 2;
            this.loginLbl.Text = "Login";
            // 
            // passwordLbl
            // 
            this.passwordLbl.AutoSize = true;
            this.passwordLbl.Location = new System.Drawing.Point(48, 80);
            this.passwordLbl.Name = "passwordLbl";
            this.passwordLbl.Size = new System.Drawing.Size(39, 15);
            this.passwordLbl.TabIndex = 3;
            this.passwordLbl.Text = "Senha";
            // 
            // registerEmpressLinkLabel
            // 
            this.registerEmpressLinkLabel.AutoSize = true;
            this.registerEmpressLinkLabel.Location = new System.Drawing.Point(43, 156);
            this.registerEmpressLinkLabel.Name = "registerEmpressLinkLabel";
            this.registerEmpressLinkLabel.Size = new System.Drawing.Size(105, 15);
            this.registerEmpressLinkLabel.TabIndex = 4;
            this.registerEmpressLinkLabel.TabStop = true;
            this.registerEmpressLinkLabel.Text = "Cadastrar Empresa";
            this.registerEmpressLinkLabel.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.registerEmpressLinkLabel_LinkClicked);
            // 
            // registerUserLinkLabel
            // 
            this.registerUserLinkLabel.AutoSize = true;
            this.registerUserLinkLabel.Location = new System.Drawing.Point(43, 183);
            this.registerUserLinkLabel.Name = "registerUserLinkLabel";
            this.registerUserLinkLabel.Size = new System.Drawing.Size(100, 15);
            this.registerUserLinkLabel.TabIndex = 5;
            this.registerUserLinkLabel.TabStop = true;
            this.registerUserLinkLabel.Text = "Cadastrar Usuário";
            this.registerUserLinkLabel.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.registerUserLinkLabel_LinkClicked);
            // 
            // loginTextBox
            // 
            this.loginTextBox.Location = new System.Drawing.Point(147, 37);
            this.loginTextBox.Name = "loginTextBox";
            this.loginTextBox.Size = new System.Drawing.Size(136, 23);
            this.loginTextBox.TabIndex = 6;
            // 
            // passwordTextBox
            // 
            this.passwordTextBox.Location = new System.Drawing.Point(147, 77);
            this.passwordTextBox.Name = "passwordTextBox";
            this.passwordTextBox.Size = new System.Drawing.Size(136, 23);
            this.passwordTextBox.TabIndex = 7;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(332, 219);
            this.Controls.Add(this.passwordTextBox);
            this.Controls.Add(this.loginTextBox);
            this.Controls.Add(this.registerUserLinkLabel);
            this.Controls.Add(this.registerEmpressLinkLabel);
            this.Controls.Add(this.passwordLbl);
            this.Controls.Add(this.loginLbl);
            this.Controls.Add(this.loginBtn);
            this.Controls.Add(this.cancelBtn);
            this.Name = "Login";
            this.Text = "Login";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Button cancelBtn;
        private Button loginBtn;
        private Label loginLbl;
        private Label passwordLbl;
        private LinkLabel registerEmpressLinkLabel;
        private LinkLabel registerUserLinkLabel;
        private TextBox loginTextBox;
        private TextBox passwordTextBox;
    }
}