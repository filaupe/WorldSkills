using MPT_01_SEv2.Forms.Database;
using MPT_01_SEv2.Forms.Enums;
using MPT_01_SEv2.Forms.Telas.Dialogos;
using MPT_01_SEv2.Forms.Telas.SubTelas;
using MPT_01_SEv2.Forms.Telas.TipoTela;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas
{
    public partial class BR_Principal : Form
    {
        private readonly bdBrasilResortEntities _context;
        private DateTime _dateTime = DateTime.Now;
        private IQueryable<Funcionarios> _funcionarios;
        private BR_Funcionario _telaFuncionario;

        private readonly Funcionarios _usuario;
        private readonly Nascimentos _usuarioNascimento;
        private readonly Logins _usuarioLogin;

        public BR_Principal(Funcionarios usuario)
        {
            InitializeComponent();

            _context = new bdBrasilResortEntities();
            _funcionarios = _context.Funcionarios;
            _usuario = usuario;
            _usuarioLogin = _context.Logins.FirstOrDefault(x => x.FuncionarioId == _usuario.Id);
            _usuarioNascimento = _context.Nascimentos.FirstOrDefault(x => x.FuncionarioId == _usuario.Id);
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            _dateTime = DateTime.Now;
            this.setDateTimeLabel();
        }

        private void BR_Principal_Load(object sender, EventArgs e)
        {
            this.setDateTimeLabel();
            this.toolStripStatusLabelLoginCounter.Text = $"Vezes logado: {_usuarioLogin.Quantidade}";
            if (_usuarioNascimento.DataNascimento.Month == DateTime.Now.Month)
                this.setBirthdateTheme();
        }

        private void setBirthdateTheme()
        {
            Color csg = Color.SpringGreen;
            Color cc = Color.Cyan;
            Color cg = Color.Green;
            Color cb = Color.Blue;

            this.statusStrip.BackColor = cg;

            this.toolStrip.BackColor = csg;

            this.menuStrip.BackColor = cb;

            this.toolStripStatusLabelDateTime.ForeColor = cc;
            this.toolStripStatusLabelLoginCounter.ForeColor = cc;
            this.toolStripMenuItemHome.ForeColor = cc;
            this.departamentoToolStripMenuItem.ForeColor = cc;
            this.funcionárioToolStripMenuItem.ForeColor = cc;
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

        private void departamentoToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void toolStripMenuItemHome_Click(object sender, EventArgs e)
        {
            foreach (var children in this.MdiChildren)
                children.Close();
        }

        private void setDateTimeLabel()
        {
            this.toolStripStatusLabelDateTime.Text = _dateTime.ToString("dd/MM/yyyy");
        }

        private void setTelaFuncionario()
        {
            _telaFuncionario = new BR_Funcionario();
            _telaFuncionario.MdiParent = this;
            this.VerificarPagina((int)Math.Ceiling(1M * _funcionarios.Count() / _telaFuncionario._take) - 1);
        }

        private void loadComboBoxFuncionarios()
        {
            _telaFuncionario.comboBoxFuncionarios.DataSource = _funcionarios.ToList();
            _telaFuncionario.comboBoxFuncionarios.ValueMember = "Id";
            _telaFuncionario.comboBoxFuncionarios.DisplayMember = "Nome";
        }

        private void loadGridFuncionarios()
        {
            _telaFuncionario.dataGridViewFuncionarios.Rows.Clear();
            foreach (var funcionario in _funcionarios
                .AsNoTracking()
                .OrderBy(x => x.Nome)
                .Skip(_telaFuncionario._skip * _telaFuncionario._take)
                .Take(_telaFuncionario._take)
                .ToList())
            {
                Funcionarios gerente = _funcionarios.FirstOrDefault(x => x.Id == funcionario.GerenteId);
                _telaFuncionario.dataGridViewFuncionarios.Rows.Add(funcionario.Id, funcionario.Nome, gerente?.Nome, funcionario.Salario);
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
            _telaFuncionario.buttonLimpar.Click += ButtonLimpar_Click;
            _telaFuncionario.buttonIgual.Click += ButtonIgual_Click;
            _telaFuncionario.buttonMaiorIgual.Click += ButtonMaiorIgual_Click;
            _telaFuncionario.buttonMenorIgual.Click += ButtonMenorIgual_Click;
            _telaFuncionario.buttonDiferente.Click += ButtonDiferente_Click;
            _telaFuncionario.buttonMaiorQue.Click += ButtonMaiorQue_Click;
            _telaFuncionario.buttonMenorQue.Click += ButtonMenorQue_Click;
            _telaFuncionario.checkBoxGerentes.CheckedChanged += CheckBoxGerentes_CheckedChanged;

            //CRUD
            _telaFuncionario.buttonCadastrar.Click += ButtonCadastrar_Click;
            _telaFuncionario.buttonAlterar.Click += ButtonAlterar_Click;
            _telaFuncionario.buttonDeletar.Click += ButtonDeletar_Click;
        }

        private void CheckBoxGerentes_CheckedChanged(object sender, EventArgs e)
        {
            if (_telaFuncionario.checkBoxGerentes.Checked)
                _funcionarios = _funcionarios.Where(x => _context.Funcionarios.Any(c => x.Id == c.GerenteId));
            else _funcionarios = _context.Funcionarios;
            this.loadGridFuncionarios();
        }

        private void ButtonDeletar_Click(object sender, EventArgs e)
        {
            using (var form = new Deletar())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {
                    //. . .
                }
            }
        }

        private void ButtonAlterar_Click(object sender, EventArgs e)
        {
            using (var form = new CadastrarAlterarFuncionario())
            {
                form.Text = "Alterando Funcionário...";
                if (form.ShowDialog() == DialogResult.OK)
                {
                    //. . .
                }
            }
        }

        private void ButtonCadastrar_Click(object sender, EventArgs e)
        {
            using (var form = new CadastrarAlterarFuncionario())
            {
                form.Text = "Cadastrando Funcionário...";
                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }

        private void ButtonLimpar_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.LIMPAR);
        private void ButtonMenorQue_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.MENOR_QUE);
        private void ButtonMaiorQue_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.MAIOR_QUE);
        private void ButtonDiferente_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.DIFERENTE_QUE);
        private void ButtonMenorIgual_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.MENOR_IGUAL_QUE);
        private void ButtonMaiorIgual_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.MAIOR_IGUAL_QUE);
        private void ButtonIgual_Click(object sender, EventArgs e) => this.btnFilterAction(EBtnFilterActions.IGUAL_QUE);
       
        private void ButtonPrimeiraPagina_Click(object sender, EventArgs e) 
            => this.btnPageAction(_telaFuncionario, _funcionarios, EBtnPageActions.PRIMEIRO);
        private void ButtonUltimaPagina_Click(object sender, EventArgs e) 
            => this.btnPageAction(_telaFuncionario, _funcionarios, EBtnPageActions.ULTIMO);
        private void ButtonPaginaAnterior_Click(object sender, EventArgs e)
            => this.btnPageAction(_telaFuncionario, _funcionarios, EBtnPageActions.ANTERIOR);
        private void ButtonProximaPagina_Click(object sender, EventArgs e) 
            => this.btnPageAction(_telaFuncionario, _funcionarios, EBtnPageActions.PROXIMO);

        private void btnPageAction(FormComPaginacao form, IQueryable<object> list, EBtnPageActions action)
        {
            var limite = (int)Math.Ceiling(1M * list.Count() / _telaFuncionario._take) - 1;
            switch (action)
            {
                case EBtnPageActions.PROXIMO:
                    form._skip = form._skip >= limite ? limite : form._skip + 1;
                    break;
                case EBtnPageActions.ANTERIOR:
                    form._skip = form._skip <= 0 ? 0 : form._skip - 1;
                    break;
                case EBtnPageActions.PRIMEIRO:
                    form._skip = 0;
                    break;
                case EBtnPageActions.ULTIMO:
                    form._skip = limite;
                    break;
                default:
                    break;
            }
            this.VerificarPagina(limite);
            this.loadGridFuncionarios();
        }

        private void btnFilterAction(EBtnFilterActions action)
        {
            try
            {
                double salario;
                if (action != EBtnFilterActions.LIMPAR)
                {
                    _telaFuncionario.VerificarCaixaVazia();
                    _telaFuncionario.VerificarSeSaoNumeros();

                    MessageBox.Show("Aviso: ao filtrar todos os items da tabela serão baseados na última filtragem feita, " +
                        "para reiniciar os items da tabela é necessário clicar no botão de \"limpar\".");
                    salario = double.Parse(_telaFuncionario.textBoxSalario.Text);
                }
                else salario = 0;
                switch (action)
                {
                    case EBtnFilterActions.LIMPAR:
                        _funcionarios = _context.Funcionarios;
                        _telaFuncionario.textBoxSalario.Text = String.Empty;
                        break;
                    case EBtnFilterActions.IGUAL_QUE:
                        _funcionarios = _funcionarios.Where(x => x.Salario == salario);
                        break;
                    case EBtnFilterActions.MAIOR_QUE:
                        _funcionarios = _funcionarios.Where(x => x.Salario > salario);
                        break;
                    case EBtnFilterActions.MENOR_QUE:
                        _funcionarios = _funcionarios.Where(x => x.Salario < salario);
                        break;
                    case EBtnFilterActions.DIFERENTE_QUE:
                        _funcionarios = _funcionarios.Where(x => x.Salario != salario);
                        break;
                    case EBtnFilterActions.MAIOR_IGUAL_QUE:
                        _funcionarios = _funcionarios.Where(x => x.Salario >= salario);
                        break;
                    case EBtnFilterActions.MENOR_IGUAL_QUE:
                        _funcionarios = _funcionarios.Where(x => x.Salario <= salario);
                        break;
                    default:
                        _funcionarios = _context.Funcionarios;
                        break;
                }
                this.loadGridFuncionarios();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void VerificarPagina(int limite)
        {
            bool min = _telaFuncionario._skip > 0;
            bool max = _telaFuncionario._skip < limite;

            _telaFuncionario.buttonPrimeiraPagina.Enabled = min;
            _telaFuncionario.buttonPaginaAnterior.Enabled = min;

            _telaFuncionario.buttonUltimaPagina.Enabled = max;
            _telaFuncionario.buttonProximaPagina.Enabled = max;
        }
    }
}
