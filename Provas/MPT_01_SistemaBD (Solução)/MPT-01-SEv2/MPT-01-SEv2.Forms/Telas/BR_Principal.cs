using MPT_01_SEv2.Forms.Database;
using MPT_01_SEv2.Forms.Enums;
using MPT_01_SEv2.Forms.Telas.SubTelas;
using System;
using System.Data.Entity;
using System.Linq;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas
{
    public partial class BR_Principal : Form
    {
        private readonly bdBrasilResortEntities _context;
        private DateTime _dateTime = DateTime.Now;
        private DbSet<Funcionario> _funcionarios;
        private BR_Funcionario _telaFuncionario;
        public int _skip;
        public int _take;

        public BR_Principal()
        {
            InitializeComponent();

            _context = new bdBrasilResortEntities();
            _funcionarios = _context.Funcionarios;

            _skip = 0;
            _take = 3;
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            _dateTime = DateTime.Now;
            this.setDateTimeLabel();
        }

        private void BR_Principal_Load(object sender, EventArgs e)
        {
            this.setDateTimeLabel();
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

        private void funcionárioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.setTelaFuncionario();
            this.loadComboBoxFuncionarios();
            this.setFuncionarioActions();
            this.loadGridFuncionarios();

            _telaFuncionario.Show();
        }

        private void setDateTimeLabel()
        {
            this.toolStripStatusLabelDateTime.Text = _dateTime.ToString("dd/MM/yyyy");
        }

        private void setTelaFuncionario()
        {
            _telaFuncionario = new BR_Funcionario();
            _telaFuncionario.MdiParent = this;
        }

        private void loadComboBoxFuncionarios()
        {
            _telaFuncionario.comboBoxFuncionarios.DataSource = _funcionarios.ToList();
            _telaFuncionario.comboBoxFuncionarios.ValueMember = "Id";
            _telaFuncionario.comboBoxFuncionarios.DisplayMember = "empname";
        }

        private void loadGridFuncionarios()
        {
            _telaFuncionario.dataGridViewFuncionarios.Rows.Clear();
            foreach (var funcionario in _funcionarios.AsNoTracking().OrderBy(x => x.Id).Skip(_skip * _take).Take(_take).ToList())
            {
                Funcionario gerente = _funcionarios.FirstOrDefault(x => x.empid == funcionario.mgrid);
                _telaFuncionario.dataGridViewFuncionarios.Rows.Add(funcionario.Id, funcionario.empname, gerente?.empname, funcionario.salary);
            }
        }

        private void setFuncionarioActions()
        {
            _telaFuncionario.buttonPaginaAnterior.Click += ButtonPaginaAnterior_Click;
            _telaFuncionario.buttonProximaPagina.Click += ButtonProximaPagina_Click;
            _telaFuncionario.buttonUltimaPagina.Click += ButtonUltimaPagina_Click;
            _telaFuncionario.buttonPrimeiraPagina.Click += ButtonPrimeiraPagina_Click;
        }

        private void ButtonPrimeiraPagina_Click(object sender, EventArgs e) => this.btnPageAction(btnActions.PRIMEIRO);

        private void ButtonUltimaPagina_Click(object sender, EventArgs e) => this.btnPageAction(btnActions.ULTIMO);

        private void ButtonPaginaAnterior_Click(object sender, EventArgs e) => this.btnPageAction(btnActions.ANTERIOR);

        private void ButtonProximaPagina_Click(object sender, EventArgs e) => this.btnPageAction(btnActions.PROXIMO);

        private void btnPageAction(btnActions action)
        {
            switch (action)
            {
                case btnActions.PROXIMO:
                    _skip++;
                    break;
                case btnActions.ANTERIOR:
                    _skip--;
                    break;
                case btnActions.PRIMEIRO:
                    _skip = 0;
                    break;
                case btnActions.ULTIMO:
                    _skip = (int)Math.Ceiling(1M * _funcionarios.Count() / _take);
                    break;
                default:
                    break;
            }
            this.loadGridFuncionarios();
        }
    }
}
