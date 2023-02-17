namespace MPT_01_SEv2.Forms.Telas.Dialogos
{
    partial class CadastrarAlterarFuncionario
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
            this.buttonConfirm = new System.Windows.Forms.Button();
            this.buttonCancel = new System.Windows.Forms.Button();
            this.textBoxNome = new System.Windows.Forms.TextBox();
            this.textBoxSalario = new System.Windows.Forms.TextBox();
            this.comboBoxFuncionarios = new System.Windows.Forms.ComboBox();
            this.comboBoxDepartamentos = new System.Windows.Forms.ComboBox();
            this.maskedTextBoxDataNascimento = new System.Windows.Forms.MaskedTextBox();
            this.SuspendLayout();
            // 
            // buttonConfirm
            // 
            this.buttonConfirm.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.buttonConfirm.Location = new System.Drawing.Point(12, 250);
            this.buttonConfirm.Name = "buttonConfirm";
            this.buttonConfirm.Size = new System.Drawing.Size(73, 26);
            this.buttonConfirm.TabIndex = 0;
            this.buttonConfirm.Text = "Confirmar";
            this.buttonConfirm.UseVisualStyleBackColor = true;
            // 
            // buttonCancel
            // 
            this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.buttonCancel.Location = new System.Drawing.Point(276, 250);
            this.buttonCancel.Name = "buttonCancel";
            this.buttonCancel.Size = new System.Drawing.Size(73, 26);
            this.buttonCancel.TabIndex = 1;
            this.buttonCancel.Text = "Cancelar";
            this.buttonCancel.UseVisualStyleBackColor = true;
            // 
            // textBoxNome
            // 
            this.textBoxNome.Location = new System.Drawing.Point(12, 12);
            this.textBoxNome.Name = "textBoxNome";
            this.textBoxNome.Size = new System.Drawing.Size(100, 20);
            this.textBoxNome.TabIndex = 2;
            // 
            // textBoxSalario
            // 
            this.textBoxSalario.Location = new System.Drawing.Point(12, 38);
            this.textBoxSalario.Name = "textBoxSalario";
            this.textBoxSalario.Size = new System.Drawing.Size(73, 20);
            this.textBoxSalario.TabIndex = 3;
            // 
            // comboBoxFuncionarios
            // 
            this.comboBoxFuncionarios.FormattingEnabled = true;
            this.comboBoxFuncionarios.Location = new System.Drawing.Point(228, 10);
            this.comboBoxFuncionarios.Name = "comboBoxFuncionarios";
            this.comboBoxFuncionarios.Size = new System.Drawing.Size(121, 21);
            this.comboBoxFuncionarios.TabIndex = 4;
            // 
            // comboBoxDepartamentos
            // 
            this.comboBoxDepartamentos.FormattingEnabled = true;
            this.comboBoxDepartamentos.Location = new System.Drawing.Point(228, 37);
            this.comboBoxDepartamentos.Name = "comboBoxDepartamentos";
            this.comboBoxDepartamentos.Size = new System.Drawing.Size(121, 21);
            this.comboBoxDepartamentos.TabIndex = 5;
            // 
            // maskedTextBoxDataNascimento
            // 
            this.maskedTextBoxDataNascimento.Location = new System.Drawing.Point(12, 64);
            this.maskedTextBoxDataNascimento.Mask = "00/00/0000";
            this.maskedTextBoxDataNascimento.Name = "maskedTextBoxDataNascimento";
            this.maskedTextBoxDataNascimento.Size = new System.Drawing.Size(73, 20);
            this.maskedTextBoxDataNascimento.TabIndex = 6;
            // 
            // CadastrarAlterarFuncionario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(361, 288);
            this.Controls.Add(this.maskedTextBoxDataNascimento);
            this.Controls.Add(this.comboBoxDepartamentos);
            this.Controls.Add(this.comboBoxFuncionarios);
            this.Controls.Add(this.textBoxSalario);
            this.Controls.Add(this.textBoxNome);
            this.Controls.Add(this.buttonCancel);
            this.Controls.Add(this.buttonConfirm);
            this.Name = "CadastrarAlterarFuncionario";
            this.Text = "CadastrarAlterarFuncionario";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonConfirm;
        private System.Windows.Forms.Button buttonCancel;
        public System.Windows.Forms.TextBox textBoxNome;
        public System.Windows.Forms.TextBox textBoxSalario;
        public System.Windows.Forms.ComboBox comboBoxFuncionarios;
        public System.Windows.Forms.ComboBox comboBoxDepartamentos;
        public System.Windows.Forms.MaskedTextBox maskedTextBoxDataNascimento;
    }
}