using PT09SELETIVAWSC2017.Forms.ViewModels;
using PT09SELETIVAWSC2017.Forms.ViewModels.ValueObjects;
using System;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Forms.Telas
{
    public partial class WireframeSessao01_E02 : Form
    {
        private OpenFileDialog _openFileTest;
        private OpenFileDialog _openFileLibrary;
        private string _archive;
        private string _library;
        private TestViewModel _test;
        private int qtdAcertos;
        private int qtdErros;

        public WireframeSessao01_E02()
        {
            InitializeComponent();

            _openFileTest = new OpenFileDialog();
            _openFileLibrary = new OpenFileDialog();
        }

        private void Validations()
        {
            if (
            String.IsNullOrWhiteSpace(this.textBoxParamCE.Text) |
            String.IsNullOrWhiteSpace(this.textBoxParamME.Text) |
            String.IsNullOrWhiteSpace(this.textBoxParamCAE.Text) |
            String.IsNullOrWhiteSpace(this.textBoxExpectCE.Text) |
            String.IsNullOrWhiteSpace(this.textBoxExpectQMEP.Text) |
            String.IsNullOrWhiteSpace(this.textBoxExpectQMEPP.Text) |
            String.IsNullOrWhiteSpace(this.textBoxExpectME.Text) |
            String.IsNullOrWhiteSpace(this.textBoxExpectCAE.Text))
                throw new Exception("Campo vazio");
        }

        private void Verifications()
        {
            try
            {
                decimal.Parse(this.textBoxExpectQMEP.Text);
                decimal.Parse(this.textBoxExpectQMEPP.Text);
            }
            catch (Exception)
            {
                throw new Exception("O campo só aceita números");
            }
        }

        private void buttonLoadTestArchive_Click(object sender, EventArgs e)
        {
            if (_openFileTest.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    this.buttonUploadLibrary.Visible = true;

                    _archive = File.OpenText(_openFileTest.FileName).ReadToEnd();

                    _test = new TestViewModel(_archive);

                    this.textBoxParamCE.Text = _test.Parametros.ClassName;
                    this.textBoxParamME.Text = _test.Parametros.MetodoExiste;
                    this.textBoxParamCAE.Text = _test.Parametros.ClasseAbstrataExiste;
                    this.textBoxExpectCE.Text = _test.Esperado.ClassName.ToString();
                    this.textBoxExpectQMEP.Text = _test.Esperado.QtdMetodos.ToString();
                    this.textBoxExpectQMEPP.Text = _test.Esperado.QtdMetodosPublico.ToString();
                    this.textBoxExpectME.Text = _test.Esperado.MetodoExiste.ToString();
                    this.textBoxExpectCAE.Text = _test.Esperado.ClasseAbstrataExiste.ToString();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void buttonUploadLibrary_Click(object sender, EventArgs e)
        {
            if(_openFileLibrary.ShowDialog() == DialogResult.OK)
            {
                this.label10.Visible = true;

                _library = Encoding.ASCII.GetString(File.ReadAllBytes(_openFileLibrary.FileName));
            }
        }

        private void buttonPlayTest_Click(object sender, EventArgs e)
        {
            try
            {
                this.qtdAcertos = 0;
                this.qtdErros = 0;
                this.Verifications();
                this.Validations();

                this.panelTest.Height = 340;
                this.label11.Visible = true;
                this.label12.Visible = true;
                var resultado = _test.Resultado(_library);

                if (resultado.ClassName == _test.Esperado.ClassName) qtdAcertos++; else qtdErros++;
                if (resultado.QtdMetodos == _test.Esperado.QtdMetodos) qtdAcertos++; else qtdErros++;
                if (resultado.QtdMetodosPublico == _test.Esperado.QtdMetodos) qtdAcertos++; else qtdErros++;
                if (resultado.MetodoExiste == _test.Esperado.MetodoExiste) qtdAcertos++; else qtdErros++;
                if (resultado.ClasseAbstrataExiste == _test.Esperado.ClasseAbstrataExiste) qtdAcertos++; else qtdErros++;

                this.textBoxReturnCE.Text = resultado.ClassName.ToString();
                this.textBoxReturnQMEP.Text = resultado.QtdMetodos.ToString();
                this.textBoxReturnQMEPP.Text = resultado.QtdMetodosPublico.ToString();
                this.textBoxReturnME.Text = resultado.MetodoExiste.ToString();
                this.textBoxReturnCAE.Text = resultado.ClasseAbstrataExiste.ToString();

                this.label11.Text = $"Acertos: {qtdAcertos}";
                this.label12.Text = $"Erros: {qtdErros}";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
