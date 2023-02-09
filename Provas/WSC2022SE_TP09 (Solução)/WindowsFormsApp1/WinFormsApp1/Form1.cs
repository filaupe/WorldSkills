
using DAL2;

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        private readonly Session1Entities _context;

        public Form1()
        {
            InitializeComponent();

            _context = new Session1Entities();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.dataGridView1.DataSource = _context.Coupons;
        }
    }
}