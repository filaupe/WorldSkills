namespace MPT_01_SEv1.Forms.Telas.Dialogos
{
    partial class DialogDepartment
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
            this.buttonDialog = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.comboBoxGerents = new System.Windows.Forms.ComboBox();
            this.textBoxName = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // buttonDialog
            // 
            this.buttonDialog.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.buttonDialog.Location = new System.Drawing.Point(12, 201);
            this.buttonDialog.Name = "buttonDialog";
            this.buttonDialog.Size = new System.Drawing.Size(75, 23);
            this.buttonDialog.TabIndex = 0;
            this.buttonDialog.Text = "Adicionar";
            this.buttonDialog.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button2.Location = new System.Drawing.Point(180, 201);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 1;
            this.button2.Text = "Cancelar";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // comboBoxGerents
            // 
            this.comboBoxGerents.FormattingEnabled = true;
            this.comboBoxGerents.Location = new System.Drawing.Point(134, 12);
            this.comboBoxGerents.Name = "comboBoxGerents";
            this.comboBoxGerents.Size = new System.Drawing.Size(121, 23);
            this.comboBoxGerents.TabIndex = 2;
            // 
            // textBoxName
            // 
            this.textBoxName.Location = new System.Drawing.Point(12, 12);
            this.textBoxName.Name = "textBoxName";
            this.textBoxName.Size = new System.Drawing.Size(100, 23);
            this.textBoxName.TabIndex = 3;
            this.textBoxName.Enter += new System.EventHandler(this.textBoxName_Enter);
            this.textBoxName.Leave += new System.EventHandler(this.textBoxName_Leave);
            // 
            // DialogDepartment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(267, 236);
            this.Controls.Add(this.textBoxName);
            this.Controls.Add(this.comboBoxGerents);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.buttonDialog);
            this.Name = "DialogDepartment";
            this.Text = "DialogDepartment";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private Button button2;
        public Button buttonDialog;
        public ComboBox comboBoxGerents;
        public TextBox textBoxName;
    }
}