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
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.SearchBar = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.CheckIn = new System.Windows.Forms.MaskedTextBox();
            this.CheckOut = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.labelCheckInDay = new System.Windows.Forms.Label();
            this.labelCheckOutDay = new System.Windows.Forms.Label();
            this.labelDaysCount = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBoxHospedes = new System.Windows.Forms.ComboBox();
            this.DisposeShow = new System.Windows.Forms.Button();
            this.dataGridViewResults = new System.Windows.Forms.DataGridView();
            this.hOTNOMEDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hOTENDERECODataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hotelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.bdAbuDhabiTurS04DataSet = new PT09SELETIVAWSC2017_S4.bdAbuDhabiTurS04DataSet();
            this.label5 = new System.Windows.Forms.Label();
            this.hotelTableAdapter = new PT09SELETIVAWSC2017_S4.bdAbuDhabiTurS04DataSetTableAdapters.HotelTableAdapter();
            this.buttonAgenda = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewResults)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hotelBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdAbuDhabiTurS04DataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(235, 38);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(327, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Qual seu destino em Abu Dhabi?";
            // 
            // SearchBar
            // 
            this.SearchBar.Location = new System.Drawing.Point(178, 111);
            this.SearchBar.Name = "SearchBar";
            this.SearchBar.Size = new System.Drawing.Size(444, 20);
            this.SearchBar.TabIndex = 1;
            this.SearchBar.Text = "Pesquise com um endereço, bairro ou hotel";
            this.SearchBar.TextChanged += new System.EventHandler(this.SearchBar_TextChanged);
            this.SearchBar.MouseEnter += new System.EventHandler(this.SearchBar_MouseEnter);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(175, 146);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Check-In";
            // 
            // CheckIn
            // 
            this.CheckIn.Location = new System.Drawing.Point(231, 143);
            this.CheckIn.Mask = "00/00/0000";
            this.CheckIn.Name = "CheckIn";
            this.CheckIn.Size = new System.Drawing.Size(132, 20);
            this.CheckIn.TabIndex = 4;
            this.CheckIn.ValidatingType = typeof(System.DateTime);
            this.CheckIn.Leave += new System.EventHandler(this.CheckIn_Leave);
            // 
            // CheckOut
            // 
            this.CheckOut.Location = new System.Drawing.Point(490, 143);
            this.CheckOut.Mask = "00/00/0000";
            this.CheckOut.Name = "CheckOut";
            this.CheckOut.Size = new System.Drawing.Size(132, 20);
            this.CheckOut.TabIndex = 5;
            this.CheckOut.ValidatingType = typeof(System.DateTime);
            this.CheckOut.Leave += new System.EventHandler(this.CheckOut_Leave);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(428, 146);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Check-out";
            // 
            // labelCheckInDay
            // 
            this.labelCheckInDay.AutoSize = true;
            this.labelCheckInDay.Location = new System.Drawing.Point(253, 166);
            this.labelCheckInDay.Name = "labelCheckInDay";
            this.labelCheckInDay.Size = new System.Drawing.Size(78, 13);
            this.labelCheckInDay.TabIndex = 8;
            this.labelCheckInDay.Text = "Dia da semana";
            // 
            // labelCheckOutDay
            // 
            this.labelCheckOutDay.AutoSize = true;
            this.labelCheckOutDay.Location = new System.Drawing.Point(517, 166);
            this.labelCheckOutDay.Name = "labelCheckOutDay";
            this.labelCheckOutDay.Size = new System.Drawing.Size(78, 13);
            this.labelCheckOutDay.TabIndex = 9;
            this.labelCheckOutDay.Text = "Dia da semana";
            // 
            // labelDaysCount
            // 
            this.labelDaysCount.AutoSize = true;
            this.labelDaysCount.Location = new System.Drawing.Point(628, 146);
            this.labelDaysCount.Name = "labelDaysCount";
            this.labelDaysCount.Size = new System.Drawing.Size(84, 13);
            this.labelDaysCount.TabIndex = 10;
            this.labelDaysCount.Text = "Quantidade dias";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(274, 199);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(55, 13);
            this.label4.TabIndex = 11;
            this.label4.Text = "Hóspedes";
            // 
            // comboBoxHospedes
            // 
            this.comboBoxHospedes.FormattingEnabled = true;
            this.comboBoxHospedes.Location = new System.Drawing.Point(335, 196);
            this.comboBoxHospedes.Name = "comboBoxHospedes";
            this.comboBoxHospedes.Size = new System.Drawing.Size(156, 21);
            this.comboBoxHospedes.TabIndex = 12;
            // 
            // DisposeShow
            // 
            this.DisposeShow.Location = new System.Drawing.Point(497, 196);
            this.DisposeShow.Name = "DisposeShow";
            this.DisposeShow.Size = new System.Drawing.Size(125, 21);
            this.DisposeShow.TabIndex = 13;
            this.DisposeShow.Text = "Exibir Disponíveis";
            this.DisposeShow.UseVisualStyleBackColor = true;
            this.DisposeShow.Click += new System.EventHandler(this.DisposeShow_Click);
            // 
            // dataGridViewResults
            // 
            this.dataGridViewResults.AllowUserToAddRows = false;
            this.dataGridViewResults.AllowUserToDeleteRows = false;
            this.dataGridViewResults.AutoGenerateColumns = false;
            this.dataGridViewResults.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewResults.ColumnHeadersVisible = false;
            this.dataGridViewResults.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.hOTNOMEDataGridViewTextBoxColumn,
            this.hOTENDERECODataGridViewTextBoxColumn});
            this.dataGridViewResults.DataSource = this.hotelBindingSource;
            this.dataGridViewResults.Location = new System.Drawing.Point(178, 245);
            this.dataGridViewResults.Name = "dataGridViewResults";
            this.dataGridViewResults.ReadOnly = true;
            this.dataGridViewResults.RowHeadersVisible = false;
            this.dataGridViewResults.Size = new System.Drawing.Size(444, 151);
            this.dataGridViewResults.TabIndex = 14;
            // 
            // hOTNOMEDataGridViewTextBoxColumn
            // 
            this.hOTNOMEDataGridViewTextBoxColumn.DataPropertyName = "HOTNOME";
            this.hOTNOMEDataGridViewTextBoxColumn.HeaderText = "HOTNOME";
            this.hOTNOMEDataGridViewTextBoxColumn.Name = "hOTNOMEDataGridViewTextBoxColumn";
            this.hOTNOMEDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // hOTENDERECODataGridViewTextBoxColumn
            // 
            this.hOTENDERECODataGridViewTextBoxColumn.DataPropertyName = "HOTENDERECO";
            this.hOTENDERECODataGridViewTextBoxColumn.HeaderText = "HOTENDERECO";
            this.hOTENDERECODataGridViewTextBoxColumn.Name = "hOTENDERECODataGridViewTextBoxColumn";
            this.hOTENDERECODataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // hotelBindingSource
            // 
            this.hotelBindingSource.DataMember = "Hotel";
            this.hotelBindingSource.DataSource = this.bdAbuDhabiTurS04DataSet;
            // 
            // bdAbuDhabiTurS04DataSet
            // 
            this.bdAbuDhabiTurS04DataSet.DataSetName = "bdAbuDhabiTurS04DataSet";
            this.bdAbuDhabiTurS04DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(175, 229);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(100, 13);
            this.label5.TabIndex = 15;
            this.label5.Text = "Hóteis Encontrados";
            // 
            // hotelTableAdapter
            // 
            this.hotelTableAdapter.ClearBeforeFill = true;
            // 
            // buttonAgenda
            // 
            this.buttonAgenda.Location = new System.Drawing.Point(12, 12);
            this.buttonAgenda.Name = "buttonAgenda";
            this.buttonAgenda.Size = new System.Drawing.Size(110, 51);
            this.buttonAgenda.TabIndex = 16;
            this.buttonAgenda.Text = "Cadastro Agenda";
            this.buttonAgenda.UseVisualStyleBackColor = true;
            this.buttonAgenda.Click += new System.EventHandler(this.buttonAgenda_Click);
            // 
            // TelaInicial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 431);
            this.Controls.Add(this.buttonAgenda);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dataGridViewResults);
            this.Controls.Add(this.DisposeShow);
            this.Controls.Add(this.comboBoxHospedes);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.labelDaysCount);
            this.Controls.Add(this.labelCheckOutDay);
            this.Controls.Add(this.labelCheckInDay);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.CheckOut);
            this.Controls.Add(this.CheckIn);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.SearchBar);
            this.Controls.Add(this.label1);
            this.Name = "TelaInicial";
            this.Text = "TelaInicial";
            this.Load += new System.EventHandler(this.TelaInicial_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewResults)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hotelBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdAbuDhabiTurS04DataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox SearchBar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.MaskedTextBox CheckIn;
        private System.Windows.Forms.MaskedTextBox CheckOut;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label labelCheckInDay;
        private System.Windows.Forms.Label labelCheckOutDay;
        private System.Windows.Forms.Label labelDaysCount;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBoxHospedes;
        private System.Windows.Forms.Button DisposeShow;
        private System.Windows.Forms.DataGridView dataGridViewResults;
        private System.Windows.Forms.Label label5;
        private bdAbuDhabiTurS04DataSet bdAbuDhabiTurS04DataSet;
        private System.Windows.Forms.BindingSource hotelBindingSource;
        private bdAbuDhabiTurS04DataSetTableAdapters.HotelTableAdapter hotelTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn hOTNOMEDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn hOTENDERECODataGridViewTextBoxColumn;
        private System.Windows.Forms.Button buttonAgenda;
    }
}