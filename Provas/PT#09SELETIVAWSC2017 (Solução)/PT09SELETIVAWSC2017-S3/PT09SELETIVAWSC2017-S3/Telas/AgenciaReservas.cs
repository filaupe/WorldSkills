using AgenciaReservas;
using System;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S3.Telas
{
    public partial class AgenciaReservas : Form
    {
        public AgenciaReservas()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var agencia = new Agencia();

            agencia.setRegistrarReserva((int)this.numericUpDown1.Value, (int)this.numericUpDown2.Value);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var agencia = new Agencia();

            agencia.gerarClasse(this.textBox1.Text, this.textBox2.Text.Split(','));
        }
    }
}
