using PT09SELETIVAWSC2017.Telas;
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

namespace Principal
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new ImportacaoExportacao.Telas.Principal()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new CadastroCliente()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }
    }
}
