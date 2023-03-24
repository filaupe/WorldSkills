using System.Drawing.Printing;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S3.Telas
{
    public partial class Apartamentos : Form
    {
        public Apartamentos()
        {
            InitializeComponent();
        }

        private async Task ReloadDataInTable()
        {

        }

        private async Task deleteAsync()
        {

        }

        private void button2_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                var table = this.tableLayoutPanelCrudPanel;
                table.Location = e.Location;
                table.Visible = !table.Visible;
            }
        }

        private void button2_Click(object sender, System.EventArgs e)
        {
            using (var form = new Cadastro())
            {
                string edt = "Editar";
                form.Text = edt;
                form.State.Text = edt;
                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }

        private void Historic_Click(object sender, System.EventArgs e)
        {
            this.tableLayoutPanelCrudPanel.Visible = false;
            using (var form = new Histórico())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {
                    form.Dispose();
                }
            };
        }

        private async void Delete_Click(object sender, System.EventArgs e)
        {
            this.tableLayoutPanelCrudPanel.Visible = false;
            await deleteAsync();
            await ReloadDataInTable();
        }

        private void Add_Click(object sender, System.EventArgs e)
        {
            using (var form = new Cadastro())
            {
                string cdtr = "Cadastrar";
                form.Text = cdtr;
                form.State.Text = cdtr;
                form.Save.Text = cdtr;
                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }
    }
}
