namespace PT09SELETIVAWSC2017_S4.Telas
{
    partial class TelaConfirmacao
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
            this.Imagem = new System.Windows.Forms.PictureBox();
            this.Nome = new System.Windows.Forms.Label();
            this.Endereco = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Imagem)).BeginInit();
            this.SuspendLayout();
            // 
            // Imagem
            // 
            this.Imagem.Location = new System.Drawing.Point(12, 12);
            this.Imagem.Name = "Imagem";
            this.Imagem.Size = new System.Drawing.Size(145, 121);
            this.Imagem.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.Imagem.TabIndex = 0;
            this.Imagem.TabStop = false;
            // 
            // Nome
            // 
            this.Nome.AutoSize = true;
            this.Nome.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Nome.Location = new System.Drawing.Point(163, 12);
            this.Nome.Name = "Nome";
            this.Nome.Size = new System.Drawing.Size(121, 24);
            this.Nome.TabIndex = 1;
            this.Nome.Text = "Nome Hotel";
            // 
            // Endereco
            // 
            this.Endereco.AutoSize = true;
            this.Endereco.Location = new System.Drawing.Point(164, 36);
            this.Endereco.Name = "Endereco";
            this.Endereco.Size = new System.Drawing.Size(53, 13);
            this.Endereco.TabIndex = 2;
            this.Endereco.Text = "Endereço";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(12, 148);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(462, 167);
            this.textBox1.TabIndex = 3;
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.button1.Location = new System.Drawing.Point(185, 474);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(148, 55);
            this.button1.TabIndex = 4;
            this.button1.Text = "Confirmar";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // TelaConfirmacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(552, 560);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.Endereco);
            this.Controls.Add(this.Nome);
            this.Controls.Add(this.Imagem);
            this.Name = "TelaConfirmacao";
            this.Text = "Tela de Confirmação";
            this.Load += new System.EventHandler(this.TelaConfirmacao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Imagem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.PictureBox Imagem;
        public System.Windows.Forms.Label Nome;
        public System.Windows.Forms.Label Endereco;
        public System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button button1;
    }
}