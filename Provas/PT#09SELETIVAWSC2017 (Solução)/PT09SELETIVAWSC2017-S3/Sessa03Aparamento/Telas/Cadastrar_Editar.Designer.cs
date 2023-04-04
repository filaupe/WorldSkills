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
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.listRadioButtons1 = new Sessa03Aparamento.ControleDeUsuario.ListRadioButtons();
            this.checkBoxList1 = new Sessa03Aparamento.ControleDeUsuario.CheckBoxList();
            this.galeriaDeImagem1 = new Sessa03Aparamento.ControleDeUsuario.GaleriaDeImagem();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // Codigo
            // 
            this.Codigo.Location = new System.Drawing.Point(160, 76);
            this.Codigo.Name = "Codigo";
            this.Codigo.Size = new System.Drawing.Size(237, 20);
            this.Codigo.TabIndex = 0;
            // 
            // Andar
            // 
            this.Andar.Location = new System.Drawing.Point(160, 102);
            this.Andar.Name = "Andar";
            this.Andar.Size = new System.Drawing.Size(237, 20);
            this.Andar.TabIndex = 1;
            // 
            // Leitos
            // 
            this.Leitos.Location = new System.Drawing.Point(160, 128);
            this.Leitos.Name = "Leitos";
            this.Leitos.Size = new System.Drawing.Size(237, 20);
            this.Leitos.TabIndex = 2;
            // 
            // QtdQuartos
            // 
            this.QtdQuartos.Location = new System.Drawing.Point(160, 154);
            this.QtdQuartos.Name = "QtdQuartos";
            this.QtdQuartos.Size = new System.Drawing.Size(237, 20);
            this.QtdQuartos.TabIndex = 3;
            // 
            // Proprietario
            // 
            this.Proprietario.FormattingEnabled = true;
            this.Proprietario.Location = new System.Drawing.Point(160, 180);
            this.Proprietario.Name = "Proprietario";
            this.Proprietario.Size = new System.Drawing.Size(237, 21);
            this.Proprietario.TabIndex = 4;
            // 
            // Responsavel
            // 
            this.Responsavel.FormattingEnabled = true;
            this.Responsavel.Location = new System.Drawing.Point(160, 207);
            this.Responsavel.Name = "Responsavel";
            this.Responsavel.Size = new System.Drawing.Size(237, 21);
            this.Responsavel.TabIndex = 5;
            // 
            // SituacaoAtivo
            // 
            this.SituacaoAtivo.Location = new System.Drawing.Point(160, 234);
            this.SituacaoAtivo.Name = "SituacaoAtivo";
            this.SituacaoAtivo.Size = new System.Drawing.Size(75, 23);
            this.SituacaoAtivo.TabIndex = 6;
            this.SituacaoAtivo.Text = "Ativo";
            this.SituacaoAtivo.UseVisualStyleBackColor = true;
            this.SituacaoAtivo.Click += new System.EventHandler(this.SituacaoAtivo_Click);
            // 
            // SituacaoManutencao
            // 
            this.SituacaoManutencao.Location = new System.Drawing.Point(241, 234);
            this.SituacaoManutencao.Name = "SituacaoManutencao";
            this.SituacaoManutencao.Size = new System.Drawing.Size(75, 23);
            this.SituacaoManutencao.TabIndex = 7;
            this.SituacaoManutencao.Text = "Manutenção";
            this.SituacaoManutencao.UseVisualStyleBackColor = true;
            this.SituacaoManutencao.Click += new System.EventHandler(this.SituacaoManutencao_Click);
            // 
            // SituacaoInativo
            // 
            this.SituacaoInativo.Location = new System.Drawing.Point(322, 234);
            this.SituacaoInativo.Name = "SituacaoInativo";
            this.SituacaoInativo.Size = new System.Drawing.Size(75, 23);
            this.SituacaoInativo.TabIndex = 8;
            this.SituacaoInativo.Text = "Inativo";
            this.SituacaoInativo.UseVisualStyleBackColor = true;
            this.SituacaoInativo.Click += new System.EventHandler(this.SituacaoInativo_Click);
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.checkBoxList1);
            this.panel1.Location = new System.Drawing.Point(633, 157);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(200, 281);
            this.panel1.TabIndex = 12;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.galeriaDeImagem1);
            this.panel2.Location = new System.Drawing.Point(418, 157);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(200, 281);
            this.panel2.TabIndex = 13;
            // 
            // panel3
            // 
            this.panel3.AutoScroll = true;
            this.panel3.Controls.Add(this.listRadioButtons1);
            this.panel3.Location = new System.Drawing.Point(418, 76);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(415, 65);
            this.panel3.TabIndex = 14;
            // 
            // panel4
            // 
            this.panel4.Location = new System.Drawing.Point(160, 276);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(237, 162);
            this.panel4.TabIndex = 15;
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.button1.Location = new System.Drawing.Point(39, 415);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 16;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // listRadioButtons1
            // 
            this.listRadioButtons1.AutoScroll = true;
            this.listRadioButtons1.Location = new System.Drawing.Point(3, 3);
            this.listRadioButtons1.Name = "listRadioButtons1";
            this.listRadioButtons1.Size = new System.Drawing.Size(397, 59);
            this.listRadioButtons1.TabIndex = 0;
            // 
            // checkBoxList1
            // 
            this.checkBoxList1.Location = new System.Drawing.Point(3, 3);
            this.checkBoxList1.Name = "checkBoxList1";
            this.checkBoxList1.Size = new System.Drawing.Size(194, 275);
            this.checkBoxList1.TabIndex = 11;
            // 
            // galeriaDeImagem1
            // 
            this.galeriaDeImagem1.Location = new System.Drawing.Point(3, 3);
            this.galeriaDeImagem1.Name = "galeriaDeImagem1";
            this.galeriaDeImagem1.Size = new System.Drawing.Size(194, 275);
            this.galeriaDeImagem1.TabIndex = 0;
            // 
            // Cadastrar_Editar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(845, 450);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
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
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
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
        public ControleDeUsuario.CheckBoxList checkBoxList1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        public ControleDeUsuario.ListRadioButtons listRadioButtons1;
        private System.Windows.Forms.Button button1;
        private ControleDeUsuario.GaleriaDeImagem galeriaDeImagem1;
    }
}