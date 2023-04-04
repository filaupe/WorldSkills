namespace PT09SELETIVAWSC2017_S4.Controles_de_usuario
{
    partial class HotelControl
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

        #region Código gerado pelo Designer de Componentes

        /// <summary> 
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.Imagem = new System.Windows.Forms.PictureBox();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.NomeHotel = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.Preco = new System.Windows.Forms.Label();
            this.qtdDiarias = new System.Windows.Forms.Label();
            this.Endereco = new System.Windows.Forms.Label();
            this.Aviso = new System.Windows.Forms.Label();
            this.TipoQuarto = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.qtdAdultos = new System.Windows.Forms.NumericUpDown();
            this.Reservar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Imagem)).BeginInit();
            this.tableLayoutPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.qtdAdultos)).BeginInit();
            this.SuspendLayout();
            // 
            // Imagem
            // 
            this.Imagem.BackColor = System.Drawing.Color.White;
            this.Imagem.Location = new System.Drawing.Point(3, 3);
            this.Imagem.Name = "Imagem";
            this.Imagem.Size = new System.Drawing.Size(159, 139);
            this.Imagem.TabIndex = 0;
            this.Imagem.TabStop = false;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.BackColor = System.Drawing.Color.Silver;
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Controls.Add(this.panel1, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.panel2, 0, 1);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(168, 3);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 19.42446F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 80.57554F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(566, 139);
            this.tableLayoutPanel1.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DimGray;
            this.panel1.Controls.Add(this.NomeHotel);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(560, 20);
            this.panel1.TabIndex = 0;
            // 
            // NomeHotel
            // 
            this.NomeHotel.AutoSize = true;
            this.NomeHotel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NomeHotel.ForeColor = System.Drawing.Color.White;
            this.NomeHotel.Location = new System.Drawing.Point(-1, 0);
            this.NomeHotel.Name = "NomeHotel";
            this.NomeHotel.Size = new System.Drawing.Size(115, 20);
            this.NomeHotel.TabIndex = 0;
            this.NomeHotel.Text = "Nome do Hotel";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.Preco);
            this.panel2.Controls.Add(this.qtdDiarias);
            this.panel2.Controls.Add(this.Endereco);
            this.panel2.Controls.Add(this.Aviso);
            this.panel2.Controls.Add(this.TipoQuarto);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.qtdAdultos);
            this.panel2.Controls.Add(this.Reservar);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(3, 29);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(560, 107);
            this.panel2.TabIndex = 1;
            // 
            // Preco
            // 
            this.Preco.AutoSize = true;
            this.Preco.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Preco.Location = new System.Drawing.Point(409, 5);
            this.Preco.Name = "Preco";
            this.Preco.Size = new System.Drawing.Size(109, 25);
            this.Preco.TabIndex = 7;
            this.Preco.Text = "R$ Preço";
            // 
            // qtdDiarias
            // 
            this.qtdDiarias.AutoSize = true;
            this.qtdDiarias.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.qtdDiarias.Location = new System.Drawing.Point(300, 9);
            this.qtdDiarias.Name = "qtdDiarias";
            this.qtdDiarias.Size = new System.Drawing.Size(98, 15);
            this.qtdDiarias.TabIndex = 6;
            this.qtdDiarias.Text = "Preoço x diárias:";
            // 
            // Endereco
            // 
            this.Endereco.AutoSize = true;
            this.Endereco.Location = new System.Drawing.Point(210, 33);
            this.Endereco.Name = "Endereco";
            this.Endereco.Size = new System.Drawing.Size(56, 13);
            this.Endereco.TabIndex = 5;
            this.Endereco.Text = "Endereço:";
            // 
            // Aviso
            // 
            this.Aviso.AutoSize = true;
            this.Aviso.ForeColor = System.Drawing.Color.Red;
            this.Aviso.Location = new System.Drawing.Point(257, 86);
            this.Aviso.Name = "Aviso";
            this.Aviso.Size = new System.Drawing.Size(141, 13);
            this.Aviso.TabIndex = 4;
            this.Aviso.Text = "Apenas 5 vagas disponíveis";
            this.Aviso.Visible = false;
            // 
            // TipoQuarto
            // 
            this.TipoQuarto.Enabled = false;
            this.TipoQuarto.FormattingEnabled = true;
            this.TipoQuarto.Location = new System.Drawing.Point(109, 82);
            this.TipoQuarto.Name = "TipoQuarto";
            this.TipoQuarto.Size = new System.Drawing.Size(131, 21);
            this.TipoQuarto.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 86);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(42, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Adultos";
            // 
            // qtdAdultos
            // 
            this.qtdAdultos.Enabled = false;
            this.qtdAdultos.Location = new System.Drawing.Point(61, 83);
            this.qtdAdultos.Maximum = new decimal(new int[] {
            999999,
            0,
            0,
            0});
            this.qtdAdultos.Name = "qtdAdultos";
            this.qtdAdultos.Size = new System.Drawing.Size(42, 20);
            this.qtdAdultos.TabIndex = 1;
            // 
            // Reservar
            // 
            this.Reservar.BackColor = System.Drawing.Color.Goldenrod;
            this.Reservar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Reservar.FlatAppearance.BorderSize = 0;
            this.Reservar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Reservar.Location = new System.Drawing.Point(414, 60);
            this.Reservar.Name = "Reservar";
            this.Reservar.Size = new System.Drawing.Size(145, 46);
            this.Reservar.TabIndex = 0;
            this.Reservar.Text = "Reserve  agora";
            this.Reservar.UseVisualStyleBackColor = false;
            // 
            // HotelControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Transparent;
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.Imagem);
            this.Name = "HotelControl";
            this.Size = new System.Drawing.Size(737, 145);
            ((System.ComponentModel.ISupportInitialize)(this.Imagem)).EndInit();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.qtdAdultos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.Label label1;
        public System.Windows.Forms.NumericUpDown qtdAdultos;
        public System.Windows.Forms.Button Reservar;
        public System.Windows.Forms.Label Aviso;
        public System.Windows.Forms.ComboBox TipoQuarto;
        public System.Windows.Forms.Label Preco;
        public System.Windows.Forms.Label qtdDiarias;
        public System.Windows.Forms.Label Endereco;
        public System.Windows.Forms.PictureBox Imagem;
        public System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        public System.Windows.Forms.Panel panel1;
        public System.Windows.Forms.Label NomeHotel;
        public System.Windows.Forms.Panel panel2;
    }
}
