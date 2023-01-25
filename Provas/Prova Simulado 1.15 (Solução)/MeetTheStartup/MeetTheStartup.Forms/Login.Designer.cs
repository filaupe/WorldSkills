namespace MeetTheStartup.Forms
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
            this.loginTxtBox = new System.Windows.Forms.TextBox();
            this.passwordTxtBox = new System.Windows.Forms.TextBox();
            this.loginLbl = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.fantasyNameLbl = new System.Windows.Forms.Label();
            this.fantasyNameTxtBox = new System.Windows.Forms.TextBox();
            this.registerEmpressLinkLbl = new System.Windows.Forms.LinkLabel();
            this.registerUserLinkLbl = new System.Windows.Forms.LinkLabel();
            this.loginEmpressCheckBox = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // cancelBtn
            // 
            this.cancelBtn.Location = new System.Drawing.Point(44, 147);
            this.cancelBtn.Name = "cancelBtn";
            this.cancelBtn.Size = new System.Drawing.Size(75, 23);
            this.cancelBtn.TabIndex = 0;
            this.cancelBtn.Text = "Cancelar";
            this.cancelBtn.UseVisualStyleBackColor = true;
            this.cancelBtn.Click += new System.EventHandler(this.cancelBtn_Click);
            // 
            // loginBtn
            // 
            this.loginBtn.Location = new System.Drawing.Point(267, 147);
            this.loginBtn.Name = "loginBtn";
            this.loginBtn.Size = new System.Drawing.Size(75, 23);
            this.loginBtn.TabIndex = 1;
            this.loginBtn.Text = "Login";
            this.loginBtn.UseVisualStyleBackColor = true;
            this.loginBtn.Click += new System.EventHandler(this.loginBtn_Click);
            // 
            // loginTxtBox
            // 
            this.loginTxtBox.Location = new System.Drawing.Point(146, 33);
            this.loginTxtBox.Name = "loginTxtBox";
            this.loginTxtBox.Size = new System.Drawing.Size(196, 23);
            this.loginTxtBox.TabIndex = 2;
            // 
            // passwordTxtBox
            // 
            this.passwordTxtBox.Location = new System.Drawing.Point(146, 67);
            this.passwordTxtBox.Name = "passwordTxtBox";
            this.passwordTxtBox.Size = new System.Drawing.Size(196, 23);
            this.passwordTxtBox.TabIndex = 3;
            // 
            // loginLbl
            // 
            this.loginLbl.AutoSize = true;
            this.loginLbl.Location = new System.Drawing.Point(44, 36);
            this.loginLbl.Name = "loginLbl";
            this.loginLbl.Size = new System.Drawing.Size(37, 15);
            this.loginLbl.TabIndex = 4;
            this.loginLbl.Text = "Login";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(44, 70);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(39, 15);
            this.label2.TabIndex = 5;
            this.label2.Text = "Senha";
            // 
            // fantasyNameLbl
            // 
            this.fantasyNameLbl.AutoSize = true;
            this.fantasyNameLbl.Location = new System.Drawing.Point(44, 103);
            this.fantasyNameLbl.Name = "fantasyNameLbl";
            this.fantasyNameLbl.Size = new System.Drawing.Size(86, 15);
            this.fantasyNameLbl.TabIndex = 6;
            this.fantasyNameLbl.Text = "Nome Fantasia";
            // 
            // fantasyNameTxtBox
            // 
            this.fantasyNameTxtBox.Location = new System.Drawing.Point(146, 100);
            this.fantasyNameTxtBox.Name = "fantasyNameTxtBox";
            this.fantasyNameTxtBox.Size = new System.Drawing.Size(196, 23);
            this.fantasyNameTxtBox.TabIndex = 7;
            // 
            // registerEmpressLinkLbl
            // 
            this.registerEmpressLinkLbl.AutoSize = true;
            this.registerEmpressLinkLbl.Location = new System.Drawing.Point(44, 202);
            this.registerEmpressLinkLbl.Name = "registerEmpressLinkLbl";
            this.registerEmpressLinkLbl.Size = new System.Drawing.Size(105, 15);
            this.registerEmpressLinkLbl.TabIndex = 8;
            this.registerEmpressLinkLbl.TabStop = true;
            this.registerEmpressLinkLbl.Text = "Cadastrar Empresa";
            this.registerEmpressLinkLbl.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.registerEmpressLinkLbl_LinkClicked);
            // 
            // registerUserLinkLbl
            // 
            this.registerUserLinkLbl.AutoSize = true;
            this.registerUserLinkLbl.Location = new System.Drawing.Point(44, 236);
            this.registerUserLinkLbl.Name = "registerUserLinkLbl";
            this.registerUserLinkLbl.Size = new System.Drawing.Size(100, 15);
            this.registerUserLinkLbl.TabIndex = 9;
            this.registerUserLinkLbl.TabStop = true;
            this.registerUserLinkLbl.Text = "Cadastrar Usuário";
            this.registerUserLinkLbl.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.registerUserLinkLbl_LinkClicked);
            // 
            // loginEmpressCheckBox
            // 
            this.loginEmpressCheckBox.AutoSize = true;
            this.loginEmpressCheckBox.Location = new System.Drawing.Point(199, 236);
            this.loginEmpressCheckBox.Name = "loginEmpressCheckBox";
            this.loginEmpressCheckBox.Size = new System.Drawing.Size(143, 19);
            this.loginEmpressCheckBox.TabIndex = 10;
            this.loginEmpressCheckBox.Text = "Logar como empresa?";
            this.loginEmpressCheckBox.UseVisualStyleBackColor = true;
            this.loginEmpressCheckBox.CheckStateChanged += new System.EventHandler(this.loginEmpressCheckBox_CheckStateChanged);
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(374, 285);
            this.Controls.Add(this.loginEmpressCheckBox);
            this.Controls.Add(this.registerUserLinkLbl);
            this.Controls.Add(this.registerEmpressLinkLbl);
            this.Controls.Add(this.fantasyNameTxtBox);
            this.Controls.Add(this.fantasyNameLbl);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.loginLbl);
            this.Controls.Add(this.passwordTxtBox);
            this.Controls.Add(this.loginTxtBox);
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
        private TextBox loginTxtBox;
        private TextBox passwordTxtBox;
        private Label loginLbl;
        private Label label2;
        private Label fantasyNameLbl;
        private TextBox fantasyNameTxtBox;
        private LinkLabel registerEmpressLinkLbl;
        private LinkLabel registerUserLinkLbl;
        private CheckBox loginEmpressCheckBox;
    }
}