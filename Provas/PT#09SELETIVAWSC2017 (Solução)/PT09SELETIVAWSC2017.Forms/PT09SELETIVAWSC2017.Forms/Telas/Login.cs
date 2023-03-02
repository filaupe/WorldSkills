using BibliotecaTur.Databases;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Forms.Telas
{
    public partial class Login : Form
    {
        private readonly Usuario _usuario;

        public Login(Usuario usuario)
        {
            InitializeComponent();

            _usuario = usuario;
        }
    }
}
