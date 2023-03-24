using PT09SELETIVAWSC2017_S4.Database;
using System;
using System.Data.Entity;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class TelaInicial : Form
    {
        private int _calc = 0;
        private int _count = 0;
        private bool _inTask = false;
        private DateTime CheckInDate = new DateTime(2016, 06, 20);
        private DateTime CheckOutDate = new DateTime(2016, 06, 20);
        private readonly bdAbuDhabiTurS04Entities _context;

        public TelaInicial()
        {
            InitializeComponent();
            _context = new bdAbuDhabiTurS04Entities();
        }

        private void SearchBar_MouseEnter(object sender, EventArgs e)
        {
            if (_count == 0)
                this.SearchBar.Text = String.Empty;
            _count++;
        }

        private void SearchBar_TextChanged(object sender, EventArgs e)
        {
            if (!_inTask)
                Filter(this.SearchBar.Text);
        }
        private void Filter(string filter)
        {
            _inTask = true;
            this.dataGridViewResults.DataSource = this.bdAbuDhabiTurS04DataSet.Hotel.Where(x
                => x.HOTNOME.Contains(filter)
                | x.HOTENDERECO.Contains(filter)).ToList();
            _inTask = false;
        }

        private void TelaInicial_Load(object sender, EventArgs e)
        {
            this.hotelTableAdapter.Fill(this.bdAbuDhabiTurS04DataSet.Hotel);
        }

        private void CheckIn_Leave(object sender, EventArgs e)
        {
            string check(int number) => number < 10 ? $"0{number}" : number.ToString();

            if (!String.IsNullOrWhiteSpace(this.CheckIn.Text))
            {
                try
                {
                    var array = this.CheckIn.Text.Split('/').Select(x => int.Parse(x)).ToArray();
                    CheckInDate = new DateTime(array[2], array[1], array[0]);
                    this.labelCheckInDay.Text = CheckInDate.DayOfWeek.ToString();
                    CheckOutDate = CheckInDate.AddDays(1);
                    this.CheckOut.Text = $"{check(CheckOutDate.Day)}/{check(CheckOutDate.Month)}/{CheckOutDate.Year}";
                    this.labelCheckOutDay.Text = CheckOutDate.DayOfWeek.ToString();
                    CalcData();
                }
                catch
                {
                }

            }
        }

        private void CheckOut_Leave(object sender, EventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(this.CheckOut.Text))
            {
                try
                {
                    var array = this.CheckOut.Text.Split('/').Select(x => int.Parse(x)).ToArray();
                    CheckOutDate = new DateTime(array[2], array[1], array[0]);
                    this.labelCheckOutDay.Text = CheckOutDate.DayOfWeek.ToString();
                    CalcData();
                }
                catch
                {
                }
            }
        }

        private void CalcData()
        {
            try
            {
                if (CheckOutDate < CheckInDate)
                    throw new Exception("O check-Out deve ser maior que a data de check-In.");
                if (CheckInDate < (new DateTime(2016, 06, 20)))
                    throw new Exception("A data de Check-In não pode ser inferior a data atual.");
                _calc = (CheckOutDate.Day - CheckInDate.Day);
                this.labelDaysCount.Text = _calc.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                this.CheckIn.Text = String.Empty;
                this.CheckOut.Text = String.Empty;
            }
            
        }

        private void DisposeShow_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new ResultadoPesquisa()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }

        private void buttonAgenda_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new Agenda()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }
    }
}
