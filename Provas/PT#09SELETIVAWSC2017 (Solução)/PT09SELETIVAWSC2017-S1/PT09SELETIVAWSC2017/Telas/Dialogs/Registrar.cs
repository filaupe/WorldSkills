using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas.Dialogs
{
    public partial class Registrar : Form
    {
        public Registrar()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrWhiteSpace(this.textBoxConfirmarSenha.Text)) throw new Exception("Campo vazio, tenten novamente");
                if (String.IsNullOrWhiteSpace(this.textBoxEmail.Text)) throw new Exception("Campo vazio, tenten novamente");
                if (String.IsNullOrWhiteSpace(this.textBoxNome.Text)) throw new Exception("Campo vazio, tenten novamente");
                if (String.IsNullOrWhiteSpace(this.textBoxSenha.Text)) throw new Exception("Campo vazio, tenten novamente");

                if (this.textBoxSenha.Text != this.textBoxConfirmarSenha.Text)
                    throw new Exception("As senhas não são iguais, tente novamente");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
