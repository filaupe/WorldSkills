using System.Threading;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S3.Telas
{
    public partial class Histórico : Form
    {
        public Histórico()
        {
            InitializeComponent();
        }

        private void Back_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Close();
        }
    }
}
