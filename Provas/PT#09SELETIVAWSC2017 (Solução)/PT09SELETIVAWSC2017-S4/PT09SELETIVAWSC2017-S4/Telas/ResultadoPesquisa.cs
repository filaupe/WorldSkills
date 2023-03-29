using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class ResultadoPesquisa : Form
    {
        public ResultadoPesquisa()
        {
            InitializeComponent();
        }

        private void SearchBar_MouseEnter(object sender, EventArgs e)
        {
            this.SearchBar.Text = String.Empty;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (var form = new TelaConfirmacao())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }
    }
}
