using PT09SELETIVAWSC2017.Databases;
using System;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas.SubLogin
{
    public partial class TelaUsuario : Form
    {
        private string[] _amigos;
        private Databases.Usuario _usuario;
        private string _cnn;

        public TelaUsuario(Databases.Usuario usuario, string cnn)
        {
            InitializeComponent();
            _usuario = usuario;
            _cnn = cnn;
            _amigos = usuario.USUAMIGOS.Split('|');
        }

        private void Login_Load(object sender, EventArgs e)
        {
            this.label3.Text = _cnn;
            this.label1.Text = $"Bem-Vindo {_usuario.USUNOME}";

            foreach (var dataAmigo in _amigos)
            {
                try
                {
                    void data(object button, EventArgs even) 
                        => MessageBox.Show($"Seu amigo nasceu em {((string)((Button)button).Tag).Replace('-', '/')}", ((Button)button).Text);
                    var amigo = dataAmigo.Split(';');
                    var btn = new Button
                    {
                        Text = amigo[0],
                        Size = new System.Drawing.Size(105, 44),
                        Tag = amigo[1],
                    };
                    btn.Click += data;
                    this.tableLayoutPanel1.Controls.Add(btn);
                    var calc = (int)Math.Ceiling(1M * (_amigos.Length / 3))+1;
                    if (this.tableLayoutPanel1.RowCount < calc)
                    {
                        this.tableLayoutPanel1.RowCount++;
                        this.tableLayoutPanel1.Height += 50;
                    }
                }
                catch
                {

                }
            }

            foreach (var number in _usuario.USUCODIGO.ToString())
            {
                switch (int.Parse(number.ToString()))
                {
                    case 0:
                        button0.BackColor = Color.Gold;
                        break;
                    case 1:
                        button1.BackColor = Color.Green;
                        break;
                    case 2:
                        button2.BackColor = Color.Gold;
                        break;
                    case 3:
                        button3.BackColor = Color.Green;
                        break;
                    case 4:
                        button4.BackColor = Color.Gold;
                        break;
                    case 5:
                        button5.BackColor = Color.Green;
                        break;
                    case 6:
                        button6.BackColor = Color.Gold;
                        break;
                    case 7:
                        button7.BackColor = Color.Green;
                        break;
                    case 8:
                        button8.BackColor = Color.Gold;
                        break;
                    case 9:
                        button9.BackColor = Color.Green;
                        break;
                    default:
                        break;
                }
            }
        }

        private void buttonVoltar_Click(object sender, EventArgs e)
        {
            var t = new Thread(() => Application.Run(new Telas.Login()));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
            this.Close();
        }
    }
}
