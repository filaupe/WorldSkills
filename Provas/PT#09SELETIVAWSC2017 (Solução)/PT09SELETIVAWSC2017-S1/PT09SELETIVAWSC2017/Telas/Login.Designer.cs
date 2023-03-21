namespace PT09SELETIVAWSC2017.Telas
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
            this.buttonLogin = new System.Windows.Forms.Button();
            this.textBoxlogin = new System.Windows.Forms.TextBox();
            this.textBoxsenha = new System.Windows.Forms.TextBox();
            this.textBoxregiao = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.label3 = new System.Windows.Forms.Label();
            this.labelConexao = new System.Windows.Forms.Label();
            this.Pointer = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panelAS = new System.Windows.Forms.Panel();
            this.panelEU = new System.Windows.Forms.Panel();
            this.panelAF = new System.Windows.Forms.Panel();
            this.panelNA = new System.Windows.Forms.Panel();
            this.panelOC = new System.Windows.Forms.Panel();
            this.panelSA = new System.Windows.Forms.Panel();
            this.panelAN = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.Pointer)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // buttonLogin
            // 
            this.buttonLogin.Location = new System.Drawing.Point(304, 160);
            this.buttonLogin.Name = "buttonLogin";
            this.buttonLogin.Size = new System.Drawing.Size(95, 92);
            this.buttonLogin.TabIndex = 0;
            this.buttonLogin.Text = "Entrar";
            this.buttonLogin.UseVisualStyleBackColor = true;
            this.buttonLogin.Click += new System.EventHandler(this.buttonLogin_Click);
            // 
            // textBoxlogin
            // 
            this.textBoxlogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxlogin.Location = new System.Drawing.Point(68, 160);
            this.textBoxlogin.Name = "textBoxlogin";
            this.textBoxlogin.Size = new System.Drawing.Size(222, 31);
            this.textBoxlogin.TabIndex = 1;
            // 
            // textBoxsenha
            // 
            this.textBoxsenha.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxsenha.Location = new System.Drawing.Point(68, 221);
            this.textBoxsenha.Name = "textBoxsenha";
            this.textBoxsenha.Size = new System.Drawing.Size(222, 31);
            this.textBoxsenha.TabIndex = 2;
            this.textBoxsenha.UseSystemPasswordChar = true;
            // 
            // textBoxregiao
            // 
            this.textBoxregiao.BackColor = System.Drawing.Color.Gray;
            this.textBoxregiao.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxregiao.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxregiao.Location = new System.Drawing.Point(68, 276);
            this.textBoxregiao.Name = "textBoxregiao";
            this.textBoxregiao.ReadOnly = true;
            this.textBoxregiao.Size = new System.Drawing.Size(222, 31);
            this.textBoxregiao.TabIndex = 3;
            this.textBoxregiao.Text = "Selecione uma região";
            this.textBoxregiao.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(65, 141);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 16);
            this.label1.TabIndex = 6;
            this.label1.Text = "Turista";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(65, 202);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 16);
            this.label2.TabIndex = 7;
            this.label2.Text = "Senha";
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.linkLabel1.Location = new System.Drawing.Point(115, 352);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(123, 25);
            this.linkLabel1.TabIndex = 8;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "Inscreva-se";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Navy;
            this.label3.Location = new System.Drawing.Point(12, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(86, 16);
            this.label3.TabIndex = 9;
            this.label3.Text = "Conectado:";
            // 
            // labelConexao
            // 
            this.labelConexao.AutoSize = true;
            this.labelConexao.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelConexao.ForeColor = System.Drawing.Color.Navy;
            this.labelConexao.Location = new System.Drawing.Point(104, 9);
            this.labelConexao.Name = "labelConexao";
            this.labelConexao.Size = new System.Drawing.Size(0, 16);
            this.labelConexao.TabIndex = 10;
            // 
            // Pointer
            // 
            this.Pointer.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Pointer.Image = global::PT09SELETIVAWSC2017.Properties.Resources.iconeLocalizacao;
            this.Pointer.Location = new System.Drawing.Point(321, 51);
            this.Pointer.Name = "Pointer";
            this.Pointer.Size = new System.Drawing.Size(63, 62);
            this.Pointer.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.Pointer.TabIndex = 5;
            this.Pointer.TabStop = false;
            this.Pointer.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Pointer_MouseDown);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BackgroundImage = global::PT09SELETIVAWSC2017.Properties.Resources.mapa;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Controls.Add(this.panelAS);
            this.panel1.Controls.Add(this.panelEU);
            this.panel1.Controls.Add(this.panelAF);
            this.panel1.Controls.Add(this.panelNA);
            this.panel1.Controls.Add(this.panelOC);
            this.panel1.Controls.Add(this.panelSA);
            this.panel1.Controls.Add(this.panelAN);
            this.panel1.Location = new System.Drawing.Point(413, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(457, 426);
            this.panel1.TabIndex = 4;
            // 
            // panelAS
            // 
            this.panelAS.Location = new System.Drawing.Point(251, 39);
            this.panelAS.Name = "panelAS";
            this.panelAS.Size = new System.Drawing.Size(203, 200);
            this.panelAS.TabIndex = 6;
            this.panelAS.Tag = "Ásia";
            // 
            // panelEU
            // 
            this.panelEU.Location = new System.Drawing.Point(170, 69);
            this.panelEU.Name = "panelEU";
            this.panelEU.Size = new System.Drawing.Size(122, 119);
            this.panelEU.TabIndex = 5;
            this.panelEU.Tag = "Europa";
            // 
            // panelAF
            // 
            this.panelAF.Location = new System.Drawing.Point(168, 181);
            this.panelAF.Name = "panelAF";
            this.panelAF.Size = new System.Drawing.Size(106, 153);
            this.panelAF.TabIndex = 4;
            this.panelAF.Tag = "África";
            // 
            // panelNA
            // 
            this.panelNA.Location = new System.Drawing.Point(4, 3);
            this.panelNA.Name = "panelNA";
            this.panelNA.Size = new System.Drawing.Size(165, 236);
            this.panelNA.TabIndex = 3;
            this.panelNA.Tag = "America do Norte";
            // 
            // panelOC
            // 
            this.panelOC.Location = new System.Drawing.Point(356, 282);
            this.panelOC.Name = "panelOC";
            this.panelOC.Size = new System.Drawing.Size(93, 83);
            this.panelOC.TabIndex = 2;
            this.panelOC.Tag = "Oceania";
            // 
            // panelSA
            // 
            this.panelSA.Location = new System.Drawing.Point(58, 243);
            this.panelSA.Name = "panelSA";
            this.panelSA.Size = new System.Drawing.Size(72, 136);
            this.panelSA.TabIndex = 1;
            this.panelSA.Tag = "America do Sul";
            // 
            // panelAN
            // 
            this.panelAN.Location = new System.Drawing.Point(58, 380);
            this.panelAN.Name = "panelAN";
            this.panelAN.Size = new System.Drawing.Size(334, 46);
            this.panelAN.TabIndex = 0;
            this.panelAN.Tag = "Antártida";
            // 
            // Login
            // 
            this.AllowDrop = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(882, 450);
            this.Controls.Add(this.labelConexao);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.linkLabel1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Pointer);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.textBoxregiao);
            this.Controls.Add(this.textBoxsenha);
            this.Controls.Add(this.textBoxlogin);
            this.Controls.Add(this.buttonLogin);
            this.Name = "Login";
            this.Text = "Login";
            this.DragDrop += new System.Windows.Forms.DragEventHandler(this.Login_DragDrop);
            this.DragEnter += new System.Windows.Forms.DragEventHandler(this.Login_DragEnter);
            ((System.ComponentModel.ISupportInitialize)(this.Pointer)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonLogin;
        private System.Windows.Forms.TextBox textBoxlogin;
        private System.Windows.Forms.TextBox textBoxsenha;
        private System.Windows.Forms.TextBox textBoxregiao;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panelAS;
        private System.Windows.Forms.Panel panelEU;
        private System.Windows.Forms.Panel panelAF;
        private System.Windows.Forms.Panel panelNA;
        private System.Windows.Forms.Panel panelOC;
        private System.Windows.Forms.Panel panelSA;
        private System.Windows.Forms.Panel panelAN;
        private System.Windows.Forms.PictureBox Pointer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label labelConexao;
    }
}