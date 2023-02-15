using MPT_01_SEv2.Forms.Database;
using MPT_01_SEv2.Forms.Telas.SubTelas;
using System;
using System.Linq;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas
{
    public partial class BR_Principal : Form
    {
        private readonly bdBrasilResortEntities _context;
        private DateTime _dateTime = DateTime.Now;

        public BR_Principal()
        {
            InitializeComponent();

            _context = new bdBrasilResortEntities();
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            _dateTime = DateTime.Now;
            this.toolStripStatusLabelDateTime.Text = _dateTime.ToString("dd/MM/yyyy");
        }

        private void BR_Principal_Load(object sender, EventArgs e)
        {
            this.toolStripStatusLabelDateTime.Text = _dateTime.ToString("dd/MM/yyyy");
        }

        private void funcionárioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new BR_Funcionario();
            form.MdiParent = this;
            foreach (var funcionario in _context.Funcionarios.ToList())
            {
                this.toolStripProgressBar.Value++;
                Funcionario gerente = _context.Funcionarios.FirstOrDefault(x => x.empid == funcionario.mgrid);
                form.dataGridViewFuncionarios.Rows.Add(funcionario.Id, funcionario.empname, gerente?.empname, funcionario.salary);
            }            
            form.Show();
            this.toolStripProgressBar.Value = 0;
        }

        private void toolStripComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (this.toolStripComboBox.SelectedIndex)
            {
                case 0: this.LayoutMdi(MdiLayout.TileVertical); break;
                case 1: this.LayoutMdi(MdiLayout.TileHorizontal); break;
                case 2: this.LayoutMdi(MdiLayout.Cascade); break;
                default: this.LayoutMdi(MdiLayout.ArrangeIcons); break;
            }
        }
    }
}
