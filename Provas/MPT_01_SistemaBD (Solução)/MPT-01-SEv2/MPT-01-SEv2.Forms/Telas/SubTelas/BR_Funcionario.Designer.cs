﻿namespace MPT_01_SEv2.Forms.Telas.SubTelas
{
    partial class BR_Funcionario
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
            this.dataGridViewFuncionarios = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.comboBoxFuncionarios = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.buttonPrimeiraPagina = new System.Windows.Forms.Button();
            this.buttonPaginaAnterior = new System.Windows.Forms.Button();
            this.buttonProximaPagina = new System.Windows.Forms.Button();
            this.buttonUltimaPagina = new System.Windows.Forms.Button();
            this.textBoxPrice = new System.Windows.Forms.TextBox();
            this.buttonIgual = new System.Windows.Forms.Button();
            this.buttonMaiorIgual = new System.Windows.Forms.Button();
            this.buttonMenorIgual = new System.Windows.Forms.Button();
            this.buttonDiferente = new System.Windows.Forms.Button();
            this.buttonMaiorQue = new System.Windows.Forms.Button();
            this.buttonMenorQue = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewFuncionarios)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewFuncionarios
            // 
            this.dataGridViewFuncionarios.AllowUserToAddRows = false;
            this.dataGridViewFuncionarios.AllowUserToDeleteRows = false;
            this.dataGridViewFuncionarios.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewFuncionarios.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.dataGridViewFuncionarios.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewFuncionarios.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4});
            this.dataGridViewFuncionarios.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.dataGridViewFuncionarios.Location = new System.Drawing.Point(12, 90);
            this.dataGridViewFuncionarios.Name = "dataGridViewFuncionarios";
            this.dataGridViewFuncionarios.ReadOnly = true;
            this.dataGridViewFuncionarios.Size = new System.Drawing.Size(558, 106);
            this.dataGridViewFuncionarios.TabIndex = 1;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Ordem";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Funcionário";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Width = 150;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Gerente";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Width = 150;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Salário";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.Width = 115;
            // 
            // comboBoxFuncionarios
            // 
            this.comboBoxFuncionarios.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.comboBoxFuncionarios.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.comboBoxFuncionarios.FormattingEnabled = true;
            this.comboBoxFuncionarios.Location = new System.Drawing.Point(12, 12);
            this.comboBoxFuncionarios.Name = "comboBoxFuncionarios";
            this.comboBoxFuncionarios.Size = new System.Drawing.Size(121, 21);
            this.comboBoxFuncionarios.TabIndex = 2;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.DodgerBlue;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(139, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 21);
            this.button1.TabIndex = 3;
            this.button1.Text = "Cadastrar";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.DodgerBlue;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button2.ForeColor = System.Drawing.Color.White;
            this.button2.Location = new System.Drawing.Point(220, 12);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 21);
            this.button2.TabIndex = 4;
            this.button2.Text = "Alterar";
            this.button2.UseVisualStyleBackColor = false;
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.DodgerBlue;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button3.ForeColor = System.Drawing.Color.White;
            this.button3.Location = new System.Drawing.Point(301, 12);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 21);
            this.button3.TabIndex = 5;
            this.button3.Text = "Deletar";
            this.button3.UseVisualStyleBackColor = false;
            // 
            // buttonPrimeiraPagina
            // 
            this.buttonPrimeiraPagina.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonPrimeiraPagina.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonPrimeiraPagina.ForeColor = System.Drawing.Color.White;
            this.buttonPrimeiraPagina.Location = new System.Drawing.Point(12, 63);
            this.buttonPrimeiraPagina.Name = "buttonPrimeiraPagina";
            this.buttonPrimeiraPagina.Size = new System.Drawing.Size(50, 21);
            this.buttonPrimeiraPagina.TabIndex = 6;
            this.buttonPrimeiraPagina.Text = "<<";
            this.buttonPrimeiraPagina.UseVisualStyleBackColor = false;
            // 
            // buttonPaginaAnterior
            // 
            this.buttonPaginaAnterior.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonPaginaAnterior.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonPaginaAnterior.ForeColor = System.Drawing.Color.White;
            this.buttonPaginaAnterior.Location = new System.Drawing.Point(68, 63);
            this.buttonPaginaAnterior.Name = "buttonPaginaAnterior";
            this.buttonPaginaAnterior.Size = new System.Drawing.Size(28, 21);
            this.buttonPaginaAnterior.TabIndex = 7;
            this.buttonPaginaAnterior.Text = "<";
            this.buttonPaginaAnterior.UseVisualStyleBackColor = false;
            // 
            // buttonProximaPagina
            // 
            this.buttonProximaPagina.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonProximaPagina.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonProximaPagina.ForeColor = System.Drawing.Color.White;
            this.buttonProximaPagina.Location = new System.Drawing.Point(139, 63);
            this.buttonProximaPagina.Name = "buttonProximaPagina";
            this.buttonProximaPagina.Size = new System.Drawing.Size(28, 21);
            this.buttonProximaPagina.TabIndex = 8;
            this.buttonProximaPagina.Text = ">";
            this.buttonProximaPagina.UseVisualStyleBackColor = false;
            // 
            // buttonUltimaPagina
            // 
            this.buttonUltimaPagina.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonUltimaPagina.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonUltimaPagina.ForeColor = System.Drawing.Color.White;
            this.buttonUltimaPagina.Location = new System.Drawing.Point(173, 63);
            this.buttonUltimaPagina.Name = "buttonUltimaPagina";
            this.buttonUltimaPagina.Size = new System.Drawing.Size(50, 21);
            this.buttonUltimaPagina.TabIndex = 9;
            this.buttonUltimaPagina.Text = ">>";
            this.buttonUltimaPagina.UseVisualStyleBackColor = false;
            // 
            // textBoxPrice
            // 
            this.textBoxPrice.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.textBoxPrice.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxPrice.Location = new System.Drawing.Point(266, 63);
            this.textBoxPrice.Name = "textBoxPrice";
            this.textBoxPrice.Size = new System.Drawing.Size(100, 20);
            this.textBoxPrice.TabIndex = 10;
            this.textBoxPrice.TextChanged += new System.EventHandler(this.textBoxPrice_TextChanged);
            // 
            // buttonIgual
            // 
            this.buttonIgual.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonIgual.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonIgual.ForeColor = System.Drawing.Color.White;
            this.buttonIgual.Location = new System.Drawing.Point(372, 63);
            this.buttonIgual.Name = "buttonIgual";
            this.buttonIgual.Size = new System.Drawing.Size(28, 21);
            this.buttonIgual.TabIndex = 11;
            this.buttonIgual.Text = "==";
            this.buttonIgual.UseVisualStyleBackColor = false;
            // 
            // buttonMaiorIgual
            // 
            this.buttonMaiorIgual.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonMaiorIgual.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonMaiorIgual.ForeColor = System.Drawing.Color.White;
            this.buttonMaiorIgual.Location = new System.Drawing.Point(406, 63);
            this.buttonMaiorIgual.Name = "buttonMaiorIgual";
            this.buttonMaiorIgual.Size = new System.Drawing.Size(28, 21);
            this.buttonMaiorIgual.TabIndex = 12;
            this.buttonMaiorIgual.Text = ">=";
            this.buttonMaiorIgual.UseVisualStyleBackColor = false;
            // 
            // buttonMenorIgual
            // 
            this.buttonMenorIgual.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonMenorIgual.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonMenorIgual.ForeColor = System.Drawing.Color.White;
            this.buttonMenorIgual.Location = new System.Drawing.Point(440, 63);
            this.buttonMenorIgual.Name = "buttonMenorIgual";
            this.buttonMenorIgual.Size = new System.Drawing.Size(28, 21);
            this.buttonMenorIgual.TabIndex = 13;
            this.buttonMenorIgual.Text = "<=";
            this.buttonMenorIgual.UseVisualStyleBackColor = false;
            // 
            // buttonDiferente
            // 
            this.buttonDiferente.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonDiferente.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonDiferente.ForeColor = System.Drawing.Color.White;
            this.buttonDiferente.Location = new System.Drawing.Point(474, 63);
            this.buttonDiferente.Name = "buttonDiferente";
            this.buttonDiferente.Size = new System.Drawing.Size(28, 21);
            this.buttonDiferente.TabIndex = 14;
            this.buttonDiferente.Text = "<>";
            this.buttonDiferente.UseVisualStyleBackColor = false;
            // 
            // buttonMaiorQue
            // 
            this.buttonMaiorQue.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonMaiorQue.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonMaiorQue.ForeColor = System.Drawing.Color.White;
            this.buttonMaiorQue.Location = new System.Drawing.Point(508, 63);
            this.buttonMaiorQue.Name = "buttonMaiorQue";
            this.buttonMaiorQue.Size = new System.Drawing.Size(28, 21);
            this.buttonMaiorQue.TabIndex = 15;
            this.buttonMaiorQue.Text = ">";
            this.buttonMaiorQue.UseVisualStyleBackColor = false;
            // 
            // buttonMenorQue
            // 
            this.buttonMenorQue.BackColor = System.Drawing.Color.DodgerBlue;
            this.buttonMenorQue.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.buttonMenorQue.ForeColor = System.Drawing.Color.White;
            this.buttonMenorQue.Location = new System.Drawing.Point(542, 63);
            this.buttonMenorQue.Name = "buttonMenorQue";
            this.buttonMenorQue.Size = new System.Drawing.Size(28, 21);
            this.buttonMenorQue.TabIndex = 16;
            this.buttonMenorQue.Text = "<";
            this.buttonMenorQue.UseVisualStyleBackColor = false;
            // 
            // BR_Funcionario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Cyan;
            this.ClientSize = new System.Drawing.Size(582, 208);
            this.Controls.Add(this.buttonMenorQue);
            this.Controls.Add(this.buttonMaiorQue);
            this.Controls.Add(this.buttonDiferente);
            this.Controls.Add(this.buttonMenorIgual);
            this.Controls.Add(this.buttonMaiorIgual);
            this.Controls.Add(this.buttonIgual);
            this.Controls.Add(this.textBoxPrice);
            this.Controls.Add(this.buttonUltimaPagina);
            this.Controls.Add(this.buttonProximaPagina);
            this.Controls.Add(this.buttonPaginaAnterior);
            this.Controls.Add(this.buttonPrimeiraPagina);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.comboBoxFuncionarios);
            this.Controls.Add(this.dataGridViewFuncionarios);
            this.KeyPreview = true;
            this.Name = "BR_Funcionario";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Gerenciamento de Funcionários";
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.BR_Funcionario_KeyDown);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewFuncionarios)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.DataGridView dataGridViewFuncionarios;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        public System.Windows.Forms.ComboBox comboBoxFuncionarios;
        public System.Windows.Forms.Button button1;
        public System.Windows.Forms.Button button2;
        public System.Windows.Forms.Button button3;
        public System.Windows.Forms.Button buttonPrimeiraPagina;
        public System.Windows.Forms.Button buttonPaginaAnterior;
        public System.Windows.Forms.Button buttonProximaPagina;
        public System.Windows.Forms.Button buttonUltimaPagina;
        public System.Windows.Forms.TextBox textBoxPrice;
        public System.Windows.Forms.Button buttonIgual;
        public System.Windows.Forms.Button buttonMaiorIgual;
        public System.Windows.Forms.Button buttonMenorIgual;
        public System.Windows.Forms.Button buttonDiferente;
        public System.Windows.Forms.Button buttonMaiorQue;
        public System.Windows.Forms.Button buttonMenorQue;
    }
}