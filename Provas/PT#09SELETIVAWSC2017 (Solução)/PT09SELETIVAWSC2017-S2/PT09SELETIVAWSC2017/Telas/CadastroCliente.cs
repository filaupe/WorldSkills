using PT09SELETIVAWSC2017.Databases;
using PT09SELETIVAWSC2017.Telas.Dialogs;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace PT09SELETIVAWSC2017.Telas
{
    public partial class CadastroCliente : Form
    {
        private readonly bdAbuDhabiTurS2E04Entities _context;
        private Cliente _cliente;
        private static char[] _vogais = new char[] { 'A', 'E', 'I', 'O', 'U' };
        private int _feedabackOut = 100;
        private bool _inTask = false;
        private IQueryable<Cliente> _clientes;
        private List<bool> _progress;
        private int _skip = 0;

        public CadastroCliente()
        {
            InitializeComponent();

            _context = new bdAbuDhabiTurS2E04Entities();
            _progress = new List<bool> { false, false, false, false, false };
        }

        private void CheckProgressBar()
        {
            bool checkEmpty(string value) => !String.IsNullOrWhiteSpace(value);

            _progress[0] = checkEmpty(this.Nome.Text);
            _progress[1] = checkEmpty(this.DataNascimento.Text.Replace("_", String.Empty).Replace("/", String.Empty));
            _progress[2] = checkEmpty(this.Endereco.Text);
            _progress[3] = checkEmpty(this.Cidade.Text);
            _progress[4] = checkEmpty(this.Estado.Text);

            int percent = (_progress.Count(x => x) * 20);
            progressBar1.Value = percent;
            this.label1.Text = $"{percent}/100";
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
            this.Historico.Rows.Clear();
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
            this.labelCodigo.Text = _cliente.CODIGO < 10 ? $"0{_cliente.CODIGO}" : _cliente.CODIGO.ToString();
            this.pictureBox1.Image = _vogais.Any(x => x == _cliente.NOME.First()) ? Properties.Resources.cavalo : Properties.Resources.rainha;
            this.pictureBox2.Image = _vogais.Any(x => x == _cliente.SOBRENOME.First()) ? Properties.Resources.cavalo : Properties.Resources.rainha;
            this.CheckProgressBar();
        }

        private async void CadastroCliente_Load(object sender, System.EventArgs e)
        {
            await LoadingBinding();
            var cliente = await _context.Clientes.FirstAsync();
            await LoadData(cliente);
            await CheckBirthdays();
        }

        private async Task LoadingBinding()
        {
            this.bindingSource1.DataSource = await _context.Clientes.ToListAsync();
            var count = ((await _context.Clientes.CountAsync())-1);

            async Task load(int skip)
            {
                var cliente = await _context.Clientes.OrderBy(x => x.CODIGO).Skip(skip).FirstOrDefaultAsync();
                await LoadData(cliente);
            };
            async Task addInBank()
            {
                var cliente = new Cliente
                {
                    NOME = this.Nome.Text,
                    SOBRENOME = this.Sobrenome.Text,
                    CPF = this.CPF.Text.Replace(',', '.'),
                    EMAIL = this.Email.Text,
                    DATANASCIMENTO = DateTime.Parse(this.DataNascimento.Text),
                    ENDERECO = this.Endereco.Text,
                    CIDADE = this.Cidade.Text,
                    id_estado = (await _context.Estados.FirstOrDefaultAsync(x => x.nome.Contains(this.Estado.Text))).id_estado,
                    Feedback = this.Feedback.Text,
                };
                _context.Clientes.Add(cliente);
                await _context.SaveChangesAsync();
                await LoadingBinding();
                await LoadData(cliente);
            }
            async Task editFromBank()
            {
                int codigo = int.Parse(this.Codigo.Text);
                var cliente = await _context.Clientes.FirstOrDefaultAsync(x => x.CODIGO == codigo);
                if (cliente != null)
                {
                    var clienteUpdate = new Cliente
                    {
                        NOME = this.Nome.Text,
                        SOBRENOME = this.Sobrenome.Text,
                        CPF = this.CPF.Text.Replace(',', '.'),
                        EMAIL = this.Email.Text,
                        DATANASCIMENTO = DateTime.Parse(this.DataNascimento.Text),
                        ENDERECO = this.Endereco.Text,
                        CIDADE = this.Cidade.Text,
                        id_estado = (await _context.Estados.FirstOrDefaultAsync(x => x.nome.Contains(this.Estado.Text))).id_estado,
                        Feedback = this.Feedback.Text,
                    };
                    cliente.Update(clienteUpdate);
                    await _context.SaveChangesAsync();
                    await LoadingBinding();
                    await LoadData(cliente);
                }
            }
            async Task deleteFromBank()
            {
                int codigo = int.Parse(this.Codigo.Text);
                var cliente = await _context.Clientes.FirstOrDefaultAsync(x => x.CODIGO == codigo);
                _context.Clientes.Remove(cliente);
                await _context.SaveChangesAsync();
                await LoadingBinding();
                cliente = await _context.Clientes.FirstAsync();
                await LoadData(cliente);
            }
            async void next(object sender, System.EventArgs e)
            {
                _skip++;
                await load(_skip);
            }
            async void previous(object sender, System.EventArgs e)
            {
                _skip--;
                await load(_skip);
            }
            async void last(object sender, System.EventArgs e) => await load(count);
            async void first(object sender, System.EventArgs e) => await load(0);
            async void add(object sender, System.EventArgs e) => await addInBank();
            async void delete(object sender, System.EventArgs e) => await deleteFromBank();
            async void edit(object sender, System.EventArgs e) => await editFromBank();

            this.bindingNavigatorMoveNextItem.Click += next;
            this.bindingNavigatorMovePreviousItem.Click += previous;
            this.bindingNavigatorMoveFirstItem.Click += first;
            this.bindingNavigatorMoveLastItem.Click += last;
            this.bindingNavigatorAddNewItem.Click += add;
            this.bindingNavigatorDeleteItem.Click += delete;
            this.salvarToolStripButton.Click += edit;
        }

        private async Task CheckBirthdays()
        {
            _clientes = _context.Clientes.Where(x => x.DATANASCIMENTO.Month == DateTime.Now.Month);
            int qtd = await _clientes.CountAsync();
            this.labelLembrete.Text = $"Temos {qtd} aniversariantes no mês";
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

        private void buttonGreen_Click(object sender, System.EventArgs e)
        {
            pictureBox1.Image = AlterImage(pictureBox1.Image, Color.Green);
            pictureBox2.Image = AlterImage(pictureBox1.Image, Color.Green);
        }

        private void buttonGray_Click(object sender, System.EventArgs e)
        {
            pictureBox1.Image = AlterImage(pictureBox1.Image, Color.Gray);
            pictureBox2.Image = AlterImage(pictureBox1.Image, Color.Gray);
        }

        private void buttonBlack_Click(object sender, System.EventArgs e)
        {
            pictureBox1.Image = AlterImage(pictureBox1.Image, Color.Black);
            pictureBox2.Image = AlterImage(pictureBox1.Image, Color.Black);
        }

        private Bitmap AlterImage(Image image, Color color)
        {
            Bitmap bitmap = new Bitmap(image);

            for (int y = 0; y < bitmap.Height; y++)
            {
                for (int x = 0; x < bitmap.Width; x++)
                {
                    var pixelColor = bitmap.GetPixel(x, y);
                    if (pixelColor.Name != "ffffffff")
                        bitmap.SetPixel(x, y, color);
                }
            }

            return bitmap;
        }

        private void SearchBar_TextChanged(object sender, System.EventArgs e)
        {
            if (!_inTask)
                loadingClient(this.SearchBar.Text);
        }

        private async void loadingClient(string filter)
        {
            _inTask = true;
            var cliente = await _context.Clientes.FirstOrDefaultAsync(x => x.NOME.Contains(filter));
            if (cliente != null)
                await LoadData(cliente);
            _inTask = false;
        }

        private async void loadingEstado(string filter)
        {
            _inTask = true;
            var estado = await _context.Estados.FirstOrDefaultAsync(x => x.nome.Contains(filter));
            if (estado != null)
                using (var stream = new MemoryStream(estado.bandeira))
                    this.pictureBoxEstado.Image = Image.FromStream(stream);
            _inTask = false;
        }

        private void Estado_TextChanged(object sender, System.EventArgs e)
        {
            if (!_inTask)
                loadingEstado(this.Estado.Text);
            CheckProgressBar();
        }

        private async void Lembrete_Click(object sender, System.EventArgs e)
        {
            using (var form = new BirthdaysWindow(await _clientes.ToListAsync()))
            {
                if (form.ShowDialog() == DialogResult.OK)
                    form.Close();
            }
        }

        private void Nome_TextChanged(object sender, EventArgs e)
        {
            CheckProgressBar();
        }

        private void Endereco_TextChanged(object sender, EventArgs e)
        {
            CheckProgressBar();
        }

        private void Cidade_TextChanged(object sender, EventArgs e)
        {
            CheckProgressBar();
        }

        private void DataNascimento_TextChanged(object sender, EventArgs e)
        {
            CheckProgressBar();
        }
    }
}
