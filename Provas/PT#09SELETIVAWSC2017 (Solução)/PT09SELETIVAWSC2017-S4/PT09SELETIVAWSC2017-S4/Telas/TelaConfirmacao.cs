using System;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class TelaConfirmacao : Form
    {
        public TelaConfirmacao()
        {
            InitializeComponent();
        }

        private void buttonConfirm_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show($"Realmente deseja se hospedar no [nome do hotel] no período de [data1] a [data2] ?", "Confirmação", MessageBoxButtons.YesNo ) == DialogResult.Yes)
            {
                MessageBox.Show("Reserva feita com sucesso!");
            }
        }
    }
}
