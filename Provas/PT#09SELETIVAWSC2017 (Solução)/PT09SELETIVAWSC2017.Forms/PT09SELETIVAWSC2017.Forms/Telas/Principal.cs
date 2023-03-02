using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Forms.Telas
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new WireframeSessao01_E02()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new WireframeSessao01_E03()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
            this.Close();
        }
    }
}
