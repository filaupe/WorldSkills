using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace WSC2019_TP09.Forms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Session2Entities db = new Session2Entities();
            this.chart1.Series.Add("Changed Parts");
            foreach (var cPart in db.ChangedParts.ToList())
            {
                cPart.FillModel(cPart);
                this.chart1.Series["Changed Parts"].Points.AddXY(cPart.Part.Name, cPart.Amount);
            }   
        }
    }
}
