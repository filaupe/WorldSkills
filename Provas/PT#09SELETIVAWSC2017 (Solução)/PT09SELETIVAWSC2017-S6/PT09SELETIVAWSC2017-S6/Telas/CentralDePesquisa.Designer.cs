namespace PT09SELETIVAWSC2017_S6.Telas
{
    partial class CentralDePesquisa
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.SearchBox = new System.Windows.Forms.TextBox();
            this.SearchBtn = new System.Windows.Forms.Label();
            this.comboTabela = new System.Windows.Forms.ComboBox();
            this.comboAtributo = new System.Windows.Forms.ComboBox();
            this.comboCriterios = new System.Windows.Forms.ComboBox();
            this.Tabela = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Tabela)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(78, 50);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(170, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Sobre o que você quer pesquisar?";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(420, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(120, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Qual o atributo, campo?";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(66, 83);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Critério de Pesquisa";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(232, 86);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(31, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Valor";
            // 
            // SearchBox
            // 
            this.SearchBox.Location = new System.Drawing.Point(235, 102);
            this.SearchBox.Name = "SearchBox";
            this.SearchBox.Size = new System.Drawing.Size(163, 20);
            this.SearchBox.TabIndex = 4;
            // 
            // SearchBtn
            // 
            this.SearchBtn.AutoSize = true;
            this.SearchBtn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.SearchBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SearchBtn.Location = new System.Drawing.Point(404, 100);
            this.SearchBtn.Name = "SearchBtn";
            this.SearchBtn.Size = new System.Drawing.Size(32, 24);
            this.SearchBtn.TabIndex = 5;
            this.SearchBtn.Text = "🔍";
            this.SearchBtn.Click += new System.EventHandler(this.SearchBtn_Click);
            // 
            // comboTabela
            // 
            this.comboTabela.FormattingEnabled = true;
            this.comboTabela.Location = new System.Drawing.Point(254, 46);
            this.comboTabela.Name = "comboTabela";
            this.comboTabela.Size = new System.Drawing.Size(144, 21);
            this.comboTabela.TabIndex = 6;
            this.comboTabela.SelectedIndexChanged += new System.EventHandler(this.comboTabela_SelectedIndexChanged);
            // 
            // comboAtributo
            // 
            this.comboAtributo.FormattingEnabled = true;
            this.comboAtributo.Location = new System.Drawing.Point(564, 46);
            this.comboAtributo.Name = "comboAtributo";
            this.comboAtributo.Size = new System.Drawing.Size(174, 21);
            this.comboAtributo.TabIndex = 7;
            this.comboAtributo.SelectedIndexChanged += new System.EventHandler(this.comboAtributo_SelectedIndexChanged);
            // 
            // comboCriterios
            // 
            this.comboCriterios.FormattingEnabled = true;
            this.comboCriterios.Location = new System.Drawing.Point(69, 102);
            this.comboCriterios.Name = "comboCriterios";
            this.comboCriterios.Size = new System.Drawing.Size(159, 21);
            this.comboCriterios.TabIndex = 8;
            // 
            // Tabela
            // 
            this.Tabela.AllowUserToAddRows = false;
            this.Tabela.AllowUserToDeleteRows = false;
            this.Tabela.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Tabela.Location = new System.Drawing.Point(61, 128);
            this.Tabela.Name = "Tabela";
            this.Tabela.ReadOnly = true;
            this.Tabela.Size = new System.Drawing.Size(677, 208);
            this.Tabela.TabIndex = 9;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(116, 410);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(122, 28);
            this.button1.TabIndex = 10;
            this.button1.Text = "Salvar como PDF";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(266, 410);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(122, 28);
            this.button2.TabIndex = 11;
            this.button2.Text = "Salvar como XPS";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(413, 410);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(122, 28);
            this.button3.TabIndex = 12;
            this.button3.Text = "Salvar como Word";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(567, 410);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(122, 28);
            this.button4.TabIndex = 13;
            this.button4.Text = "Salvar como Excel";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // CentralDePesquisa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.Tabela);
            this.Controls.Add(this.comboCriterios);
            this.Controls.Add(this.comboAtributo);
            this.Controls.Add(this.comboTabela);
            this.Controls.Add(this.SearchBtn);
            this.Controls.Add(this.SearchBox);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "CentralDePesquisa";
            this.Text = "Central de Pesquisa";
            this.Load += new System.EventHandler(this.CentralDePesquisa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Tabela)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox SearchBox;
        private System.Windows.Forms.Label SearchBtn;
        private System.Windows.Forms.ComboBox comboTabela;
        private System.Windows.Forms.ComboBox comboAtributo;
        private System.Windows.Forms.ComboBox comboCriterios;
        private System.Windows.Forms.DataGridView Tabela;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
    }
}