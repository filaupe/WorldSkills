using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;

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

            this.comboBox3.DataSource = list2.Where(x => _context.ItemScores.Any(c => c.UserID == x.ID)).ToList();
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

        }

        private void button2_Click(object sender, EventArgs e)
        {

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
