using MPT_01_SEv2.Forms.Database;
using MPT_01_SEv2.Forms.Enums;
using MPT_01_SEv2.Forms.Telas.TipoTela;
using System;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas.SubTelas
{
    public partial class BR_Funcionario : FormComPaginacao
    {
        public BR_Funcionario() : base()
        {
            InitializeComponent();

            _take = 2;

            this.setActions();
        }

        private void VerificarPagina()
        {
            bool min = this.VerificarPaginaMinimo();
            bool max = this.VerificarPaginaMaximo();

            this.buttonPrimeiraPagina.Enabled = min;
            this.buttonPaginaAnterior.Enabled = min;

            this.buttonUltimaPagina.Enabled = max;
            this.buttonProximaPagina.Enabled = max;
        }

        public override void AcaoDoBotao(EBtnPageActions action)
        {
            base.AcaoDoBotao(action);
            this.VerificarPagina();
        }

        private void setActions()
        {
            //Paginação
            this.buttonPaginaAnterior.Click += BtnPreviousPage_Click;
            this.buttonProximaPagina.Click += BtnNextPage_Click;
            this.buttonUltimaPagina.Click += BtnLastPage_Click;
            this.buttonPrimeiraPagina.Click += BtnFirstPage_Click;

            ////Filtros
            //this.buttonLimpar.Click += ButtonLimpar_Click;
            //this.buttonIgual.Click += ButtonIgual_Click;
            //this.buttonMaiorIgual.Click += ButtonMaiorIgual_Click;
            //this.buttonMenorIgual.Click += ButtonMenorIgual_Click;
            //this.buttonDiferente.Click += ButtonDiferente_Click;
            //this.buttonMaiorQue.Click += ButtonMaiorQue_Click;
            //this.buttonMenorQue.Click += ButtonMenorQue_Click;
            //this.checkBoxGerentes.CheckedChanged += CheckBoxGerentes_CheckedChanged;

            ////CRUD
            //this.buttonCadastrar.Click += ButtonCadastrar_Click;
            //this.buttonAlterar.Click += ButtonAlterar_Click;
            //this.buttonDeletar.Click += ButtonDeletar_Click;
        }

        public void VerificarCaixaVazia()
        {
            if (String.IsNullOrWhiteSpace(this.textBoxSalario.Text))
                throw new Exception("Você precisa adicionar um valor na caixa de salário para utilizar a filtragem.");
        }
        public void VerificarSeSaoNumeros()
        {
            try
            {
                decimal.Parse(this.textBoxSalario.Text);
            }
            catch
            {
                throw new Exception("São permitidos apenas números.");
            }      
        }

        private void BR_Funcionario_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F4)
                this.Close();
        }

        private void textBoxPrice_TextChanged(object sender, EventArgs e)
        {
            try
            {
                string txtbox = this.textBoxSalario.Text;
                if (!String.IsNullOrEmpty(txtbox))
                    decimal.Parse(txtbox);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
