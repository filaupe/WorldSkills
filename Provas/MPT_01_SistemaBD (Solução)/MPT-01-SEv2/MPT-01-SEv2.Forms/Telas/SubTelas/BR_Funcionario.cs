using MPT_01_SEv2.Forms.Telas.TipoTela;
using System;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas.SubTelas
{
    public partial class BR_Funcionario : FormComPaginacao
    {
        public BR_Funcionario()
        {
            InitializeComponent();

            _skip = 0;
            _take = 2;
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
