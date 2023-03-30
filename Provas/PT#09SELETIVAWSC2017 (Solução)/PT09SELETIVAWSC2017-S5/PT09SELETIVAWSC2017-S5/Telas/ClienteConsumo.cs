using PT09SELETIVAWSC2017_S5.Banco_de_Dados;
using PT09SELETIVAWSC2017_S5.Telas.Dialogos;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S5.Telas
{
    public partial class ClienteConsumo : Form
    {
        private readonly bdAbuDhabiTurS05Entities _context;
        private Cliente _cliente;
        private bool _inTask = false;

        public ClienteConsumo()
        {
            InitializeComponent();

            _context = new bdAbuDhabiTurS05Entities();
        }

        private async void button1_Click(object sender, EventArgs e)
        {
            bool inTask = false;
            using (var form = new Buscar())
            {
                void filtro(object s, EventArgs @event) => filtrar(form.textBox1.Text);
                void filtrar(string text)
                {
                    if (!inTask)
                        Filtro(text);
                }
                async Task Filtro(string text)
                {
                    inTask = true;
                    var clientes = _context.Clientes
                    .Where(
                    x => x.Nome.Contains(text)
                            || x.CPF.ToString().Contains(text)).ToList();
                    form.dataGridView1.Rows.Clear();
                    foreach (var item in clientes)
                        form.dataGridView1.Rows.Add(item.Codigo, item.Nome, item.CPF, item.Reservas.FirstOrDefault()?.CodigoApartamento);
                    inTask = false;
                }
                void getProduto(object s, DataGridViewCellMouseEventArgs @event)
                {
                    var codigo = (int)form.dataGridView1.Rows[@event.RowIndex].Cells[0].Value;
                    _cliente = _context.Clientes.First(x => x.Codigo == codigo);
                    form.Close();
                    this.label8.Visible = true;
                    this.label9.Visible = true;
                    this.textBox2.Visible = true;
                    this.textBox3.Visible = true;
                    this.textBox2.Text = _cliente.Nome;
                    this.dataGridView1.Rows.Clear();
                    var produtos = _context.Produtoes.ToList();
                    foreach (var item in produtos)
                        this.dataGridView1.Rows.Add(item.Codigo, item.Nome, $"{item.Estoque:N0}", (item.Valor*item.Estoque), "Excluir");
                    this.label5.Text = produtos.Last().Nome;
                    this.label6.Text = $"R$ {produtos.Last().Valor:N2}";
                    this.label7.Text = $"Qtd: {produtos.Last().Estoque:N0}";
                    this.label4.Text = $"R$ {(produtos.Last().Valor * produtos.Last().Estoque):N2}";
                }

                foreach (var item in _context.Clientes.ToList())
                    form.dataGridView1.Rows.Add(item.Codigo, item.Nome, item.CPF, item.Reservas.FirstOrDefault()?.CodigoApartamento);
                
                form.textBox1.TextChanged += filtro;
                form.dataGridView1.CellMouseDoubleClick += getProduto;

                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                int.Parse(this.textBox1.Text);
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (_cliente != null)
            {
                if (!_inTask)
                    Filtro(this.textBox1.Text);
            }
        }
        async Task Filtro(string text)
        {
            _inTask = true;
            var produtos = _context.Produtoes
            .Where(
            x => x.Codigo.ToString().Contains(text)).ToList();
            this.dataGridView1.Rows.Clear();
            foreach (var item in produtos)
                this.dataGridView1.Rows.Add(item.Codigo, item.Nome, $"{item.Estoque:N0}", (item.Valor * item.Estoque), "Excluir");
            this.label5.Text = produtos.Last().Nome;
            this.label6.Text = $"R$ {produtos.Last().Valor:N2}";
            this.label7.Text = $"Qtd: {produtos.Last().Estoque:N0}";
            this.label4.Text = $"R$ {(produtos.Last().Valor * produtos.Last().Estoque):N2}";
            _inTask = false;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == this.dataGridView1.Columns["Column5"].Index)
            {
                int id = (int)this.dataGridView1.Rows[e.RowIndex].Cells[0].Value;
                var produto = _context.Produtoes.Find(id);
                if (MessageBox.Show($"Exluir?\n\nPRODUTO:{produto.Nome} Valor:{produto.Valor}       Qtd.Atual:{produto.Estoque}", "Excluir", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    using (var form = new ExcluirItem())
                    {
                        if (form.ShowDialog() == DialogResult.OK && form.textBox1.Text == "Adm.010203")
                        {
                            _context.Produtoes.Remove(produto);
                            _context.SaveChanges();

                            var produtos = _context.Produtoes.ToList();
                            this.dataGridView1.Rows.Clear();
                            foreach (var item in produtos)
                                this.dataGridView1.Rows.Add(item.Codigo, item.Nome, $"{item.Estoque:N0}", (item.Valor * item.Estoque), "Excluir");
                        }
                        else
                        {
                            MessageBox.Show("Senha Incorreta");
                        }
                    }
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (var form = new Configuracoes())
            {
                form.checkBox1.Checked = !this.dataGridView1.Columns[0].Visible;
                form.checkBox2.Checked = !this.dataGridView1.Columns[1].Visible;
                form.checkBox3.Checked = !this.dataGridView1.Columns[2].Visible;
                form.checkBox4.Checked = !this.dataGridView1.Columns[3].Visible;

                if (form.ShowDialog() == DialogResult.OK)
                {
                    this.dataGridView1.Columns[0].Visible = !form.checkBox1.Checked;
                    this.dataGridView1.Columns[1].Visible = !form.checkBox2.Checked;
                    this.dataGridView1.Columns[2].Visible = !form.checkBox3.Checked;
                    this.dataGridView1.Columns[3].Visible = !form.checkBox4.Checked;
                }
            }
        }
    }
}
