using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Telas
{
    public partial class TesteUnitario : Form
    {
        private int _acertos = 0;
        private int _erros = 0;
        private OpenFileDialog _file;
        private string[][] _table;
        private string _fileName;

        public TesteUnitario()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            _file = new OpenFileDialog()
            {
                Filter = "(*.txt)|*.txt"
            };
            if (_file.ShowDialog() == DialogResult.OK)
            {
                var text = File.ReadAllText(_file.FileName);
                var rows = text.Split('\n');
                _table = rows.Select(x => x.Split(';')).ToArray();
                this.textBox1.Text = _table[0][0];
                this.textBox4.Text = _table[0][1];
                this.textBox5.Text = _table[1][1];
                this.textBox6.Text = _table[2][1];
                this.textBox2.Text = _table[3][0];
                this.textBox3.Text = _table[4][0];
                this.textBox7.Text = _table[3][1];
                this.textBox8.Text = _table[4][1];
                this.button3.Visible = true;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                Assembly dllAssembly = Assembly.LoadFrom(_fileName);

                _erros = 0;
                _acertos = 0;

                int qtdMEP = dllAssembly.DefinedTypes.Sum(x => x.DeclaredMethods.Count());
                int qtdMEPP = dllAssembly.DefinedTypes.Sum(x => x.DeclaredMethods.Where(u => u.IsPublic).Count());
                string[] classes = dllAssembly.DefinedTypes.Select(x => x.Name).ToArray();
                string[][] metodos = dllAssembly.DefinedTypes.Select(x => x.DeclaredMethods.Select(u => u.Name).ToArray()).ToArray();
                string[][] abstratas = dllAssembly.DefinedTypes.Select(x => x.DeclaredMethods?.Select(u => u?.DeclaringType?.BaseType?.Name).ToArray()).ToArray();

                string classe = this.textBox1.Text;
                string metodo = this.textBox2.Text;
                string abstrata = this.textBox3.Text;

                bool esperadoClasse = bool.Parse(this.textBox4.Text);
                bool esperadoMetodo = bool.Parse(this.textBox7.Text);
                bool esperadoAbstrata = bool.Parse(this.textBox8.Text);

                int esperadoQtdMetodos = int.Parse(this.textBox5.Text);
                int esperadoQtdMetodosPublicos = int.Parse(this.textBox6.Text);

                if (qtdMEP == esperadoQtdMetodos)
                {
                    _acertos++;
                    textBox9.Text = "true";
                    pictureBox1.BackColor = Color.Green;
                }
                else
                {
                    _erros++;
                    textBox9.Text = "false";
                    pictureBox1.BackColor = Color.Red;
                }
                if (qtdMEPP == esperadoQtdMetodosPublicos)
                {
                    _acertos++;
                    textBox10.Text = "true";
                    pictureBox2.BackColor = Color.Green;
                }
                else
                {
                    _erros++;
                    textBox10.Text = "false";
                    pictureBox2.BackColor = Color.Red;
                }
                if (classes.Any(x => x ==  classe))
                {
                    _acertos++;
                    textBox11.Text = "true";
                    pictureBox3.BackColor = Color.Green;
                }
                else
                {
                    _erros++;
                    textBox11.Text = "false";
                    pictureBox3.BackColor = Color.Red;
                }
                if (metodos.Any(x => x.Any(o => o == metodo)))
                {
                    _acertos++;
                    textBox13.Text = "true";
                    pictureBox4.BackColor = Color.Green;
                }
                else
                {
                    _erros++;
                    textBox13.Text = "false";
                    pictureBox4.BackColor = Color.Red;
                }
                if (abstratas.Any(x => x.Any(o => o == abstrata)))
                {
                    _acertos++;
                    textBox14.Text = "true";
                    pictureBox5.BackColor = Color.Green;
                }
                else
                {
                    _erros++;
                    textBox14.Text = "false";
                    pictureBox5.BackColor = Color.Red;
                }
                this.label6.Text = $"Acertos: {_acertos}";
                this.label7.Text = $"Erros: {_erros}";

                this.label6.Visible = true;
                this.label7.Visible = true;
            }
            catch (Exception)
            {
                MessageBox.Show("Selecione uma biblioteca");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            _file = new OpenFileDialog();
            if (_file.ShowDialog() == DialogResult.OK)
            {
                _fileName = _file.FileName.Split('\\').Last();
                if (!File.Exists(_fileName))
                    File.Copy(_file.FileName, _fileName);
                this.label11.Visible = true;
            }
        }
    }
}
