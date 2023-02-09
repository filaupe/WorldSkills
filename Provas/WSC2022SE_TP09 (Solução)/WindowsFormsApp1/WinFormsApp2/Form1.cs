using DAL2;

namespace WinFormsApp2
{
    public partial class Form1 : Form
    {
        private readonly Session4Entities _context;
        public Form1()
        {
            InitializeComponent();

            _context = new();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.dataGridView1.DataSource = _context.Areas.ToList();
        }
    }
}