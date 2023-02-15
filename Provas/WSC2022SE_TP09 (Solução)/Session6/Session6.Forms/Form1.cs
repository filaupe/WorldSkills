using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace Session6.Forms
{
    public partial class Form1 : Form
    {
        private readonly Session6Entities _context;

        public Form1()
        {
            InitializeComponent();

            _context = new Session6Entities();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.comboBox1.DataSource = _context.Areas.OrderBy(c => c.Name).ToList();
            this.comboBox1.DisplayMember = "Name";
            this.comboBox1.ValueMember = "ID";

            var list = _context.Users.OrderBy(c => c.FullName);

            this.comboBox2.DataSource = list.Where(x => _context.Items.Any(c => c.UserID == x.ID)).ToList();
            this.comboBox2.DisplayMember = "FullName";
            this.comboBox2.ValueMember = "ID";

            var list2 = _context.Users;

            this.comboBox3.DataSource = list2.Where(x => _context.Bookings.Any(c => c.UserID == x.ID)).ToList();
            this.comboBox3.DisplayMember = "FullName";
            this.comboBox3.ValueMember = "ID";
    
            var users = _context.Users.ToList();
            foreach (var user in users)
            {
                user.Bookings.ToList().AddRange(_context.Bookings.Where(x => x.UserID == user.ID));
                user.Items.ToList().AddRange(_context.Items.Where(x => x.UserID == user.ID));
                var transactions = _context.Transactions.Where(x => x.UserID == user.ID);
                List<ItemPrice> price = new List<ItemPrice>();
                foreach (var item in user.Items.ToList())
                    price.AddRange(_context.ItemPrices.Where(x => x.ItemID == item.ID));
                var date = transactions.OrderByDescending(x => x.TransactionDate).FirstOrDefault();
                var id = user.ID;
                var fullname = user.FullName;
                var amount = price?.Sum(x => x?.Price).ToString();
                var booking = user.Bookings.Sum(x => x?.AmountPaid).ToString();
                var Date = date == null ? String.Empty : date.TransactionDate.ToString();
                dataGridView1.Rows.Add(id, fullname, amount, booking, String.Empty, Date);
            }

            DataTable dtSource = new DataTable();
            dtSource.Columns.Add("Sunday");
            dtSource.Columns.Add("Monday");
            dtSource.Columns.Add("Tuesday");
            dtSource.Columns.Add("Wednesday");
            dtSource.Columns.Add("Thursday");
            dtSource.Columns.Add("Friday");
            dtSource.Columns.Add("Saturday");
            int year = 2020;
            int month = 1;
            int DaysInMonth = DateTime.DaysInMonth(year, month);
            int i = 1;
            for (int weak = 0; weak <= 5; weak++)
            {
                DataRow newday = dtSource.NewRow();
                for (int day = 1; day <= 7; day++)
                {
                    if (i > DaysInMonth) break;
                    DateTime dDate = DateTime.Parse(year.ToString() + "-" + month.ToString() + "-" + i.ToString());
                    DayOfWeek dayWeek = CultureInfo.InvariantCulture.Calendar.GetDayOfWeek(dDate);
                    newday[dayWeek.ToString()] = i.ToString();
                    i++;
                    if (dayWeek.ToString() == "Saturday") break;
                }
                dtSource.Rows.Add(newday);
                if (i > DaysInMonth) break;
            }
            dataGridView3.DataSource = dtSource;

            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var areaId = (this.comboBox1.SelectedItem as Area).ID;
            var hostId = (this.comboBox2.SelectedItem as User).ID;
            var guestId = (this.comboBox3.SelectedItem as User).ID;
            var items = _context.Items.Where(x => x.AreaID == areaId && x.User.ID == hostId);
            List<long> longs = new List<long>();
            foreach (var item in items)
            {
                var scores = _context.ItemScores.Where(x => x.ItemID == item.ID);
                var count = scores.Count();
                if (count > 0)
                {
                    var sum = scores.Sum(x => x.Value);
                    longs.Add(sum / count);
                }
                else longs.Add(count);
            }
            this.label25.Text = longs.Sum().ToString();

            List<ItemScore> itemScores = new List<ItemScore>();
            foreach (var item in items)
                itemScores.AddRange(_context.ItemScores.Where(x => x.ItemID == item.ID));
            var max = itemScores.Max(x => x?.Value);
            this.label26.Text = max == null?"0":max.ToString();

            try
            {
                chart1.Series.Clear();

                DateTime date = DateTime.Now;
                chart1.Series.Add(date.ToString("MMMM"));
                date = new DateTime(date.Year, date.Month - 1, date.Day);
                chart1.Series.Add(date.ToString("MMMM"));
                date = new DateTime(date.Year - 1, date.Month + 10, date.Day);
                chart1.Series.Add(date.ToString("MMMM"));

                chart1.Series[0].Points.AddXY(chart1.Series[0].Name, itemScores[0].Value);
                chart1.Series[1].Points.AddXY(chart1.Series[1].Name, itemScores[1].Value);
                chart1.Series[2].Points.AddXY(chart1.Series[2].Name, itemScores[2].Value);
            }
            catch (Exception)
            {
            }

            var coupons = _context.Bookings.Where(x => x.UserID == hostId).Select(x => x.CouponID);
            var counters = new List<int>();
            foreach (var item in coupons)
                counters.Add(coupons.Count(x => x == item));
            if (counters.Count != 0)
            {
                var coupon = _context.Coupons.Find(counters.Max());
                this.label27.Text = coupon.CouponCode;
            }
            else this.label27.Text = "Non coupon used";

            var bookings = _context.Bookings;
            var bookingsCoupons = bookings.Where(x => x.CouponID != null && x.UserID == hostId);
            var coupons2 = new List<Coupon>();
            foreach (var booking in bookingsCoupons)
                coupons2.Add(_context.Coupons.Find(booking.CouponID));
            var amounts = new List<decimal?>();
            for (int i = 0; i < bookingsCoupons.Count(); i++)
                amounts.Add(bookingsCoupons.ToArray()[i].AmountPaid * (coupons2[i].DiscountPercent/100));
            this.label28.Text = $"R$ {amounts.Sum()}";

            this.label29.Text = $"R$ {bookings.Sum(x => x.AmountPaid)}";

            var Users = _context.Users.ToList();
            var Transactions = _context.Transactions.ToList();
            var userName = Users.First(c => c.ID == Transactions.First(x => x.Amount == _context.Transactions.Max(p => p.Amount)).UserID).FullName;
            this.label30.Text = $"{userName}";

            var bookingDetails = _context.BookingDetails.ToList();
            foreach (var bookingDetail in bookingDetails)
            {
                bookingDetail.Booking = _context.Bookings.Find(bookingDetail.BookingID);
                bookingDetail.ItemPrice = _context.ItemPrices.Find(bookingDetail.ItemPriceID);
            }
            decimal total = 0;
            foreach (var bookingDetail in bookingDetails.Where(x => x.RefundCancellationPoliciyID != null))
                total += bookingDetail.ItemPrice.Price * ((_context.CancellationPolicies.Find(bookingDetail.RefundCancellationPoliciyID)).Commission/100);
            this.label31.Text = $"R$ {total}";

            this.label32.Text = _context.Services.Count().ToString();

            this.label33.Text = $"R$ {_context.Services.Sum(x => x.Price)}";

            var services = _context.Services.ToList();
            this.label34.Text = services.First(x => x.BookingCap == _context.Services.Max(c => c.BookingCap)).Name;

            this.label41.Text = _context.BookingDetails.Count(x => x.RefundCancellationPoliciyID != null).ToString();

            this.label37.Text = _context.BookingDetails.Count(x => x.RefundCancellationPoliciyID != null).ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.comboBox1.DataSource = _context.Areas.OrderBy(c => c.Name).ToList();
            this.comboBox1.DisplayMember = "Name";
            this.comboBox1.ValueMember = "ID";

            var list = _context.Users.OrderBy(c => c.FullName);

            this.comboBox2.DataSource = list.Where(x => _context.Items.Any(c => c.UserID == x.ID)).ToList();
            this.comboBox2.DisplayMember = "FullName";
            this.comboBox2.ValueMember = "ID";

            var list2 = _context.Users;

            this.comboBox3.DataSource = list2.Where(x => _context.Bookings.Any(c => c.UserID == x.ID)).ToList();
            this.comboBox3.DisplayMember = "FullName";
            this.comboBox3.ValueMember = "ID";
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex > 0)
            {
                long userID = (long)dataGridView1.Rows[e.RowIndex].Cells[0].Value;
                dataGridView2.Rows.Clear();
                var transactions = _context.Transactions.Where(x => x.UserID == userID).ToList();
                int i = 0;
                foreach (var transaction in transactions)
                {
                    var user = _context.Users.Find(userID);
                    user.Items.ToList().AddRange(_context.Items.Where(x => x.UserID == userID));
                    Item item;
                    try
                    {
                        item = user.Items.ToArray()[i];
                    }
                    catch
                    {
                        item = null;
                    }
                    dataGridView2.Rows.Add(transaction.TransactionDate, transaction.Amount, String.Empty, $"{item?.Title} {transaction.TransactionDate} {item?.MaximumNights}");
                    i++;
                }
            }
        }
    }
}
