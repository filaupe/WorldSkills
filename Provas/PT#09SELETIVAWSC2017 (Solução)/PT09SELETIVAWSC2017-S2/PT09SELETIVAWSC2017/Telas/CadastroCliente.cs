using PT09SELETIVAWSC2017.Databases;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas
{
    public partial class CadastroCliente : Form
    {
        private readonly bdAbuDhabiTurS2E04Entities _context;
        private Cliente _cliente;
        private static char[] _vogais = new char[] { 'a', 'e', 'i', 'o', 'u' };
        private int _feedabackOut = 100;

        public CadastroCliente()
        {
            InitializeComponent();

            _context = new bdAbuDhabiTurS2E04Entities();
        }

        private async Task load(Cliente cliente)
        {
            _cliente = cliente;
            _cliente.Estado = await _context.Estados.FirstOrDefaultAsync(x => x.id_estado == cliente.id_estado);
            _cliente.Compras = await _context.Compras.Where(x => x.CODIGOCLIENTE == _cliente.CODIGO).ToListAsync();
            if (_cliente.Compras.Count != 0)
                foreach (var compra in _cliente.Compras)
                    if (await _context.Reservas.AnyAsync(r => r.CODIGOCOMPRA == compra.CODIGO))
                        compra.Reservas.ToList().AddRange(await _context.Reservas.Where(r => r.CODIGOCOMPRA == compra.CODIGO).ToListAsync());
        }

        private async Task LoadData(Cliente cliente)
        {
            await load(cliente);
            this.Codigo.Text = _cliente.CODIGO.ToString();
            if (_cliente.Estado != null)
            {
                using (var stream = new MemoryStream(_cliente.Estado.bandeira))
                    this.pictureBoxEstado.Image = Image.FromStream(stream);
                this.Estado.Text = _cliente.Estado.nome;
            }
            if (_cliente.CIDADE != null)
                this.Cidade.Text = _cliente.CIDADE;
            if (_cliente.ENDERECO != null)
                this.Endereco.Text = _cliente.ENDERECO;
            if (_cliente.Feedback != null)
            {
                this.Feedback.Text = _cliente.Feedback;
                this.CheckFeedBackLimit();
            }
            this.Nome.Text = _cliente.NOME;
            this.Sobrenome.Text = _cliente.SOBRENOME;
            this.Email.Text = _cliente.EMAIL;
            this.DataNascimento.Text = _cliente.DATANASCIMENTO.ToString("dd/MM/yyyy");
            this.CPF.Text = $"{_cliente.CPF:000.000.000-00}";
            foreach (var compra in _cliente.Compras)
                foreach (var reserva in compra.Reservas)
                    this.Historico.Rows.Add(reserva.CODIGO, reserva.DATAINICIO.ToString("dd/MM/yyyy"), reserva.DATAFIM.ToString("dd/MM/yyyy"), compra.STATUS);
            this.labelCodigo.Text = _cliente.CODIGO.ToString();
            this.pictureBox1.Image = _vogais.Any(x => x == _cliente.NOME.First()) ? Properties.Resources.cavalo : Properties.Resources.rainha;
            this.pictureBox2.Image = _vogais.Any(x => x == _cliente.SOBRENOME.First()) ? Properties.Resources.cavalo : Properties.Resources.rainha;
        }

        private async void CadastroCliente_Load(object sender, System.EventArgs e)
        {
            var cliente = await _context.Clientes.FirstAsync();
            await LoadData(cliente);
        }

        private void Feedback_TextChanged(object sender, System.EventArgs e)
        {
            this.CheckFeedBackLimit();
        }

        private void CheckFeedBackLimit()
        {
            int feedbackCount = this.Feedback.Text.Count();
            int calc = _feedabackOut - feedbackCount;
            this.labelFeedaback.Text = $"{calc} restantes";
        }
    }
}
