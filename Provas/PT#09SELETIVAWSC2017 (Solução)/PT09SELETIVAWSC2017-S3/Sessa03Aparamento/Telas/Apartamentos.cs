using Sessa03Aparamento.BancoDeDados;
using Sessa03Aparamento.ControleDeUsuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sessa03Aparamento.Telas
{
    public partial class Apartamentos : Form
    {
        private readonly dbAbuDhabiS03Entities _context;

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
            this.More.Enabled = false;
            using (var form = new Cadastrar_Editar())
            {
                form.Proprietario.DataSource = await _context.Proprietario.ToListAsync();
                await Task.Delay(250);
                form.Responsavel.DataSource = await _context.Responsavel.ToListAsync();
                await Task.Delay(250);

                form.Proprietario.DisplayMember = "Nome";
                form.Proprietario.ValueMember = "Codigo";

                form.Responsavel.DisplayMember = "Nome";
                form.Responsavel.ValueMember = "Codigo";

                foreach (var item in await _context.Tipo.ToListAsync())
                    using (var stream = new MemoryStream(item.Imagem))
                        form.listRadioButtons1.Add(Image.FromStream(stream), item.Codigo);

                await Task.Delay(250);

                foreach (var item in await _context.Produtos.ToListAsync())
                {
                    using (var stream = new MemoryStream(item.Imagem))
                    {
                        var image = Image.FromStream(stream);
                        form.checkBoxList1.Add(image, item.Codigo);
                    }
                }

                if (form.ShowDialog() == DialogResult.OK)
                {
                    for (int i = 0; i < form.listRadioButtons1.Controls.Count; i++)
                    {
                        var RB = (RadioButton)form.listRadioButtons1.Controls[i];
                        if (RB.Checked)
                        {
                            MessageBox.Show(((int)RB.Tag).ToString());
                            break;
                        }
                    }
                }
            }
            this.More.Enabled = true;
        }
    }
}
