using PT09SELETIVAWSC2017.Databases;
using PT09SELETIVAWSC2017.Telas.Dialogs;
using PT09SELETIVAWSC2017.Telas.SubLogin;
using System;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Threading;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas
{
    public partial class Login : Form
    {
        private Panel[] _panels;
        private readonly bdAbuDhabi01Entities _connection1;
        private readonly bdAbuDhabi02Entities _connection2;
        private readonly bdAbuDhabi03Entities _connection3;

        public Login()
        {
            InitializeComponent();

            _panels = new Panel[] { panelAF, panelAN, panelAS, panelEU, panelNA, panelOC, panelSA };


            try
            {
                _connection1 = new bdAbuDhabi01Entities();
                this.labelConexao.Text = "Matriz";
            }
            catch
            {
                _connection1 = null;
                try
                {
                    _connection2 = new bdAbuDhabi02Entities();
                    this.labelConexao.Text = "Filial01";
                }
                catch
                {
                    _connection2 = null;
                    try
                    {
                        _connection3 = new bdAbuDhabi03Entities();
                        this.labelConexao.Text = "Filial02";
                    }
                    catch
                    {
                        _connection3 = null;
                        this.labelConexao.Text = "Local";
                    }
                }
            }
        }

        private void Pointer_MouseDown(object sender, MouseEventArgs e)
        {
            this.Pointer.DoDragDrop(this.Pointer, DragDropEffects.Move);
        }

        private void Login_DragEnter(object sender, DragEventArgs e)
        {
            e.Effect = DragDropEffects.Move;
        }

        private void Login_DragDrop(object sender, DragEventArgs e)
        {
            Point position = this.PointToClient(new Point((e.X-20), (e.Y-20)));
            this.Pointer.Location = position;

            for (int i = 0; i < _panels.Length; i++)
            {
                Rectangle panelRect = _panels[i].RectangleToScreen(_panels[i].ClientRectangle);
                panelRect = this.RectangleToClient(panelRect);
                if (panelRect.Contains(position))
                {
                    this.textBoxregiao.Text = _panels[i].Tag.ToString();
                    break;
                }
            }
        }

        private async void buttonLogin_Click(object sender, System.EventArgs e)
        {
            try
            {
                string login = this.textBoxlogin.Text;
                string senha = this.textBoxsenha.Text;
                string regiao = this.textBoxregiao.Text;

                Usuario usuario = null;

                bool cnn1 = !(_connection1 == null);
                bool cnn2 = !(_connection2 == null);
                bool cnn3 = !(_connection3 == null);

                if (cnn1) usuario = await _connection1.Usuario.FirstOrDefaultAsync(x => x.USULOGIN == login && x.USUSENHA == senha && x.USUCONTINENTE == regiao);
                if (cnn2) usuario = await _connection2.Usuario.FirstOrDefaultAsync(x => x.USULOGIN == login && x.USUSENHA == senha && x.USUCONTINENTE == regiao);
                if (cnn3) usuario = await _connection3.Usuario.FirstOrDefaultAsync(x => x.USULOGIN == login && x.USUSENHA == senha && x.USUCONTINENTE == regiao);

                if (!cnn1 && !cnn2 && !cnn3)
                {
                    string file = File.ReadAllText("bdAbuDhabiLocalS01.csv");
                    var rowUser = file.Split('\n').FirstOrDefault(x 
                        => x.Split(';').Any(u => u == login) 
                        && x.Split(';').Any(u => u == senha)
                        && x.Split(';').Any(u => u == regiao)).Split(';');
                    usuario = new Usuario
                    {
                        USUCODIGO = int.Parse(rowUser[0]),
                        USUNOME = rowUser[1],
                        USULOGIN = rowUser[2],
                        USUSENHA = rowUser[3],
                        USUAMIGOS = rowUser[4],
                        USUCONTINENTE = rowUser[5],
                    };
                }

                if (usuario != null)
                {
                    var t = new Thread(() => Application.Run(new TelaUsuario(usuario, labelConexao.Text)));
                    t.SetApartmentState(ApartmentState.STA);
                    t.Start();
                    this.Close();
                }

                throw new Exception();
            }
            catch
            {
                MessageBox.Show("Login mal sucedido");
            }
        }

        private async void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            using (var form = new Registrar())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {
                    var usuario = new Usuario
                    {
                        USUNOME = form.textBoxNome.Text,
                        USULOGIN = form.textBoxEmail.Text,
                        USUSENHA = form.textBoxSenha.Text,
                        USUAMIGOS = "null",
                        USUCONTINENTE = form.comboBoxContinente.Text,
                    };

                    bool cnn1 = !(_connection1 == null);
                    bool cnn2 = !(_connection2 == null);
                    bool cnn3 = !(_connection3 == null);

                    if (cnn1)
                    {
                        _connection1.Usuario.Add(usuario);
                        await _connection1.SaveChangesAsync();
                    }
                    if (cnn2)
                    {
                       _connection2.Usuario.Add(usuario);
                        await _connection2.SaveChangesAsync();
                    }
                    if (cnn3) 
                    { 
                        _connection3.Usuario.Add(usuario);
                        await _connection3.SaveChangesAsync();
                    }
                }
            }
        }
    }
}
