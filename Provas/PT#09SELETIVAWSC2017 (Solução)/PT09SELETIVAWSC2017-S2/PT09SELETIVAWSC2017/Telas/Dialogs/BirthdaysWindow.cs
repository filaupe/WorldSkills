using PT09SELETIVAWSC2017.Databases;
using System.Collections.Generic;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas.Dialogs
{
    public partial class BirthdaysWindow : Form
    {
        private readonly List<Cliente> _clientes;

        public BirthdaysWindow(List<Cliente> clientes)
        {
            InitializeComponent();

            _clientes = clientes;
        }

        private void BirthdaysWindow_Load(object sender, System.EventArgs e)
        {
            this.dataGridView1.Rows.Clear();
            foreach (var cliente in _clientes)
                this.dataGridView1.Rows.Add(cliente.NOME, cliente.DATANASCIMENTO.ToString("dd/MM/yyyy"));
        }
    }
}
