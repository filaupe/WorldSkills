using MPT_01_SEv2.Forms.Database;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace MPT_01_SEv2.Forms.Telas
{
    public partial class Login : Form
    {
        private bdBrasilResortEntities _context;
        private List<Funcionarios> _funcionarios;
        private int _counter = 0;

        public Login()
        {
            InitializeComponent();

            _context = new bdBrasilResortEntities();
            _funcionarios = _context.Funcionarios.ToList();
        }

        private string refatorarTexto(string str)
        {
            StringBuilder strBuilder = new StringBuilder();
            var letters = str.Normalize(NormalizationForm.FormD).ToCharArray();
            foreach (var letter in letters)
                if (CharUnicodeInfo.GetUnicodeCategory(letter) != UnicodeCategory.NonSpacingMark)
                    strBuilder.Append(letter);
            return strBuilder.ToString().ToLower().Replace(" ", String.Empty);
        }

        private void textBoxNome_Enter(object sender, System.EventArgs e) => this.textBoxNome.BackColor = Color.LightCyan;

        private void textBoxNome_Leave(object sender, System.EventArgs e) => this.textBoxNome.BackColor = Color.Cyan;

        private void buttonEntrar_Click(object sender, System.EventArgs e)
        {
            var nome = this.refatorarTexto(this.textBoxNome.Text);
            Funcionarios usuario = _funcionarios.FirstOrDefault(x => this.refatorarTexto(x.Nome) == nome);
            if (usuario != null)
            {
                _context.Logins.FirstOrDefault(x => x.FuncionarioId == usuario.Id).Quantidade++;
                _context.SaveChanges();

                Thread openPrincipal = new Thread(() => Application.Run(new BR_Principal(usuario)));
                openPrincipal.SetApartmentState(ApartmentState.STA);
                openPrincipal.Start();
                this.Close();
            }
            _counter++;
            if (_counter >= 3)
                Application.Exit();
            MessageBox.Show($"Você tem apenas mais {3-_counter} tentativas.");
        }
    }
}
