using PT2023SE_InvestimentoV3.Forms.Modelos;
using PT2023SE_InvestimentoV3.Forms.Validacoes;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PT2023SE_InvestimentoV3.Forms.Telas
{
    public partial class PadraoSistema : Form
    {
        private readonly List<Investimento> _investimentos;
        private readonly SaveFileDialog _saveFile;

        public PadraoSistema()
        {
            InitializeComponent();

            _investimentos = new List<Investimento>();
            _saveFile = new SaveFileDialog()
            {
                Filter = "(*.txt)|*.txt"
            };
            this.textBoxRoute.Text = Properties.Settings.Default.CaminhoArquivo;
            if (string.IsNullOrWhiteSpace(this.textBoxRoute.Text))
                this.textBoxRoute.Text = "Ainda não contém Arquivo";
        }

        private void Validacoes()
        {
            Textos.TextoVazio(this.textBoxNome.Text);
            Textos.TextoVazio(this.textBoxIdade.Text);
            Textos.TextoVazio(this.textBoxQuantidadeMeses.Text);
            Textos.Numero(this.textBoxIdade.Text);
            Textos.Numero(this.textBoxQuantidadeMeses.Text);
        }

        public string Relatorio()
        {
            var strBuilder = new StringBuilder();
            double mediaIdade = _investimentos.Sum(x => x.Cliente.Idade) / _investimentos.Count();

            strBuilder.AppendLine($"\n========= Relatório {DateTime.Now:dd/MM/yyy : HH:mm:ss} =========\n");
            strBuilder.AppendLine($"Média de idade dos clientes: {Math.Ceiling(mediaIdade)}");
            foreach (var investimento in _investimentos)
                strBuilder.AppendLine($"O cliente {investimento.Cliente.Nome} acumulou R$ {investimento.retornarJurosAcumulado():N2} de juros.");
            strBuilder.AppendLine($"Ao todo acumularam R$ {_investimentos.Sum(x => x.retornarJurosAcumulado()):N2}");
            
            return strBuilder.ToString();
        }

        private void buttonConfirmar_Click(object sender, System.EventArgs e)
        {
            const string mensagem = "Deseja salvar a simulação em um arquivo de texto?";
            try
            {
                this.Validacoes();

                if (MessageBox.Show(mensagem, "Salvar?", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    if (File.Exists(this.textBoxRoute.Text) == false)
                    {
                        if (_saveFile.ShowDialog() == DialogResult.OK)
                        {
                            File.CreateText(_saveFile.FileName).Close();
                            File.AppendAllText(_saveFile.FileName, Relatorio());
                            this.textBoxRoute.Text = _saveFile.FileName;
                            Properties.Settings.Default.CaminhoArquivo = _saveFile.FileName;
                            Properties.Settings.Default.Save();
                        }
                    }     
                    else File.AppendAllText(this.textBoxRoute.Text, Relatorio());              
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
                if (_investimentos.Count == 2)
                    throw new Exception("O número de investimentos tem que ser menor que 3.");

                this.Validacoes();

                var nome = this.textBoxNome.Text;
                var idade = int.Parse(this.textBoxIdade.Text);
                var meses = int.Parse(this.textBoxQuantidadeMeses.Text);
                string textBoxValor = this.maskedTextBoxValor.Text.Replace("R$", "").Replace("_", "");
                var valor = double.Parse(textBoxValor);

                var investimento = new Investimento(valor, meses, new Cliente(nome, idade));
                _investimentos.Add(investimento);

                this.dataGridView.Rows.Add(nome, idade, $"R$ {valor:N2}");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonConvert_Click(object sender, EventArgs e)
        {
            try
            {
                var text = File.ReadAllText(this.textBoxRoute.Text);
                var pdf = new PDFDocumento(text);
                pdf.Print();
            }
            catch (Exception)
            {
                MessageBox.Show("Não foi configurado o caminho no sistema, clique em \"Salvar Relatório\" para definir um caminho.");
            }
        }

        private void buttonView_Click(object sender, EventArgs e)
        {
            try
            {
                var text = File.ReadAllText(this.textBoxRoute.Text);
                var form = new VisualizarRelatorios();
                form.labelText.Text = text;
                form.Show();
            }
            catch (Exception)
            {
                MessageBox.Show("Não foi configurado o caminho no sistema, clique em \"Salvar Relatório\" para definir um caminho.");
            }
        }
    }
}
