using PT09SELETIVAWSC2017_S6.Banco;
using System;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S6.Telas
{
    public partial class CentralDePesquisa : Form
    {
        private int qtdColumns = 0;
        private bool _inTask = false;
        private readonly bdAbuDhabiTurS06Entities _context;

        public CentralDePesquisa()
        {
            InitializeComponent();

            _context = new bdAbuDhabiTurS06Entities();
        }

        private void CentralDePesquisa_Load(object sender, EventArgs e)
        {
            var listaTabelas = _context.GetType().GetProperties().Where(x => x.PropertyType.IsGenericType).ToList();
            var listaNomes = listaTabelas.Select(x => x.Name).ToList();

            this.comboTabela.DataSource = listaNomes;
        }

        private void comboTabela_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                switch (this.comboTabela.SelectedValue.ToString())
                {
                    case "Auditoria":
                        var auditoria = _context.Auditoria.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.Auditoria.ToList();
                        this.comboAtributo.DataSource = auditoria;
                        qtdColumns = auditoria.Count - 1;
                        break;
                    case "Cliente":
                        var cliente = _context.Cliente.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.Cliente.ToList();
                        this.comboAtributo.DataSource = cliente;
                        qtdColumns = cliente.Count - 1;
                        break;
                    case "Compra":
                        var compra = _context.Compra.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.Compra.ToList();
                        this.comboAtributo.DataSource = compra;
                        qtdColumns = compra.Count - 1;
                        break;
                    case "DisponibilidadeAcomodacao":
                        var disponibilidadeAcomodacao = _context.DisponibilidadeAcomodacao.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.DisponibilidadeAcomodacao.ToList();
                        this.comboAtributo.DataSource = disponibilidadeAcomodacao;
                        qtdColumns = disponibilidadeAcomodacao.Count;
                        break;
                    case "Pacote":
                        var pacote = _context.Pacote.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.Pacote.ToList();
                        this.comboAtributo.DataSource = pacote;
                        qtdColumns = pacote.Count - 1;
                        break;
                    case "Reserva":
                        var reserva = _context.Reserva.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.Reserva.ToList();
                        this.comboAtributo.DataSource = reserva;
                        qtdColumns = reserva.Count - 1;
                        break;
                    case "TIPOACOMODACAO":
                        var tipoacomodacao = _context.TIPOACOMODACAO.First().GetType().GetProperties().Select(u => u.Name).ToList();
                        this.Tabela.DataSource = _context.TIPOACOMODACAO.ToList();
                        this.comboAtributo.DataSource = tipoacomodacao;
                        qtdColumns = tipoacomodacao.Count - 1;
                        break;
                    default:
                        break;
                }
            }
            catch
            {
            }
        }

        private void comboAtributo_SelectedIndexChanged(object sender, EventArgs e)
        {
            var type = this.Tabela.Columns[this.comboAtributo.SelectedIndex].ValueType.Name;
            var listaString = new string[] { "Iniciando com...", "Terminando com...", "Contém", "=" };
            var listaSIntDateTime = new string[] { "=", ">=", "<", "<=", ">", "<>" };
            switch (type)
            {
                case "DateTime":
                    this.comboCriterios.DataSource = listaSIntDateTime.ToList();
                    break;
                case "Int32":
                    this.comboCriterios.DataSource = listaSIntDateTime.ToList();
                    break;
                case "String":
                    this.comboCriterios.DataSource = listaString.ToList();
                    break;
                default:
                    break;
            }
        }

        private void SearchBtn_Click(object sender, EventArgs e)
        {
            switch (this.comboCriterios.Text)
            {
                case "Iniciando com...": 
                    break;
                case "Terminando com...": 
                    break;
                case "Contém": 
                    break;
                case "=":
                    break;
                case ">=": 
                    break;
                case "<": 
                    break;
                case "<=": 
                    break;
                case ">": 
                    break;
                case "<>": 
                    break;
                default:
                    break;
            }

            foreach (DataGridViewRow item in this.Tabela.Rows)
            {
                if (item.Cells[this.comboAtributo.SelectedIndex].Value.ToString() != this.SearchBox.Text)
                    item.DefaultCellStyle.BackColor = Color.Red;
            }
        }
    }
}
