using PT09SELETIVAWSC2017_S6.Telas.Dialogos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S6.Telas
{
    public partial class MenuPrincipal : Form
    {
        public MenuPrincipal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new CentralDePesquisa()));
            t.SetApartmentState(ApartmentState.STA); t.Start();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (var form = new AdicionarFavorito())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }

        private void MenuPrincipal_Load(object sender, EventArgs e)
        {
            string nomePc = Environment.MachineName;
            string nomeUser = Environment.UserName;
            label5.Text = $"Nome do computador: {nomePc} -- Usuário Máquina: {nomeUser} -- Memória: -- IP: ";
        }
    }
}
