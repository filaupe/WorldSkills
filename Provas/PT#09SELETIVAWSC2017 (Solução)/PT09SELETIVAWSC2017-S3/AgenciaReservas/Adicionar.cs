using AgenciaReservas.AgenciaReservas.master;
using System;
using System.Windows.Forms;

namespace AgenciaReservas
{
    public partial class Adicionar : Form
    {
        private readonly Agencia _agencia;

        public Adicionar()
        {
            InitializeComponent();
            _agencia = new Agencia();
        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            _agencia.setRegistrarReserva((int)this.Id.Value, (int)this.Qtd.Value);
            MessageBox.Show("Registrado");
        }
    }
}
