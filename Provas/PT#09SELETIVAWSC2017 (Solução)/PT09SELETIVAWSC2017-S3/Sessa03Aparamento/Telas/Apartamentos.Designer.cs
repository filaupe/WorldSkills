namespace Sessa03Aparamento.Telas
{
    partial class Apartamentos
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
            this.tableLayoutPanelApartments = new System.Windows.Forms.TableLayoutPanel();
            this.More = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.tableLayoutPanelApartments);
            this.panel1.Location = new System.Drawing.Point(71, 57);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(742, 408);
            this.panel1.TabIndex = 0;
            // 
            // tableLayoutPanelApartments
            // 
            this.tableLayoutPanelApartments.ColumnCount = 10;
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10.21898F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 9.635036F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanelApartments.Location = new System.Drawing.Point(3, 3);
            this.tableLayoutPanelApartments.Name = "tableLayoutPanelApartments";
            this.tableLayoutPanelApartments.RowCount = 1;
            this.tableLayoutPanelApartments.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanelApartments.Size = new System.Drawing.Size(736, 73);
            this.tableLayoutPanelApartments.TabIndex = 0;
            // 
            // More
            // 
            this.More.Location = new System.Drawing.Point(10, 12);
            this.More.Name = "More";
            this.More.Size = new System.Drawing.Size(40, 40);
            this.More.TabIndex = 1;
            this.More.Text = "+";
            this.More.UseVisualStyleBackColor = true;
            this.More.Click += new System.EventHandler(this.More_Click);
            // 
            // Apartamentos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(825, 477);
            this.Controls.Add(this.More);
            this.Controls.Add(this.panel1);
            this.Name = "Apartamentos";
            this.Text = "Apartamentos";
            this.Load += new System.EventHandler(this.Apartamentos_Load);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanelApartments;
        private System.Windows.Forms.Button More;
    }
}