using PT2023SE_02_Investimento.Forms.ViewModel;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PT2023SE_02_Investimento.Forms
{
    public partial class Form1 : Form
    {
        private string _erro = "É apenas permitido números aqui";
        private bool _existeErro = false;
        private List<InvestimentoViewModel> _clientes;
        private bool temArquivo = false;

        public Form1()
        {
            InitializeComponent();

            _clientes = new List<InvestimentoViewModel>();
        }

        private void buttonConcluir_Click(object sender, EventArgs e)
        {
            try
            {
                SaveFileDialog saveFileDialog = new SaveFileDialog();
                if (_existeErro)
                    throw new Exception("Você precisa utilizar valores compatíveis");
                if (this.dataGridViewUsers.RowCount < 3)
                    throw new Exception("É necessário o mínimo 3 usuários");

                if (saveFileDialog.ShowDialog() == DialogResult.OK)
                {
                    var file = File.CreateText(saveFileDialog.FileName);
                    var clientes = _clientes.Select(x => x.Cliente);
                    var strBuilder = new StringBuilder();

                    var data = new DataViewModel()
                    {
                        MediaIdade = clientes.Sum(x => x.idade) / clientes.Count(),
                        JurosAcumuladoPorCliente = _clientes.Select(x => x.retornarJurosAcumulado()).ToList(),
                    };
                    strBuilder.AppendLine($"Média de idade dos clientes: {data.MediaIdade}");
                    _clientes.ForEach(x =>
                    {
                        strBuilder.AppendLine($"\n O cliente {x.Cliente.nome} acumulou R$ {x.retornarJurosAcumulado()}, no periódo de {x.meses} meses");
                    });
                    strBuilder.AppendLine($"\n Ao todo eles acumularam {data.SomaTodosOsJuros()}");
                    file.Write(strBuilder.ToString());
                    MessageBox.Show($"{strBuilder} \n O arquivo está em {saveFileDialog.FileName}");
                    file.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonAdicionar_Click(object sender, EventArgs e)
        {
            try
            {
                if (_existeErro)
                    throw new Exception("Você precisa utilizar valores compatíveis");
                InvestimentoViewModel investimento = new InvestimentoViewModel() 
                {
                    Cliente = new ClienteViewModel()
                    {
                        nome = this.textBoxName.Text,
                        idade = int.Parse(this.textBoxIdade.Text),
                    },
                    meses = int.Parse(this.textBoxMeses.Text),
                    valorInvestido = double.Parse(this.textBoxValorInvestimento.Text)
                };
                ClienteViewModel cliente = investimento.Cliente;
                this.dataGridViewUsers.Rows.Add(cliente.nome, cliente.idade, $"R$ {investimento.valorInvestido}");
                _clientes.Add(investimento);
                MessageBox.Show("Cliente Adicionado!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void textBoxValorInvestimento_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(this.textBoxIdade.Text))
                    double.Parse(this.textBoxValorInvestimento.Text);
                _existeErro = false;
            }
            catch (Exception)
            {
                MessageBox.Show(_erro);
                _existeErro = true;
            }
        }

        private void textBoxMeses_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(this.textBoxIdade.Text))
                    int.Parse(this.textBoxMeses.Text);
                _existeErro = false;
            }
            catch (Exception)
            {
                MessageBox.Show(_erro);
                _existeErro = true;
            }
        }

        private void textBoxIdade_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(this.textBoxIdade.Text))
                    int.Parse(this.textBoxIdade.Text);
                _existeErro = false;
            }
            catch (Exception)
            {
                MessageBox.Show(_erro);
                _existeErro = true;
            }
        }

        private void buttonPDF_Click(object sender, EventArgs e)
        {
            try
            {
                if (!temArquivo)
                    throw new Exception("Selecione um arquivo");
                PrintDocument document = new PrintDocument();
                document.PrinterSettings.PrinterName = "Microsoft Print to PDF";

                PaperSize paperSize = new PaperSize("Test", 315, 300);

                document.DefaultPageSettings.PaperSize = paperSize;
                document.DefaultPageSettings.Margins = new Margins(0, 0, 0, 0);

                document.PrinterSettings.DefaultPageSettings.PaperSize = paperSize;
                document.PrinterSettings.DefaultPageSettings.Margins = new Margins(0, 0, 0, 0);

                document.Print();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        protected override void OnPrint(PaintEventArgs e)
        {
            if (temArquivo)
            {
                var strBuilder = new StringBuilder();
                using (var file = File.OpenText(this.openFileDialog1.FileName))
                    while (file.ReadLine() != null)
                        strBuilder.AppendLine(file.ReadLine());

                String drawString = strBuilder.ToString();

                Font drawFont = new Font("Arial", 16);
                SolidBrush drawBrush = new SolidBrush(Color.Black);

                float x = 0;
                float y = 0;

                StringFormat drawFormat = new StringFormat();
                drawFormat.FormatFlags = StringFormatFlags.DirectionVertical;

                e.Graphics.DrawString(drawString, drawFont, drawBrush, x, y, drawFormat);
            }

        }

        private void buttonSelectArchive_Click(object sender, EventArgs e)
        {
            this.openFileDialog1 = new OpenFileDialog();
            if (this.openFileDialog1.ShowDialog() == DialogResult.OK)
                textBox1.Text = this.openFileDialog1.FileName;
            temArquivo = true;
        }
    }
}
