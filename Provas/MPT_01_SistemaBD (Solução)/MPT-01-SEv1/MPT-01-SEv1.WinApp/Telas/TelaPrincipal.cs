using Microsoft.VisualBasic.ApplicationServices;

namespace MPT_01_SEv1.WinApp.Telas
{
    public partial class TelaPrincipal : Form
    {
        private AppDbContext _context = new();
        private Modelos.Funcionario.Model _user;

        public TelaPrincipal(Modelos.Funcionario.Model user)
        {
            InitializeComponent();

            var hoje = DateTime.Now;
            _user = user;

            this.Name = $"Bem Vindo(a) {_user.empname}!";
            this.labelDateTime.Text = hoje.ToString("dd/MM/yyyy");
            this.labelCount.Text = _user.VezesNoSistema.ToString();
            this.panelBirthday.BackColor = _user.dataNascimento.Month.Equals(hoje.Month) ? Color.Green : Color.Blue;
        }

        private void TelaPrincipal_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 'F')
            {
                this.Close();
            }
        }

        private void TelaPrincipal_KeyPress_1(object sender, KeyPressEventArgs e)
        {

        }
    }
}
