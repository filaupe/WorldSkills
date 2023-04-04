using PT09SELETIVAWSC2017_S4.Banco_de_dados;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class TelaInicial : Form
    {
        private bool _inTask = false;
        private readonly bdAbuDhabiTurS04Entities _context;
        public TelaInicial()
        {
            InitializeComponent();

            _context = new bdAbuDhabiTurS04Entities();
            calcDiarias();
            resetDates();
        }

        private async void TelaInicial_Load(object sender, EventArgs e)
        {
            this.hotels.DataSource = await _context.Hotel.ToListAsync();
        }

        private void SearchBar_TextChanged(object sender, EventArgs e)
        {
            if (!_inTask) this.searching(this.SearchBar.Text);
        }

        private async void searching(string text)
        {
            _inTask = true;
            this.hotels.DataSource = await _context.Hotel.Where(x => x.HOTNOME.Contains(text) || x.HOTENDERECO.Contains(text)).ToListAsync();
            _inTask = false;        
        }

        private void Checkin_ValueChanged(object sender, EventArgs e)
        {
            if (this.Checkin.Value.Date < DateTime.Now.Date)
            {
                MessageBox.Show("Não é permitido datas inferiores a atual.");
                this.resetDates();
            }
            else
            {
                this.Checkout.Value = this.Checkin.Value.AddDays(1);
            }
            this.labelCI.Text = this.Checkin.Value.DayOfWeek.ToString();
            calcDiarias();
        }

        private void Checkout_ValueChanged(object sender, EventArgs e)
        {
            if (this.Checkin.Value.Date > this.Checkout.Value.Date)
            {
                MessageBox.Show("Não é permitido datas menores que a de check-In.");
                this.resetDates();
            }
            this.labelCO.Text = this.Checkout.Value.DayOfWeek.ToString();
            calcDiarias();
        }

        private void calcDiarias()
        {
            var calc = this.Checkout.Value.Subtract(this.Checkin.Value);
            this.labelDias.Text = $"{calc.Days} Diárias";
        }

        private void resetDates()
        {
            this.Checkin.Value = DateTime.Now;
            this.Checkout.Value = DateTime.Now.AddDays(1);
        }

        private void Exibirbtn_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new TelaResultados()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
            this.Close();
        }
    }
}
