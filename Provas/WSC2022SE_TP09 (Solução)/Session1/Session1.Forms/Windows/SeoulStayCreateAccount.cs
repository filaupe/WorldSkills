using Session1.Forms.Windows.Dialogs;

namespace Session1.Forms.Windows
{
    public partial class SeoulStayCreateAccount : Form
    {
        public int count = 0;
        public SeoulStayCreateAccount()
        {
            InitializeComponent();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {  
            using ShowTerms form = new();
            if (form.ShowDialog() == DialogResult.OK)
                this.count++;
        }
    }
}
