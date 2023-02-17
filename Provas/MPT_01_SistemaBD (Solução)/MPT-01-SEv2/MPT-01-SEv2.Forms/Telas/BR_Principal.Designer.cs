namespace MPT_01_SEv2.Forms.Telas
{
    partial class BR_Principal
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
            this.toolStripStatusLabelLoginCounter = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabelDateTime = new System.Windows.Forms.ToolStripStatusLabel();
            this.timer = new System.Windows.Forms.Timer(this.components);
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.toolStripMenuItemHome = new System.Windows.Forms.ToolStripMenuItem();
            this.funcionárioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.departamentoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripComboBox = new System.Windows.Forms.ToolStripComboBox();
            this.toolStrip = new System.Windows.Forms.ToolStrip();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.statusStrip.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.toolStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // statusStrip
            // 
            this.statusStrip.BackColor = System.Drawing.Color.Yellow;
            this.statusStrip.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabelLoginCounter,
            this.toolStripStatusLabelDateTime});
            this.statusStrip.Location = new System.Drawing.Point(0, 428);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.statusStrip.Size = new System.Drawing.Size(800, 22);
            this.statusStrip.SizingGrip = false;
            this.statusStrip.TabIndex = 0;
            this.statusStrip.Text = "statusStrip";
            // 
            // toolStripStatusLabelLoginCounter
            // 
            this.toolStripStatusLabelLoginCounter.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripStatusLabelLoginCounter.ForeColor = System.Drawing.Color.Green;
            this.toolStripStatusLabelLoginCounter.Name = "toolStripStatusLabelLoginCounter";
            this.toolStripStatusLabelLoginCounter.Padding = new System.Windows.Forms.Padding(0, 0, 10, 0);
            this.toolStripStatusLabelLoginCounter.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.toolStripStatusLabelLoginCounter.Size = new System.Drawing.Size(392, 17);
            this.toolStripStatusLabelLoginCounter.Spring = true;
            this.toolStripStatusLabelLoginCounter.Text = "Vezes logado : 0";
            this.toolStripStatusLabelLoginCounter.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // toolStripStatusLabelDateTime
            // 
            this.toolStripStatusLabelDateTime.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripStatusLabelDateTime.ForeColor = System.Drawing.Color.Green;
            this.toolStripStatusLabelDateTime.Image = global::MPT_01_SEv2.Forms.Properties.Resources._079_clock;
            this.toolStripStatusLabelDateTime.ImageAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.toolStripStatusLabelDateTime.Name = "toolStripStatusLabelDateTime";
            this.toolStripStatusLabelDateTime.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.toolStripStatusLabelDateTime.RightToLeftAutoMirrorImage = true;
            this.toolStripStatusLabelDateTime.Size = new System.Drawing.Size(392, 17);
            this.toolStripStatusLabelDateTime.Spring = true;
            this.toolStripStatusLabelDateTime.Text = "Data Atual";
            this.toolStripStatusLabelDateTime.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.toolStripStatusLabelDateTime.TextDirection = System.Windows.Forms.ToolStripTextDirection.Horizontal;
            // 
            // timer
            // 
            this.timer.Interval = 1000;
            this.timer.Tick += new System.EventHandler(this.timer_Tick);
            // 
            // menuStrip
            // 
            this.menuStrip.BackColor = System.Drawing.Color.Yellow;
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItemHome,
            this.funcionárioToolStripMenuItem,
            this.departamentoToolStripMenuItem,
            this.toolStripComboBox});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(800, 25);
            this.menuStrip.TabIndex = 3;
            this.menuStrip.Text = "menuStrip";
            // 
            // toolStripMenuItemHome
            // 
            this.toolStripMenuItemHome.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripMenuItemHome.ForeColor = System.Drawing.Color.Green;
            this.toolStripMenuItemHome.Image = global::MPT_01_SEv2.Forms.Properties.Resources._001_home;
            this.toolStripMenuItemHome.Name = "toolStripMenuItemHome";
            this.toolStripMenuItemHome.Size = new System.Drawing.Size(122, 21);
            this.toolStripMenuItemHome.Text = "Bem-Vindo(a)";
            this.toolStripMenuItemHome.Click += new System.EventHandler(this.toolStripMenuItemHome_Click);
            // 
            // funcionárioToolStripMenuItem
            // 
            this.funcionárioToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI Emoji", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.funcionárioToolStripMenuItem.ForeColor = System.Drawing.Color.Green;
            this.funcionárioToolStripMenuItem.Image = global::MPT_01_SEv2.Forms.Properties.Resources._114_user;
            this.funcionárioToolStripMenuItem.Name = "funcionárioToolStripMenuItem";
            this.funcionárioToolStripMenuItem.Size = new System.Drawing.Size(114, 21);
            this.funcionárioToolStripMenuItem.Text = "Funcionário";
            this.funcionárioToolStripMenuItem.Click += new System.EventHandler(this.funcionárioToolStripMenuItem_Click);
            // 
            // departamentoToolStripMenuItem
            // 
            this.departamentoToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.departamentoToolStripMenuItem.ForeColor = System.Drawing.Color.Green;
            this.departamentoToolStripMenuItem.Image = global::MPT_01_SEv2.Forms.Properties.Resources._004_office;
            this.departamentoToolStripMenuItem.Name = "departamentoToolStripMenuItem";
            this.departamentoToolStripMenuItem.Size = new System.Drawing.Size(125, 21);
            this.departamentoToolStripMenuItem.Text = "Departamento";
            this.departamentoToolStripMenuItem.Click += new System.EventHandler(this.departamentoToolStripMenuItem_Click);
            // 
            // toolStripComboBox
            // 
            this.toolStripComboBox.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.toolStripComboBox.BackColor = System.Drawing.Color.LightGreen;
            this.toolStripComboBox.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.toolStripComboBox.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripComboBox.ForeColor = System.Drawing.Color.SlateGray;
            this.toolStripComboBox.Items.AddRange(new object[] {
            "Lado a Lado",
            "Horizontalmente",
            "Cascata"});
            this.toolStripComboBox.Name = "toolStripComboBox";
            this.toolStripComboBox.Padding = new System.Windows.Forms.Padding(0, 0, 10, 0);
            this.toolStripComboBox.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.toolStripComboBox.Size = new System.Drawing.Size(210, 21);
            this.toolStripComboBox.Text = "Selecione uma organização...";
            this.toolStripComboBox.SelectedIndexChanged += new System.EventHandler(this.toolStripComboBox_SelectedIndexChanged);
            // 
            // toolStrip
            // 
            this.toolStrip.BackColor = System.Drawing.Color.Yellow;
            this.toolStrip.Dock = System.Windows.Forms.DockStyle.Left;
            this.toolStrip.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.toolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButton1});
            this.toolStrip.Location = new System.Drawing.Point(0, 25);
            this.toolStrip.Name = "toolStrip";
            this.toolStrip.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            this.toolStrip.Size = new System.Drawing.Size(118, 403);
            this.toolStrip.TabIndex = 4;
            this.toolStrip.Text = "toolStrip1";
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton1.Image = global::MPT_01_SEv2.Forms.Properties.Resources.LogoBrasilResort_removebg_preview;
            this.toolStripButton1.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.toolStripButton1.Size = new System.Drawing.Size(115, 61);
            this.toolStripButton1.Text = "toolStripButton";
            // 
            // BR_Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.toolStrip);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip);
            this.IsMdiContainer = true;
            this.Name = "BR_Principal";
            this.ShowIcon = false;
            this.Text = "Principal";
            this.Load += new System.EventHandler(this.BR_Principal_Load);
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.toolStrip.ResumeLayout(false);
            this.toolStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabelDateTime;
        private System.Windows.Forms.Timer timer;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabelLoginCounter;
        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem funcionárioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem departamentoToolStripMenuItem;
        private System.Windows.Forms.ToolStripComboBox toolStripComboBox;
        private System.Windows.Forms.ToolStrip toolStrip;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItemHome;
    }
}