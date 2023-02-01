namespace MPT_01_SEv1.Forms.Telas
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
            this.components = new System.ComponentModel.Container();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabelTime = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabelLoginCount = new System.Windows.Forms.ToolStripStatusLabel();
            this.timer = new System.Windows.Forms.Timer(this.components);
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.departmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.employeeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.organizarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.horizontalmenteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verticalmenteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cascataToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // statusStrip
            // 
            this.statusStrip.BackColor = System.Drawing.Color.Yellow;
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabelTime,
            this.toolStripStatusLabelLoginCount});
            this.statusStrip.Location = new System.Drawing.Point(0, 415);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(800, 35);
            this.statusStrip.TabIndex = 0;
            this.statusStrip.Text = "statusStrip";
            // 
            // toolStripStatusLabelTime
            // 
            this.toolStripStatusLabelTime.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.toolStripStatusLabelTime.Name = "toolStripStatusLabelTime";
            this.toolStripStatusLabelTime.Size = new System.Drawing.Size(113, 30);
            this.toolStripStatusLabelTime.Text = "Hora Atual";
            // 
            // toolStripStatusLabelLoginCount
            // 
            this.toolStripStatusLabelLoginCount.Name = "toolStripStatusLabelLoginCount";
            this.toolStripStatusLabelLoginCount.Size = new System.Drawing.Size(672, 30);
            this.toolStripStatusLabelLoginCount.Spring = true;
            this.toolStripStatusLabelLoginCount.Text = "Vezes Logado: 0";
            // 
            // timer
            // 
            this.timer.Enabled = true;
            this.timer.Interval = 1000;
            this.timer.Tick += new System.EventHandler(this.timer_Tick);
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.departmentToolStripMenuItem,
            this.employeeToolStripMenuItem,
            this.organizarToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(800, 24);
            this.menuStrip.TabIndex = 4;
            this.menuStrip.Text = "menuStrip";
            // 
            // departmentToolStripMenuItem
            // 
            this.departmentToolStripMenuItem.Name = "departmentToolStripMenuItem";
            this.departmentToolStripMenuItem.Size = new System.Drawing.Size(100, 20);
            this.departmentToolStripMenuItem.Text = "Departamentos";
            this.departmentToolStripMenuItem.Click += new System.EventHandler(this.departmentToolStripMenuItem_Click);
            // 
            // employeeToolStripMenuItem
            // 
            this.employeeToolStripMenuItem.Name = "employeeToolStripMenuItem";
            this.employeeToolStripMenuItem.Size = new System.Drawing.Size(87, 20);
            this.employeeToolStripMenuItem.Text = "Funcionários";
            this.employeeToolStripMenuItem.Click += new System.EventHandler(this.employeeToolStripMenuItem_Click);
            // 
            // organizarToolStripMenuItem
            // 
            this.organizarToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.horizontalmenteToolStripMenuItem,
            this.verticalmenteToolStripMenuItem,
            this.cascataToolStripMenuItem});
            this.organizarToolStripMenuItem.Name = "organizarToolStripMenuItem";
            this.organizarToolStripMenuItem.Size = new System.Drawing.Size(70, 20);
            this.organizarToolStripMenuItem.Text = "Organizar";
            // 
            // horizontalmenteToolStripMenuItem
            // 
            this.horizontalmenteToolStripMenuItem.Name = "horizontalmenteToolStripMenuItem";
            this.horizontalmenteToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.horizontalmenteToolStripMenuItem.Text = "Horizontalmente";
            this.horizontalmenteToolStripMenuItem.Click += new System.EventHandler(this.horizontalmenteToolStripMenuItem_Click);
            // 
            // verticalmenteToolStripMenuItem
            // 
            this.verticalmenteToolStripMenuItem.Name = "verticalmenteToolStripMenuItem";
            this.verticalmenteToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.verticalmenteToolStripMenuItem.Text = "Verticalmente";
            this.verticalmenteToolStripMenuItem.Click += new System.EventHandler(this.verticalmenteToolStripMenuItem_Click);
            // 
            // cascataToolStripMenuItem
            // 
            this.cascataToolStripMenuItem.Name = "cascataToolStripMenuItem";
            this.cascataToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.cascataToolStripMenuItem.Text = "Cascata";
            this.cascataToolStripMenuItem.Click += new System.EventHandler(this.cascataToolStripMenuItem_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip);
            this.IsMdiContainer = true;
            this.KeyPreview = true;
            this.MainMenuStrip = this.menuStrip;
            this.Name = "Principal";
            this.Text = "Principal";
            this.Load += new System.EventHandler(this.Principal_Load);
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private StatusStrip statusStrip;
        private ToolStripStatusLabel toolStripStatusLabelTime;
        private System.Windows.Forms.Timer timer;
        private ToolStripStatusLabel toolStripStatusLabelLoginCount;
        private MenuStrip menuStrip;
        private ToolStripMenuItem departmentToolStripMenuItem;
        private ToolStripMenuItem employeeToolStripMenuItem;
        private ToolStripMenuItem organizarToolStripMenuItem;
        private ToolStripMenuItem horizontalmenteToolStripMenuItem;
        private ToolStripMenuItem verticalmenteToolStripMenuItem;
        private ToolStripMenuItem cascataToolStripMenuItem;
    }
}