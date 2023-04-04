using PT09SELETIVAWSC2017_S4.Banco_de_dados;
using PT09SELETIVAWSC2017_S4.Controles_de_usuario;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class TelaResultados : Form
    {
        private readonly bdAbuDhabiTurS04Entities _context;
        private IEnumerable<Hotel> _hoteis;

        public TelaResultados()
        {
            InitializeComponent();
            _context = new bdAbuDhabiTurS04Entities();
        }

        private HotelControl addData(Hotel hotel)
        {
            void reservar(object sender, EventArgs e)
            {
                using (var form = new TelaConfirmacao())
                {
                    form.Nome.Text = hotel.HOTNOME;
                    form.Endereco.Text = hotel.HOTENDERECO;
                    if (File.Exists(hotel.HOTFOTO))
                        form.Imagem.Image = Image.FromFile(hotel.HOTFOTO);
                    if (form.ShowDialog() == DialogResult.OK)
                    {
                        
                    }
                }
            }

            var h = new HotelControl();
            h.Imagem.BackgroundImageLayout = ImageLayout.Stretch;
            h.NomeHotel.Text = hotel.HOTNOME.Replace("\n", String.Empty).Replace("\r", String.Empty);
            h.Preco.Text = $"R$ {hotel.TIPOACOMODACAO.Min(x => x.TIPVALORMINIMO):N2}";
            h.qtdAdultos.Value = (decimal)hotel.TIPOACOMODACAO.Min(x => x.TIPMAXADULTOS);
            h.TipoQuarto.Text = hotel.TIPOACOMODACAO.First().TIPNOME;
            h.Endereco.Text = $"Endereço: {hotel.HOTENDERECO}";
            h.qtdDiarias.Text = $"Preço x Diárias:";
            if (File.Exists(hotel.HOTFOTO))
                h.Imagem.BackgroundImage = Image.FromFile(hotel.HOTFOTO);
            h.Reservar.Click += reservar;
            return h;
        }

        private void loadGrid(Hotel hotel)
        {
            this.Hoteis.Controls.Add(this.addData(hotel));
            if (this.Hoteis.Controls.Count > 1)
                this.Hoteis.RowStyles.Add(new RowStyle());
        }

        private async void TelaResultados_Load(object sender, EventArgs e)
        {
            _hoteis = await _context.Hotel
                .Include(x => x.TIPOACOMODACAO)
                .Where(x => x.TIPOACOMODACAO.Count != 0)
                .ToListAsync();
            foreach (var hotel in _hoteis)
                loadGrid(hotel);
        }

        private void CafeDaManha_CheckedChanged(object sender, EventArgs e)
        {
            if (this.CafeDaManha.Checked)
            {
                _hoteis = _hoteis.Where(x => x.CAFEINCLUSO);
                foreach (var hotel in _hoteis)
                    loadGrid(hotel);
            }
        }

        private void Wifi_CheckedChanged(object sender, EventArgs e)
        {
            if (this.Wifi.Checked)
            {
                _hoteis = _hoteis.Where(x => x.WIFI);
                foreach (var hotel in _hoteis)
                    loadGrid(hotel);
            }
        }

        private void Estacionamento_CheckedChanged(object sender, EventArgs e)
        {
            if (this.Estacionamento.Checked)
            {
                _hoteis = _hoteis.Where(x => x.ESTACIONAMENTO);
                foreach (var hotel in _hoteis)
                    loadGrid(hotel);
            }
        }

        private void MenorPreco_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hoteis.Controls.Clear();
            _hoteis = _hoteis.OrderBy(x => x.TIPOACOMODACAO.Min(o => o.TIPVALORMINIMO).Value);
            foreach (var hotel in _hoteis)
                loadGrid(hotel);
        }

        private void OrdemAlfabetica_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hoteis.Controls.Clear();
            _hoteis = _hoteis.OrderBy(x => x.HOTNOME);
            foreach (var hotel in _hoteis)
                loadGrid(hotel);
        }

        private void MaisProcurados_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
        }
    }
}
