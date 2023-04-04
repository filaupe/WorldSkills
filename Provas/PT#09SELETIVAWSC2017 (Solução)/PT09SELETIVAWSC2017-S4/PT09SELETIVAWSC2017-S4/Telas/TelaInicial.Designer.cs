namespace PT09SELETIVAWSC2017_S4.Telas
{
    partial class TelaInicial
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
            this.SearchBar = new System.Windows.Forms.TextBox();
            this.hotels = new System.Windows.Forms.DataGridView();
            this.Checkin = new System.Windows.Forms.DateTimePicker();
            this.Checkout = new System.Windows.Forms.DateTimePicker();
            this.hospedes = new System.Windows.Forms.ComboBox();
            this.agendabtn = new System.Windows.Forms.Button();
            this.Exibirbtn = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.labelCI = new System.Windows.Forms.Label();
            this.labelCO = new System.Windows.Forms.Label();
            this.labelDias = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.hotels)).BeginInit();
            this.SuspendLayout();
            // 
            // SearchBar
            // 
            this.SearchBar.Location = new System.Drawing.Point(143, 104);
            this.SearchBar.Name = "SearchBar";
            this.SearchBar.Size = new System.Drawing.Size(497, 20);
            this.SearchBar.TabIndex = 0;
            this.SearchBar.TextChanged += new System.EventHandler(this.SearchBar_TextChanged);
            // 
            // hotels
            // 
            this.hotels.AllowUserToAddRows = false;
            this.hotels.AllowUserToDeleteRows = false;
            this.hotels.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.hotels.Location = new System.Drawing.Point(143, 255);
            this.hotels.Name = "hotels";
            this.hotels.ReadOnly = true;
            this.hotels.Size = new System.Drawing.Size(497, 150);
            this.hotels.TabIndex = 1;
            // 
            // Checkin
            // 
            this.Checkin.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Checkin.Location = new System.Drawing.Point(271, 130);
            this.Checkin.Name = "Checkin";
            this.Checkin.Size = new System.Drawing.Size(102, 20);
            this.Checkin.TabIndex = 2;
            this.Checkin.ValueChanged += new System.EventHandler(this.Checkin_ValueChanged);
            // 
            // Checkout
            // 
            this.Checkout.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Checkout.Location = new System.Drawing.Point(538, 130);
            this.Checkout.Name = "Checkout";
            this.Checkout.Size = new System.Drawing.Size(102, 20);
            this.Checkout.TabIndex = 3;
            this.Checkout.ValueChanged += new System.EventHandler(this.Checkout_ValueChanged);
            // 
            // hospedes
            // 
            this.hospedes.FormattingEnabled = true;
            this.hospedes.Location = new System.Drawing.Point(280, 183);
            this.hospedes.Name = "hospedes";
            this.hospedes.Size = new System.Drawing.Size(193, 21);
            this.hospedes.TabIndex = 4;
            // 
            // agendabtn
            // 
            this.agendabtn.Location = new System.Drawing.Point(620, 12);
            this.agendabtn.Name = "agendabtn";
            this.agendabtn.Size = new System.Drawing.Size(168, 53);
            this.agendabtn.TabIndex = 5;
            this.agendabtn.Text = "Agenda";
            this.agendabtn.UseVisualStyleBackColor = true;
            // 
            // Exibirbtn
            // 
            this.Exibirbtn.Location = new System.Drawing.Point(499, 183);
            this.Exibirbtn.Name = "Exibirbtn";
            this.Exibirbtn.Size = new System.Drawing.Size(141, 21);
            this.Exibirbtn.TabIndex = 6;
            this.Exibirbtn.Text = "Exibir Disponíveis";
            this.Exibirbtn.UseVisualStyleBackColor = true;
            this.Exibirbtn.Click += new System.EventHandler(this.Exibirbtn_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(190, 135);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Check-In";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(458, 135);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "Check-Out";
            // 
            // labelCI
            // 
            this.labelCI.AutoSize = true;
            this.labelCI.Location = new System.Drawing.Point(286, 153);
            this.labelCI.Name = "labelCI";
            this.labelCI.Size = new System.Drawing.Size(78, 13);
            this.labelCI.TabIndex = 9;
            this.labelCI.Text = "Dia da semana";
            // 
            // labelCO
            // 
            this.labelCO.AutoSize = true;
            this.labelCO.Location = new System.Drawing.Point(550, 153);
            this.labelCO.Name = "labelCO";
            this.labelCO.Size = new System.Drawing.Size(78, 13);
            this.labelCO.TabIndex = 10;
            this.labelCO.Text = "Dia da semana";
            // 
            // labelDias
            // 
            this.labelDias.AutoSize = true;
            this.labelDias.Location = new System.Drawing.Point(646, 135);
            this.labelDias.Name = "labelDias";
            this.labelDias.Size = new System.Drawing.Size(71, 13);
            this.labelDias.TabIndex = 11;
            this.labelDias.Text = "Dias de diária";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(238, 43);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(327, 25);
            this.label3.TabIndex = 12;
            this.label3.Text = "Qual seu destino em Abu Dhabi?";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(140, 239);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 13);
            this.label4.TabIndex = 13;
            this.label4.Text = "Hotéis Encontrados";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(219, 187);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(55, 13);
            this.label5.TabIndex = 14;
            this.label5.Text = "Hóspedes";
            // 
            // TelaInicial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.labelDias);
            this.Controls.Add(this.labelCO);
            this.Controls.Add(this.labelCI);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Exibirbtn);
            this.Controls.Add(this.agendabtn);
            this.Controls.Add(this.hospedes);
            this.Controls.Add(this.Checkout);
            this.Controls.Add(this.Checkin);
            this.Controls.Add(this.hotels);
            this.Controls.Add(this.SearchBar);
            this.Name = "TelaInicial";
            this.Text = "Tela Inicial de Reservas - Bem-Vindo";
            this.Load += new System.EventHandler(this.TelaInicial_Load);
            ((System.ComponentModel.ISupportInitialize)(this.hotels)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox SearchBar;
        private System.Windows.Forms.DataGridView hotels;
        private System.Windows.Forms.DateTimePicker Checkin;
        private System.Windows.Forms.DateTimePicker Checkout;
        private System.Windows.Forms.ComboBox hospedes;
        private System.Windows.Forms.Button agendabtn;
        private System.Windows.Forms.Button Exibirbtn;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label labelCI;
        private System.Windows.Forms.Label labelCO;
        private System.Windows.Forms.Label labelDias;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
    }
}