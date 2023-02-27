using PT2023SE_02_InvestimentoV2.Forms.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PT2023SE_02_InvestimentoV2.Forms
{
    public partial class TelaInvestimento : Form
    {
        private readonly List<Investimento> _investimentos;

        public TelaInvestimento()
        {
            InitializeComponent();

            _investimentos = new List<Investimento>();
        }

        private void buttonAdicionar_Click(object sender, System.EventArgs e)
        {
            string nome = this.textBoxNome.Text;
            int idade = int.Parse(this.textBoxIdade.Text);
            double valorInvestido = double.Parse(this.textBoxValorInvestido.Text);
            int meses = int.Parse(this.textBoxMeses.Text);
            Cliente cliente = new Cliente(nome, idade);
            Investimento investimento = new Investimento(valorInvestido, meses, cliente);

            _investimentos.Add(investimento);
            this.dataGridView.Rows.Add(cliente.Nome, cliente.Idade, $"R$ {investimento.ValorInvestido:N2}");
        }

        private async void buttonConfirmar_Click(object sender, System.EventArgs e)
        {
            try
            {
                if (dataGridView.RowCount >= 3)
                    throw new Exception("É necessário que tenha menos que 3 clientes");

                StringBuilder strBuilder = new StringBuilder();
                OpenFileDialog openDialog = new OpenFileDialog();
                openDialog.Title = "Salvar teste em arquivo de texto?";

                double mediaIdade = _investimentos.Sum(x => x.Cliente.Idade) / _investimentos.Count;
                double jurosAcumuladoTodos = _investimentos.Sum(x => x.retornarJurosAcumulado());

                strBuilder.AppendLine($"Média de Idade: {mediaIdade}");
                foreach (var item in _investimentos)
                    strBuilder.AppendLine($"Juros acumulado de {item.Cliente.Nome}: R$ {item.retornarJurosAcumulado():N2}");
                strBuilder.AppendLine($"Juros acumulado por todos: R$ {jurosAcumuladoTodos:N2}");

                MessageBox.Show(strBuilder.ToString());

                if (openDialog.ShowDialog() == DialogResult.OK)
                    File.AppendAllText(openDialog.FileName, strBuilder.ToString());
                if (openDialog.ShowDialog() == DialogResult.OK)
                {
                    var file = File.OpenText(openDialog.FileName);
                    var pdf = new PDFDocument(await file.ReadToEndAsync());
                    pdf.Print();
                }
                if (openDialog.ShowDialog() == DialogResult.OK)
                    MessageBox.Show(await File.OpenText(openDialog.FileName).ReadToEndAsync());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
