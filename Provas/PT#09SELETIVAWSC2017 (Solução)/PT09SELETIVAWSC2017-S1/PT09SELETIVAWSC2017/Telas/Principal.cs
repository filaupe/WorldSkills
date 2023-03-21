using System;
using System.Threading;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new TesteUnitario()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new Login()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }
    }
}
