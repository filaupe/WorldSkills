using BibliotecaTur.Databases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Forms.Telas
{
    public partial class WireframeSessao01_E03 : Form
    {
        private bool _clicked = false;
        private Point _atPosition;

        private bdAbuDhabi01Entities _context1;
        private bdAbuDhabi02Entities _context2;
        private bdAbuDhabi03Entities _context3;

        public WireframeSessao01_E03()
        {
            InitializeComponent();
        }

        private void pictureBox1_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                _clicked = true;
                _atPosition = e.Location;
            }
        }

        private void pictureBox1_MouseMove(object sender, MouseEventArgs e)
        {
            if (_clicked)
                pictureBox1.Location = new Point(Cursor.Position.X - this.pictureBox1.Location.X, Cursor.Position.Y - this.pictureBox1.Location.Y);
        }

        private void pictureBox1_MouseUp(object sender, MouseEventArgs e)
        {
            _clicked = false;
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            using (var form = new Inscreverse())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {

                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            void Login(Usuario usuario)
            {
                var t = new Thread(() => Application.Run(new Login(usuario)));
                t.SetApartmentState(ApartmentState.STA);
                t.Start();
                this.Close();
            }

            try
            {
                _context1 = new bdAbuDhabi01Entities();
                var usuario = _context1.Usuarios.FirstOrDefault(x => x.USULOGIN == textBox1.Text && x.USUSENHA == textBox2.Text);
                if (usuario != null)
                    Login(usuario);
            }
            catch { }
            try
            {
                _context2 = new bdAbuDhabi02Entities();
                var usuario = _context2.Usuarios.FirstOrDefault(x => x.USULOGIN == textBox1.Text && x.USUSENHA == textBox2.Text);
                if (usuario != null)
                    Login(usuario);
            }
            catch { }
            try
            {
                _context3 = new bdAbuDhabi03Entities();
                var usuario = _context3.Usuarios.FirstOrDefault(x => x.USULOGIN == textBox1.Text && x.USUSENHA == textBox2.Text);
                if (usuario != null)
                    Login(usuario);
            }
            catch { }
            foreach (var item in Properties.Resources.bdAbuDhabiLocalS01.Split('\n'))
            {
                if (item.Split(';').Any(x => x.Contains(textBox1.Text)))
                {
                    if (item.Split(';').Any(x => x.Contains(textBox2.Text)))
                    {
                        Login(null);
                    }
                }
            }
        }
    }
}
