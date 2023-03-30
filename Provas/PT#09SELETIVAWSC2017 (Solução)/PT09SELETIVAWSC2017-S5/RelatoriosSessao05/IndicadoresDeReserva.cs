using PT09SELETIVAWSC2017_S5.Telas.Subtelas;
using System;
using System.Threading;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S5.Telas
{
    public partial class IndicadoresDeReserva : Form
    {
        public IndicadoresDeReserva()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new IndicadoresDeReservas()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
            this.Close();
        }
    }
}
