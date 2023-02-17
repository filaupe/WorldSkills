using MPT_01_SEv2.Forms.Database;
using MPT_01_SEv2.Forms.Enums;
using MPT_01_SEv2.Forms.Telas.SubTelas;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas
{
    public partial class BR_Principal : Form
    {
        private List<Funcionario> _listaFiltroFuncionarios;
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
            _listaFiltroFuncionarios = null;

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
            foreach (var funcionario in _funcionarios
                .AsNoTracking()
                .OrderBy(x => x.Id)
                .Skip(_skip * _take)
                .Take(_take)
                .ToList())
            {
                Funcionario gerente = _funcionarios.FirstOrDefault(x => x.empid == funcionario.mgrid);
                _telaFuncionario.dataGridViewFuncionarios.Rows.Add(funcionario.Id, funcionario.empname, gerente?.empname, funcionario.salary);
            }
        }

        private void setFuncionarioActions()
        {
            //Paginação
            _telaFuncionario.buttonPaginaAnterior.Click += ButtonPaginaAnterior_Click;
            _telaFuncionario.buttonProximaPagina.Click += ButtonProximaPagina_Click;
            _telaFuncionario.buttonUltimaPagina.Click += ButtonUltimaPagina_Click;
            _telaFuncionario.buttonPrimeiraPagina.Click += ButtonPrimeiraPagina_Click;

            //Filtros
            _telaFuncionario.buttonIgual.Click += ButtonEquals_Click;
            _telaFuncionario.buttonMaiorIgual.Click += ButtonMaiorIgual_Click;
            _telaFuncionario.buttonMenorIgual.Click += ButtonMenorIgual_Click;
            _telaFuncionario.buttonDiferente.Click += ButtonDiferente_Click;
            _telaFuncionario.buttonMaiorQue.Click += ButtonMaiorQue_Click;
            _telaFuncionario.buttonMenorQue.Click += ButtonMenorQue_Click;
        }

        private void ButtonMenorQue_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ButtonMaiorQue_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ButtonDiferente_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ButtonMenorIgual_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ButtonMaiorIgual_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ButtonEquals_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ButtonPrimeiraPagina_Click(object sender, EventArgs e) => this.btnPageAction(btnPageActions.PRIMEIRO);

        private void ButtonUltimaPagina_Click(object sender, EventArgs e) => this.btnPageAction(btnPageActions.ULTIMO);

        private void ButtonPaginaAnterior_Click(object sender, EventArgs e) => this.btnPageAction(btnPageActions.ANTERIOR);

        private void ButtonProximaPagina_Click(object sender, EventArgs e) => this.btnPageAction(btnPageActions.PROXIMO);

        private void btnPageAction(btnPageActions action)
        {
            switch (action)
            {
                case btnPageActions.PROXIMO:
                    _skip++;
                    break;
                case btnPageActions.ANTERIOR:
                    _skip--;
                    break;
                case btnPageActions.PRIMEIRO:
                    _skip = 0;
                    break;
                case btnPageActions.ULTIMO:
                    _skip = (int)Math.Ceiling(1M * _funcionarios.Count() / _take)-1;
                    break;
                default:
                    break;
            }
            this.loadGridFuncionarios();
        }

        private void btnFilterAction(btnFilterActions action)
        {
            switch (action)
            {
                case btnFilterActions.LIMPAR:
                    break;
                case btnFilterActions.IGUAL_QUE:
                    break;
                case btnFilterActions.MAIOR_QUE:
                    break;
                case btnFilterActions.MENOR_QUE:
                    break;
                case btnFilterActions.DIFERENTE_QUE:
                    break;
                case btnFilterActions.MAIOR_IGUAL_QUE:
                    break;
                case btnFilterActions.MENOR_IGUAL_QUE:
                    break;
                default:
                    break;
            }
            this.loadGridFuncionarios();
        }
    }
}
