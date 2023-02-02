namespace MPT_01_SEv1.Forms.Telas.Dialogos
{
    partial class DialogGerentDepartmentList
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dataGridViewGerents = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewGerents)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewGerents
            // 
            this.dataGridViewGerents.AllowUserToAddRows = false;
            this.dataGridViewGerents.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.DarkGray;
            this.dataGridViewGerents.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridViewGerents.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewGerents.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4});
            this.dataGridViewGerents.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridViewGerents.Location = new System.Drawing.Point(0, 0);
            this.dataGridViewGerents.Name = "dataGridViewGerents";
            this.dataGridViewGerents.ReadOnly = true;
            this.dataGridViewGerents.RowTemplate.Height = 25;
            this.dataGridViewGerents.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dataGridViewGerents.Size = new System.Drawing.Size(441, 450);
            this.dataGridViewGerents.TabIndex = 0;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Funcionário";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Salário";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Idade";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Bônus";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // DialogGerentDepartmentList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(441, 450);
            this.Controls.Add(this.dataGridViewGerents);
            this.Name = "DialogGerentDepartmentList";
            this.Text = "Lista de gerentes";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewGerents)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public DataGridView dataGridViewGerents;
        private DataGridViewTextBoxColumn Column1;
        private DataGridViewTextBoxColumn Column2;
        private DataGridViewTextBoxColumn Column3;
        private DataGridViewTextBoxColumn Column4;
    }
}