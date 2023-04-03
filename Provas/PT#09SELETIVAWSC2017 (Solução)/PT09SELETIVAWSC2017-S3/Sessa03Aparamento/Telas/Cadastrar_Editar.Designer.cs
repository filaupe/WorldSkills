namespace Sessa03Aparamento.Telas
{
    partial class Cadastrar_Editar
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
            this.Codigo = new System.Windows.Forms.TextBox();
            this.Andar = new System.Windows.Forms.TextBox();
            this.Leitos = new System.Windows.Forms.TextBox();
            this.QtdQuartos = new System.Windows.Forms.TextBox();
            this.Proprietario = new System.Windows.Forms.ComboBox();
            this.Responsavel = new System.Windows.Forms.ComboBox();
            this.SituacaoAtivo = new System.Windows.Forms.Button();
            this.SituacaoManutencao = new System.Windows.Forms.Button();
            this.SituacaoInativo = new System.Windows.Forms.Button();
            this.listRadioButtons1 = new Sessa03Aparamento.ControleDeUsuario.ListRadioButtons();
            this.button1 = new System.Windows.Forms.Button();
            this.checkBoxList1 = new Sessa03Aparamento.ControleDeUsuario.CheckBoxList();
            this.SuspendLayout();
            // 
            // Codigo
            // 
            this.Codigo.Location = new System.Drawing.Point(12, 12);
            this.Codigo.Name = "Codigo";
            this.Codigo.Size = new System.Drawing.Size(237, 20);
            this.Codigo.TabIndex = 0;
            // 
            // Andar
            // 
            this.Andar.Location = new System.Drawing.Point(12, 38);
            this.Andar.Name = "Andar";
            this.Andar.Size = new System.Drawing.Size(237, 20);
            this.Andar.TabIndex = 1;
            // 
            // Leitos
            // 
            this.Leitos.Location = new System.Drawing.Point(12, 64);
            this.Leitos.Name = "Leitos";
            this.Leitos.Size = new System.Drawing.Size(237, 20);
            this.Leitos.TabIndex = 2;
            // 
            // QtdQuartos
            // 
            this.QtdQuartos.Location = new System.Drawing.Point(12, 90);
            this.QtdQuartos.Name = "QtdQuartos";
            this.QtdQuartos.Size = new System.Drawing.Size(237, 20);
            this.QtdQuartos.TabIndex = 3;
            // 
            // Proprietario
            // 
            this.Proprietario.FormattingEnabled = true;
            this.Proprietario.Location = new System.Drawing.Point(12, 116);
            this.Proprietario.Name = "Proprietario";
            this.Proprietario.Size = new System.Drawing.Size(237, 21);
            this.Proprietario.TabIndex = 4;
            // 
            // Responsavel
            // 
            this.Responsavel.FormattingEnabled = true;
            this.Responsavel.Location = new System.Drawing.Point(12, 143);
            this.Responsavel.Name = "Responsavel";
            this.Responsavel.Size = new System.Drawing.Size(237, 21);
            this.Responsavel.TabIndex = 5;
            // 
            // SituacaoAtivo
            // 
            this.SituacaoAtivo.Location = new System.Drawing.Point(12, 170);
            this.SituacaoAtivo.Name = "SituacaoAtivo";
            this.SituacaoAtivo.Size = new System.Drawing.Size(75, 23);
            this.SituacaoAtivo.TabIndex = 6;
            this.SituacaoAtivo.Text = "Ativo";
            this.SituacaoAtivo.UseVisualStyleBackColor = true;
            // 
            // SituacaoManutencao
            // 
            this.SituacaoManutencao.Location = new System.Drawing.Point(93, 170);
            this.SituacaoManutencao.Name = "SituacaoManutencao";
            this.SituacaoManutencao.Size = new System.Drawing.Size(75, 23);
            this.SituacaoManutencao.TabIndex = 7;
            this.SituacaoManutencao.Text = "Manutenção";
            this.SituacaoManutencao.UseVisualStyleBackColor = true;
            // 
            // SituacaoInativo
            // 
            this.SituacaoInativo.Location = new System.Drawing.Point(174, 170);
            this.SituacaoInativo.Name = "SituacaoInativo";
            this.SituacaoInativo.Size = new System.Drawing.Size(75, 23);
            this.SituacaoInativo.TabIndex = 8;
            this.SituacaoInativo.Text = "Inativo";
            this.SituacaoInativo.UseVisualStyleBackColor = true;
            // 
            // listRadioButtons1
            // 
            this.listRadioButtons1.AutoScroll = true;
            this.listRadioButtons1.AutoSize = true;
            this.listRadioButtons1.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.listRadioButtons1.Location = new System.Drawing.Point(12, 199);
            this.listRadioButtons1.Name = "listRadioButtons1";
            this.listRadioButtons1.Size = new System.Drawing.Size(237, 27);
            this.listRadioButtons1.TabIndex = 9;
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.button1.Location = new System.Drawing.Point(147, 370);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 10;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // checkBoxList1
            // 
            this.checkBoxList1.Location = new System.Drawing.Point(638, 12);
            this.checkBoxList1.Name = "checkBoxList1";
            this.checkBoxList1.Size = new System.Drawing.Size(150, 150);
            this.checkBoxList1.TabIndex = 11;
            // 
            // Cadastrar_Editar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.checkBoxList1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.listRadioButtons1);
            this.Controls.Add(this.SituacaoInativo);
            this.Controls.Add(this.SituacaoManutencao);
            this.Controls.Add(this.SituacaoAtivo);
            this.Controls.Add(this.Responsavel);
            this.Controls.Add(this.Proprietario);
            this.Controls.Add(this.QtdQuartos);
            this.Controls.Add(this.Leitos);
            this.Controls.Add(this.Andar);
            this.Controls.Add(this.Codigo);
            this.Name = "Cadastrar_Editar";
            this.Text = "Cadastrar_Editar";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox Codigo;
        public System.Windows.Forms.TextBox Andar;
        public System.Windows.Forms.TextBox Leitos;
        public System.Windows.Forms.TextBox QtdQuartos;
        public System.Windows.Forms.ComboBox Proprietario;
        public System.Windows.Forms.ComboBox Responsavel;
        public System.Windows.Forms.Button SituacaoAtivo;
        public System.Windows.Forms.Button SituacaoManutencao;
        public System.Windows.Forms.Button SituacaoInativo;
        public ControleDeUsuario.ListRadioButtons listRadioButtons1;
        private System.Windows.Forms.Button button1;
        public ControleDeUsuario.CheckBoxList checkBoxList1;
    }
}