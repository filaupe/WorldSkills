namespace MPT_01_SEv1.Forms.Telas.Dialogos
{
    partial class CrudFuncionario
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
            this.textBoxName = new System.Windows.Forms.TextBox();
            this.textBoxSalary = new System.Windows.Forms.TextBox();
            this.buttonOk = new System.Windows.Forms.Button();
            this.buttonCancel = new System.Windows.Forms.Button();
            this.textBoxDay = new System.Windows.Forms.TextBox();
            this.textBoxMouth = new System.Windows.Forms.TextBox();
            this.textBoxYear = new System.Windows.Forms.TextBox();
            this.comboBoxGerenteDoFuncionario = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // textBoxName
            // 
            this.textBoxName.Location = new System.Drawing.Point(33, 40);
            this.textBoxName.Name = "textBoxName";
            this.textBoxName.Size = new System.Drawing.Size(100, 23);
            this.textBoxName.TabIndex = 0;
            // 
            // textBoxSalary
            // 
            this.textBoxSalary.Location = new System.Drawing.Point(33, 69);
            this.textBoxSalary.Name = "textBoxSalary";
            this.textBoxSalary.Size = new System.Drawing.Size(100, 23);
            this.textBoxSalary.TabIndex = 1;
            // 
            // buttonOk
            // 
            this.buttonOk.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.buttonOk.Location = new System.Drawing.Point(32, 180);
            this.buttonOk.Name = "buttonOk";
            this.buttonOk.Size = new System.Drawing.Size(73, 31);
            this.buttonOk.TabIndex = 3;
            this.buttonOk.Text = "Ok";
            this.buttonOk.UseVisualStyleBackColor = true;
            // 
            // buttonCancel
            // 
            this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.buttonCancel.Location = new System.Drawing.Point(124, 180);
            this.buttonCancel.Name = "buttonCancel";
            this.buttonCancel.Size = new System.Drawing.Size(74, 31);
            this.buttonCancel.TabIndex = 4;
            this.buttonCancel.Text = "Cancel";
            this.buttonCancel.UseVisualStyleBackColor = true;
            // 
            // textBoxDay
            // 
            this.textBoxDay.Location = new System.Drawing.Point(32, 98);
            this.textBoxDay.Name = "textBoxDay";
            this.textBoxDay.Size = new System.Drawing.Size(30, 23);
            this.textBoxDay.TabIndex = 5;
            // 
            // textBoxMouth
            // 
            this.textBoxMouth.Location = new System.Drawing.Point(68, 98);
            this.textBoxMouth.Name = "textBoxMouth";
            this.textBoxMouth.Size = new System.Drawing.Size(30, 23);
            this.textBoxMouth.TabIndex = 6;
            // 
            // textBoxYear
            // 
            this.textBoxYear.Location = new System.Drawing.Point(104, 98);
            this.textBoxYear.Name = "textBoxYear";
            this.textBoxYear.Size = new System.Drawing.Size(55, 23);
            this.textBoxYear.TabIndex = 7;
            // 
            // comboBoxGerenteDoFuncionario
            // 
            this.comboBoxGerenteDoFuncionario.FormattingEnabled = true;
            this.comboBoxGerenteDoFuncionario.Location = new System.Drawing.Point(180, 40);
            this.comboBoxGerenteDoFuncionario.Name = "comboBoxGerenteDoFuncionario";
            this.comboBoxGerenteDoFuncionario.Size = new System.Drawing.Size(121, 23);
            this.comboBoxGerenteDoFuncionario.TabIndex = 8;
            // 
            // CrudFuncionario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(398, 278);
            this.Controls.Add(this.comboBoxGerenteDoFuncionario);
            this.Controls.Add(this.textBoxYear);
            this.Controls.Add(this.textBoxMouth);
            this.Controls.Add(this.textBoxDay);
            this.Controls.Add(this.buttonCancel);
            this.Controls.Add(this.buttonOk);
            this.Controls.Add(this.textBoxSalary);
            this.Controls.Add(this.textBoxName);
            this.Name = "CrudFuncionario";
            this.Text = "CrudFuncionario";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private Button buttonOk;
        private Button buttonCancel;
        public TextBox textBoxName;
        public TextBox textBoxSalary;
        public TextBox textBoxDay;
        public TextBox textBoxMouth;
        public TextBox textBoxYear;
        public ComboBox comboBoxGerenteDoFuncionario;
    }
}