using System;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas.SubTelas
{
    public partial class BR_Funcionario : Form
    {
        public BR_Funcionario()
        {
            InitializeComponent();
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
                string txtbox = this.textBoxPrice.Text;
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
