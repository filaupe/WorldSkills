using System;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas.Dialogs
{
    public partial class FormularioGeradorDeCampos : Form
    {
        public FormularioGeradorDeCampos()
        {
            InitializeComponent();
        }

        private void FormularioGeradorDeCampos_Load(object sender, EventArgs e)
        {
            this.comboBox.Items.AddRange(new object[] { "Texto (Abudhabi)", "Número inteiro (0)", "Número decimal (0)", "Sim/Não (0)", $"Data ({DateTime.Now})" });
        }
    }
}
