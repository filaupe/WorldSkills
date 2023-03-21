namespace BibliotecaTur_Testes
{
    partial class Testes
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.comboBoxMetodo = new System.Windows.Forms.ComboBox();
            this.buttonTest = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.labelResultado = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.numericUpDownDias = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownPessoas = new System.Windows.Forms.NumericUpDown();
            this.textBoxvalor = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownDias)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownPessoas)).BeginInit();
            this.SuspendLayout();
            // 
            // comboBoxMetodo
            // 
            this.comboBoxMetodo.FormattingEnabled = true;
            this.comboBoxMetodo.Items.AddRange(new object[] {
            "TURISMO",
            "AGENCIA",
            "HOTEL",
            "PASSEIO"});
            this.comboBoxMetodo.Location = new System.Drawing.Point(208, 36);
            this.comboBoxMetodo.Name = "comboBoxMetodo";
            this.comboBoxMetodo.Size = new System.Drawing.Size(121, 21);
            this.comboBoxMetodo.TabIndex = 3;
            // 
            // buttonTest
            // 
            this.buttonTest.Location = new System.Drawing.Point(335, 36);
            this.buttonTest.Name = "buttonTest";
            this.buttonTest.Size = new System.Drawing.Size(75, 23);
            this.buttonTest.TabIndex = 4;
            this.buttonTest.Text = "Testar";
            this.buttonTest.UseVisualStyleBackColor = true;
            this.buttonTest.Click += new System.EventHandler(this.buttonTest_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Resultado:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(31, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Dias:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(55, 20);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 13);
            this.label3.TabIndex = 7;
            this.label3.Text = "Pessoas:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(114, 20);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(64, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Valor Diaria:";
            // 
            // labelResultado
            // 
            this.labelResultado.AutoSize = true;
            this.labelResultado.Location = new System.Drawing.Point(76, 71);
            this.labelResultado.Name = "labelResultado";
            this.labelResultado.Size = new System.Drawing.Size(13, 13);
            this.labelResultado.TabIndex = 9;
            this.labelResultado.Text = "0";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(205, 20);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(98, 13);
            this.label6.TabIndex = 10;
            this.label6.Text = "Selecionar método:";
            // 
            // numericUpDownDias
            // 
            this.numericUpDownDias.Location = new System.Drawing.Point(15, 36);
            this.numericUpDownDias.Name = "numericUpDownDias";
            this.numericUpDownDias.Size = new System.Drawing.Size(37, 20);
            this.numericUpDownDias.TabIndex = 11;
            // 
            // numericUpDownPessoas
            // 
            this.numericUpDownPessoas.Location = new System.Drawing.Point(58, 36);
            this.numericUpDownPessoas.Name = "numericUpDownPessoas";
            this.numericUpDownPessoas.Size = new System.Drawing.Size(53, 20);
            this.numericUpDownPessoas.TabIndex = 12;
            // 
            // textBoxvalor
            // 
            this.textBoxvalor.Location = new System.Drawing.Point(117, 36);
            this.textBoxvalor.Name = "textBoxvalor";
            this.textBoxvalor.Size = new System.Drawing.Size(85, 20);
            this.textBoxvalor.TabIndex = 13;
            // 
            // Testes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(423, 99);
            this.Controls.Add(this.textBoxvalor);
            this.Controls.Add(this.numericUpDownPessoas);
            this.Controls.Add(this.numericUpDownDias);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.labelResultado);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.buttonTest);
            this.Controls.Add(this.comboBoxMetodo);
            this.Name = "Testes";
            this.Text = "Teste";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownDias)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownPessoas)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ComboBox comboBoxMetodo;
        private System.Windows.Forms.Button buttonTest;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label labelResultado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.NumericUpDown numericUpDownDias;
        private System.Windows.Forms.NumericUpDown numericUpDownPessoas;
        private System.Windows.Forms.TextBox textBoxvalor;
    }
}

