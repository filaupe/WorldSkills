namespace MeetTheStartup.Forms
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
            this.pesquisarEmpresaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pesquisarUsuárioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.meuPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sairToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.pesquisarEmpresaToolStripMenuItem,
            this.pesquisarUsuárioToolStripMenuItem,
            this.meuPerfilToolStripMenuItem,
            this.sairToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // pesquisarEmpresaToolStripMenuItem
            // 
            this.pesquisarEmpresaToolStripMenuItem.Name = "pesquisarEmpresaToolStripMenuItem";
            this.pesquisarEmpresaToolStripMenuItem.Size = new System.Drawing.Size(117, 20);
            this.pesquisarEmpresaToolStripMenuItem.Text = "Pesquisar Empresa";
            this.pesquisarEmpresaToolStripMenuItem.Click += new System.EventHandler(this.pesquisarEmpresaToolStripMenuItem_Click);
            // 
            // pesquisarUsuárioToolStripMenuItem
            // 
            this.pesquisarUsuárioToolStripMenuItem.Name = "pesquisarUsuárioToolStripMenuItem";
            this.pesquisarUsuárioToolStripMenuItem.Size = new System.Drawing.Size(112, 20);
            this.pesquisarUsuárioToolStripMenuItem.Text = "Pesquisar Usuário";
            this.pesquisarUsuárioToolStripMenuItem.Click += new System.EventHandler(this.pesquisarUsuárioToolStripMenuItem_Click);
            // 
            // meuPerfilToolStripMenuItem
            // 
            this.meuPerfilToolStripMenuItem.Name = "meuPerfilToolStripMenuItem";
            this.meuPerfilToolStripMenuItem.Size = new System.Drawing.Size(73, 20);
            this.meuPerfilToolStripMenuItem.Text = "Meu Perfil";
            this.meuPerfilToolStripMenuItem.Click += new System.EventHandler(this.meuPerfilToolStripMenuItem_Click);
            // 
            // sairToolStripMenuItem
            // 
            this.sairToolStripMenuItem.Name = "sairToolStripMenuItem";
            this.sairToolStripMenuItem.Size = new System.Drawing.Size(38, 20);
            this.sairToolStripMenuItem.Text = "Sair";
            this.sairToolStripMenuItem.Click += new System.EventHandler(this.sairToolStripMenuItem_Click);
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
        private ToolStripMenuItem pesquisarEmpresaToolStripMenuItem;
        private ToolStripMenuItem pesquisarUsuárioToolStripMenuItem;
        private ToolStripMenuItem meuPerfilToolStripMenuItem;
        private ToolStripMenuItem sairToolStripMenuItem;
    }
}