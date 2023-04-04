using Sessa03Aparamento.BancoDeDados;
using Sessa03Aparamento.ControleDeUsuario;
using System;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sessa03Aparamento.Telas
{
    public partial class Apartamentos : Form
    {
        private readonly dbAbuDhabiS03Entities _context;
        private bool _inTask = false;

        public Apartamentos()
        {
            InitializeComponent();

            _context = new dbAbuDhabiS03Entities();
        }

        private async void Apartamentos_Load(object sender, EventArgs e)
        {
            foreach (var apartment in await _context.Apartamento.ToListAsync())
            {
                var hotel = new Hotel();
                hotel.BackColor = apartment.Ativo ? Color.Green : Color.Red;
                hotel.label1.Text = apartment.Codigo;
                hotel.label2.Visible = false;
                hotel.Dock = DockStyle.Fill;

                this.tableLayoutPanelApartments.Controls.Add(hotel);
            }
        }

        private async void More_Click(object sender, EventArgs e)
        {
            if (!_inTask)
            {
                _inTask = true;
                this.More.Enabled = false;
                using (var form = new Cadastrar_Editar())
                {
                    form.Proprietario.DataSource = await _context.Proprietario.ToListAsync();
                    form.Responsavel.DataSource = await _context.Responsavel.ToListAsync();

                    form.SituacaoAtivo.BackColor = Color.Green;

                    form.Proprietario.DisplayMember = "Nome";
                    form.Proprietario.ValueMember = "Codigo";

                    form.Responsavel.DisplayMember = "Nome";
                    form.Responsavel.ValueMember = "Codigo";

                    foreach (var item in await _context.Tipo.ToListAsync())
                        using (var stream = new MemoryStream(item.Imagem))
                            form.listRadioButtons1.Add(Image.FromStream(stream), item.Codigo);

                    foreach (var item in await _context.Produtos.ToListAsync())
                        using (var stream = new MemoryStream(item.Imagem))
                            form.checkBoxList1.Add(Image.FromStream(stream), item.Codigo);

                    if (form.ShowDialog() == DialogResult.OK)
                    {
                        switch (form.VerifyColor().Name)
                        {
                            case nameof(Color.Purple):
                                MessageBox.Show("Roxo");
                                break;
                            case nameof(Color.Red):
                                MessageBox.Show("Vermelho");
                                break;
                            case nameof(Color.Green):
                                MessageBox.Show("Verde");
                                break;
                            default:
                                break;
                        }
                    }
                }
                this.More.Enabled = true;
                _inTask = false;
            }

        }
    }
}
