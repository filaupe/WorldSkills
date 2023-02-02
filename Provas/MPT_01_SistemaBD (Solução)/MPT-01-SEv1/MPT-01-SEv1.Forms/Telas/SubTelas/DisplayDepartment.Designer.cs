namespace MPT_01_SEv1.Forms.Telas.SubTelas
{
    partial class DisplayDepartment
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
            this.dataGridViewDepartments = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.comboBoxDepartments = new System.Windows.Forms.ComboBox();
            this.buttonAdd = new System.Windows.Forms.Button();
            this.buttonAlter = new System.Windows.Forms.Button();
            this.buttonDelete = new System.Windows.Forms.Button();
            this.buttonLast = new System.Windows.Forms.Button();
            this.buttonNext = new System.Windows.Forms.Button();
            this.buttonPrevious = new System.Windows.Forms.Button();
            this.buttonFirst = new System.Windows.Forms.Button();
            this.buttonGerentList = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDepartments)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewDepartments
            // 
            this.dataGridViewDepartments.AllowUserToAddRows = false;
            this.dataGridViewDepartments.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.DarkGray;
            this.dataGridViewDepartments.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridViewDepartments.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDepartments.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3});
            this.dataGridViewDepartments.Location = new System.Drawing.Point(12, 245);
            this.dataGridViewDepartments.Name = "dataGridViewDepartments";
            this.dataGridViewDepartments.ReadOnly = true;
            this.dataGridViewDepartments.RowTemplate.Height = 25;
            this.dataGridViewDepartments.Size = new System.Drawing.Size(343, 193);
            this.dataGridViewDepartments.TabIndex = 0;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Ordem";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Departamento";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Gerente";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // comboBoxDepartments
            // 
            this.comboBoxDepartments.FormattingEnabled = true;
            this.comboBoxDepartments.Location = new System.Drawing.Point(12, 12);
            this.comboBoxDepartments.Name = "comboBoxDepartments";
            this.comboBoxDepartments.Size = new System.Drawing.Size(121, 23);
            this.comboBoxDepartments.TabIndex = 1;
            // 
            // buttonAdd
            // 
            this.buttonAdd.Location = new System.Drawing.Point(139, 12);
            this.buttonAdd.Name = "buttonAdd";
            this.buttonAdd.Size = new System.Drawing.Size(77, 23);
            this.buttonAdd.TabIndex = 2;
            this.buttonAdd.Text = "Cadastrar";
            this.buttonAdd.UseVisualStyleBackColor = true;
            this.buttonAdd.Click += new System.EventHandler(this.buttonAdd_Click);
            // 
            // buttonAlter
            // 
            this.buttonAlter.Location = new System.Drawing.Point(222, 11);
            this.buttonAlter.Name = "buttonAlter";
            this.buttonAlter.Size = new System.Drawing.Size(52, 23);
            this.buttonAlter.TabIndex = 3;
            this.buttonAlter.Text = "Alterar";
            this.buttonAlter.UseVisualStyleBackColor = true;
            this.buttonAlter.Click += new System.EventHandler(this.buttonAlter_Click);
            // 
            // buttonDelete
            // 
            this.buttonDelete.Location = new System.Drawing.Point(280, 11);
            this.buttonDelete.Name = "buttonDelete";
            this.buttonDelete.Size = new System.Drawing.Size(75, 23);
            this.buttonDelete.TabIndex = 4;
            this.buttonDelete.Text = "Excluir";
            this.buttonDelete.UseVisualStyleBackColor = true;
            this.buttonDelete.Click += new System.EventHandler(this.buttonDelete_Click);
            // 
            // buttonLast
            // 
            this.buttonLast.Location = new System.Drawing.Point(280, 198);
            this.buttonLast.Name = "buttonLast";
            this.buttonLast.Size = new System.Drawing.Size(75, 41);
            this.buttonLast.TabIndex = 13;
            this.buttonLast.Text = "Última Página";
            this.buttonLast.UseVisualStyleBackColor = true;
            this.buttonLast.Click += new System.EventHandler(this.buttonLast_Click);
            // 
            // buttonNext
            // 
            this.buttonNext.Location = new System.Drawing.Point(199, 198);
            this.buttonNext.Name = "buttonNext";
            this.buttonNext.Size = new System.Drawing.Size(75, 41);
            this.buttonNext.TabIndex = 12;
            this.buttonNext.Text = "Próxima Página";
            this.buttonNext.UseVisualStyleBackColor = true;
            this.buttonNext.Click += new System.EventHandler(this.buttonNext_Click);
            // 
            // buttonPrevious
            // 
            this.buttonPrevious.Location = new System.Drawing.Point(91, 198);
            this.buttonPrevious.Name = "buttonPrevious";
            this.buttonPrevious.Size = new System.Drawing.Size(75, 41);
            this.buttonPrevious.TabIndex = 11;
            this.buttonPrevious.Text = "Página Anterior";
            this.buttonPrevious.UseVisualStyleBackColor = true;
            this.buttonPrevious.Click += new System.EventHandler(this.buttonPrivious_Click);
            // 
            // buttonFirst
            // 
            this.buttonFirst.Location = new System.Drawing.Point(12, 198);
            this.buttonFirst.Name = "buttonFirst";
            this.buttonFirst.Size = new System.Drawing.Size(73, 41);
            this.buttonFirst.TabIndex = 10;
            this.buttonFirst.Text = "Primeira Página";
            this.buttonFirst.UseVisualStyleBackColor = true;
            this.buttonFirst.Click += new System.EventHandler(this.buttonFirst_Click);
            // 
            // buttonGerentList
            // 
            this.buttonGerentList.Location = new System.Drawing.Point(102, 91);
            this.buttonGerentList.Name = "buttonGerentList";
            this.buttonGerentList.Size = new System.Drawing.Size(160, 62);
            this.buttonGerentList.TabIndex = 14;
            this.buttonGerentList.Text = "Gerentes \r\nde\r\n departamentos";
            this.buttonGerentList.UseVisualStyleBackColor = true;
            this.buttonGerentList.Click += new System.EventHandler(this.buttonGerentList_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(139, 63);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(97, 22);
            this.button1.TabIndex = 15;
            this.button1.Text = "Salvar PDF";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // DisplayDepartment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(369, 450);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.buttonGerentList);
            this.Controls.Add(this.buttonLast);
            this.Controls.Add(this.buttonNext);
            this.Controls.Add(this.buttonPrevious);
            this.Controls.Add(this.buttonFirst);
            this.Controls.Add(this.buttonDelete);
            this.Controls.Add(this.buttonAlter);
            this.Controls.Add(this.buttonAdd);
            this.Controls.Add(this.comboBoxDepartments);
            this.Controls.Add(this.dataGridViewDepartments);
            this.KeyPreview = true;
            this.Name = "DisplayDepartment";
            this.Text = "DisplayDepartment";
            this.Load += new System.EventHandler(this.DisplayDepartment_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.DisplayDepartment_KeyDown);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDepartments)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DataGridView dataGridViewDepartments;
        private ComboBox comboBoxDepartments;
        private Button buttonAdd;
        private Button buttonAlter;
        private Button buttonDelete;
        private Button buttonLast;
        private Button buttonNext;
        private Button buttonPrevious;
        private Button buttonFirst;
        private DataGridViewTextBoxColumn Column1;
        private DataGridViewTextBoxColumn Column2;
        private DataGridViewTextBoxColumn Column3;
        private Button buttonGerentList;
        private Button button1;
    }
}