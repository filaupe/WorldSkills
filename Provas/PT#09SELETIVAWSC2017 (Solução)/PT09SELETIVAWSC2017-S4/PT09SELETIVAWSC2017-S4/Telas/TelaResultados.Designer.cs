namespace PT09SELETIVAWSC2017_S4.Telas
{
    partial class TelaResultados
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.Estacionamento = new System.Windows.Forms.CheckBox();
            this.Wifi = new System.Windows.Forms.CheckBox();
            this.CafeDaManha = new System.Windows.Forms.CheckBox();
            this.MaisProcurados = new System.Windows.Forms.LinkLabel();
            this.OrdemAlfabetica = new System.Windows.Forms.LinkLabel();
            this.MenorPreco = new System.Windows.Forms.LinkLabel();
            this.panelee = new System.Windows.Forms.Panel();
            this.Hoteis = new System.Windows.Forms.TableLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.Checkout = new System.Windows.Forms.DateTimePicker();
            this.Checkin = new System.Windows.Forms.DateTimePicker();
            this.SearchBar = new System.Windows.Forms.TextBox();
            this.Search = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.panelee.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Controls.Add(this.Estacionamento);
            this.panel1.Controls.Add(this.Wifi);
            this.panel1.Controls.Add(this.CafeDaManha);
            this.panel1.Controls.Add(this.MaisProcurados);
            this.panel1.Controls.Add(this.OrdemAlfabetica);
            this.panel1.Controls.Add(this.MenorPreco);
            this.panel1.Controls.Add(this.panelee);
            this.panel1.Location = new System.Drawing.Point(39, 79);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(754, 429);
            this.panel1.TabIndex = 0;
            // 
            // Estacionamento
            // 
            this.Estacionamento.AutoSize = true;
            this.Estacionamento.Location = new System.Drawing.Point(563, 7);
            this.Estacionamento.Name = "Estacionamento";
            this.Estacionamento.Size = new System.Drawing.Size(102, 17);
            this.Estacionamento.TabIndex = 7;
            this.Estacionamento.Text = "Estacionamento";
            this.Estacionamento.UseVisualStyleBackColor = true;
            this.Estacionamento.CheckedChanged += new System.EventHandler(this.Estacionamento_CheckedChanged);
            // 
            // Wifi
            // 
            this.Wifi.AutoSize = true;
            this.Wifi.Location = new System.Drawing.Point(510, 7);
            this.Wifi.Name = "Wifi";
            this.Wifi.Size = new System.Drawing.Size(47, 17);
            this.Wifi.TabIndex = 6;
            this.Wifi.Text = "Wi-fi";
            this.Wifi.UseVisualStyleBackColor = true;
            this.Wifi.CheckedChanged += new System.EventHandler(this.Wifi_CheckedChanged);
            // 
            // CafeDaManha
            // 
            this.CafeDaManha.AutoSize = true;
            this.CafeDaManha.Location = new System.Drawing.Point(405, 7);
            this.CafeDaManha.Name = "CafeDaManha";
            this.CafeDaManha.Size = new System.Drawing.Size(99, 17);
            this.CafeDaManha.TabIndex = 5;
            this.CafeDaManha.Text = "Café da Manhã";
            this.CafeDaManha.UseVisualStyleBackColor = true;
            this.CafeDaManha.CheckedChanged += new System.EventHandler(this.CafeDaManha_CheckedChanged);
            // 
            // MaisProcurados
            // 
            this.MaisProcurados.AutoSize = true;
            this.MaisProcurados.Location = new System.Drawing.Point(229, 7);
            this.MaisProcurados.Name = "MaisProcurados";
            this.MaisProcurados.Size = new System.Drawing.Size(85, 13);
            this.MaisProcurados.TabIndex = 4;
            this.MaisProcurados.TabStop = true;
            this.MaisProcurados.Text = "Mais procurados";
            this.MaisProcurados.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.MaisProcurados_LinkClicked);
            // 
            // OrdemAlfabetica
            // 
            this.OrdemAlfabetica.AutoSize = true;
            this.OrdemAlfabetica.Location = new System.Drawing.Point(135, 7);
            this.OrdemAlfabetica.Name = "OrdemAlfabetica";
            this.OrdemAlfabetica.Size = new System.Drawing.Size(88, 13);
            this.OrdemAlfabetica.TabIndex = 3;
            this.OrdemAlfabetica.TabStop = true;
            this.OrdemAlfabetica.Text = "Ordem Alfabética";
            this.OrdemAlfabetica.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.OrdemAlfabetica_LinkClicked);
            // 
            // MenorPreco
            // 
            this.MenorPreco.AutoSize = true;
            this.MenorPreco.Location = new System.Drawing.Point(61, 7);
            this.MenorPreco.Name = "MenorPreco";
            this.MenorPreco.Size = new System.Drawing.Size(68, 13);
            this.MenorPreco.TabIndex = 2;
            this.MenorPreco.TabStop = true;
            this.MenorPreco.Text = "Menor Preço";
            this.MenorPreco.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.MenorPreco.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.MenorPreco_LinkClicked);
            // 
            // panelee
            // 
            this.panelee.AutoScroll = true;
            this.panelee.Controls.Add(this.Hoteis);
            this.panelee.Location = new System.Drawing.Point(3, 28);
            this.panelee.Name = "panelee";
            this.panelee.Size = new System.Drawing.Size(744, 394);
            this.panelee.TabIndex = 1;
            // 
            // Hoteis
            // 
            this.Hoteis.AutoScroll = true;
            this.Hoteis.AutoSize = true;
            this.Hoteis.ColumnCount = 1;
            this.Hoteis.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.Hoteis.Location = new System.Drawing.Point(3, 3);
            this.Hoteis.Name = "Hoteis";
            this.Hoteis.RowCount = 1;
            this.Hoteis.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.Hoteis.Size = new System.Drawing.Size(738, 150);
            this.Hoteis.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(270, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(288, 16);
            this.label1.TabIndex = 1;
            this.label1.Text = "Continue sua pesquisa e escolha seu destino ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(206, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Check-Out";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(42, 58);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 13);
            this.label3.TabIndex = 11;
            this.label3.Text = "Check-In";
            // 
            // Checkout
            // 
            this.Checkout.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Checkout.Location = new System.Drawing.Point(270, 53);
            this.Checkout.Name = "Checkout";
            this.Checkout.Size = new System.Drawing.Size(102, 20);
            this.Checkout.TabIndex = 10;
            // 
            // Checkin
            // 
            this.Checkin.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Checkin.Location = new System.Drawing.Point(98, 53);
            this.Checkin.Name = "Checkin";
            this.Checkin.Size = new System.Drawing.Size(102, 20);
            this.Checkin.TabIndex = 9;
            // 
            // SearchBar
            // 
            this.SearchBar.Location = new System.Drawing.Point(378, 53);
            this.SearchBar.Name = "SearchBar";
            this.SearchBar.Size = new System.Drawing.Size(315, 20);
            this.SearchBar.TabIndex = 13;
            // 
            // Search
            // 
            this.Search.Location = new System.Drawing.Point(699, 49);
            this.Search.Name = "Search";
            this.Search.Size = new System.Drawing.Size(94, 28);
            this.Search.TabIndex = 14;
            this.Search.Text = "Pesquisar";
            this.Search.UseVisualStyleBackColor = true;
            // 
            // TelaResultados
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(834, 542);
            this.Controls.Add(this.Search);
            this.Controls.Add(this.SearchBar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.Checkout);
            this.Controls.Add(this.Checkin);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel1);
            this.Name = "TelaResultados";
            this.Text = "Tela de Resultado da Pesquisa";
            this.Load += new System.EventHandler(this.TelaResultados_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panelee.ResumeLayout(false);
            this.panelee.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panelee;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker Checkout;
        private System.Windows.Forms.DateTimePicker Checkin;
        private System.Windows.Forms.CheckBox Estacionamento;
        private System.Windows.Forms.CheckBox Wifi;
        private System.Windows.Forms.CheckBox CafeDaManha;
        private System.Windows.Forms.LinkLabel MaisProcurados;
        private System.Windows.Forms.LinkLabel OrdemAlfabetica;
        private System.Windows.Forms.LinkLabel MenorPreco;
        private System.Windows.Forms.TextBox SearchBar;
        private System.Windows.Forms.Button Search;
        private System.Windows.Forms.TableLayoutPanel Hoteis;
    }
}