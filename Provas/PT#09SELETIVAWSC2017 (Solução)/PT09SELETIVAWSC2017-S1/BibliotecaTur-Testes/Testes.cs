using BibliotecaTur;
using BibliotecaTur.Generic;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BibliotecaTur_Testes
{
    public partial class Testes : Form
    {
        public Testes()
        {
            InitializeComponent();
        }

        private void buttonTest_Click(object sender, EventArgs e)
        {
            try
            {
                var turismo = new Turismo();
                var agencia = new Agencia();
                var hotel = new Hotel();
                var passeio = new Passeio();

                double result;
                int dias = (int)this.numericUpDownDias.Value;
                int pessoas = (int)this.numericUpDownPessoas.Value;
                double valorDiaria = double.Parse(this.textBoxvalor.Text);

                switch (this.comboBoxMetodo.Text)
                {
                    case "TURISMO":
                        result = turismo.getValor(dias, pessoas, valorDiaria);
                        labelResultado.Text = result.ToString();
                        break;
                    case "AGENCIA":
                        result = agencia.getValor(dias, pessoas, valorDiaria);
                        labelResultado.Text = result.ToString();
                        break;
                    case "HOTEL":
                        result = hotel.getValor(dias, pessoas, valorDiaria);
                        labelResultado.Text = result.ToString();
                        break;
                    case "PASSEIO":
                        result = passeio.getValor(dias, pessoas, valorDiaria);
                        labelResultado.Text = result.ToString();
                        break;
                    default:
                        MessageBox.Show("Método não encontrado");
                        break;
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Algo não foi adicionado corretamente");
            }

        }
    }
}
