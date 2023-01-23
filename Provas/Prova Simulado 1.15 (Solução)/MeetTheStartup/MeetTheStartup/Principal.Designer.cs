namespace MeetTheStartup
{
    partial class Principal
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.searchEmpressTool = new System.Windows.Forms.ToolStripMenuItem();
            this.searchUserTool = new System.Windows.Forms.ToolStripMenuItem();
            this.profileTool = new System.Windows.Forms.ToolStripMenuItem();
            this.exitTool = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.searchEmpressTool,
            this.searchUserTool,
            this.profileTool,
            this.exitTool});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // searchEmpressTool
            // 
            this.searchEmpressTool.Name = "searchEmpressTool";
            this.searchEmpressTool.Size = new System.Drawing.Size(117, 20);
            this.searchEmpressTool.Text = "Pesquisar Empresa";
            this.searchEmpressTool.Click += new System.EventHandler(this.searchEmpressTool_Click);
            // 
            // searchUserTool
            // 
            this.searchUserTool.Name = "searchUserTool";
            this.searchUserTool.Size = new System.Drawing.Size(112, 20);
            this.searchUserTool.Text = "Pesquisar Usuário";
            this.searchUserTool.Click += new System.EventHandler(this.searchUserTool_Click);
            // 
            // profileTool
            // 
            this.profileTool.Name = "profileTool";
            this.profileTool.Size = new System.Drawing.Size(73, 20);
            this.profileTool.Text = "Meu Perfil";
            this.profileTool.Click += new System.EventHandler(this.profileTool_Click);
            // 
            // exitTool
            // 
            this.exitTool.Name = "exitTool";
            this.exitTool.Size = new System.Drawing.Size(38, 20);
            this.exitTool.Text = "Sair";
            this.exitTool.Click += new System.EventHandler(this.exitTool_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Principal";
            this.Text = "Principal";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MenuStrip menuStrip1;
        private ToolStripMenuItem searchEmpressTool;
        private ToolStripMenuItem searchUserTool;
        private ToolStripMenuItem profileTool;
        private ToolStripMenuItem exitTool;
    }
}