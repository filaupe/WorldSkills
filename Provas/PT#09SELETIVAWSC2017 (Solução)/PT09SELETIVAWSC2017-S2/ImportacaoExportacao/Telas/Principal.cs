using ImportacaoExportacao.Models;
using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using System.Xml;
using System.Linq;

namespace ImportacaoExportacao.Telas
{
    public partial class Principal : Form
    {
        private string _route;
        private List<Cliente> _clientes;

        public Principal()
        {
            InitializeComponent();
            _clientes = new List<Cliente>();
        }

        private void buttonImport_Click(object sender, EventArgs e)
        {
            var openDialog = new OpenFileDialog()
            {
                Filter = "(*.xls)|*.xls",
            };

            if (openDialog.ShowDialog() == DialogResult.OK)
            {
                this.UseWaitCursor = true;
                string archivePath = openDialog.FileName;
                var excelApp = new Microsoft.Office.Interop.Excel.Application();
                var workbook = excelApp.Workbooks.Open(archivePath);
                var worksheet = workbook.Sheets[1];
                Range range = worksheet.UsedRange;

                
                for (int row = 2; row <= range.Rows.Count; row++)
                {
                    var dynamicList = new List<dynamic>();
                    for (int col = 1; col <= range.Columns.Count; col++)
                        dynamicList.Add(range.Cells[row, col].Value2);
                    _clientes.Add(new Cliente
                    {
                        CODIGO = (int)dynamicList[0],
                        NOME = (string)dynamicList[1],
                        SOBRENOME = (string)dynamicList[2],
                        CPF = long.Parse(dynamicList[3].ToString().Replace(".", String.Empty).Replace("-", String.Empty)),
                        CELULAR = (long)dynamicList[4],
                        ACEITASMS = ((int)dynamicList[5]) == 1,
                        EMAIL = (string)dynamicList[6],
                        SEXO = (string)dynamicList[7],
                    });
                }
                workbook.Close();
                excelApp.Quit();
                this.UseWaitCursor = false;
            }
        }

        private void buttonDirectory_Click(object sender, EventArgs e)
        {
            var folderDialog = new FolderBrowserDialog();
            if (folderDialog.ShowDialog() == DialogResult.OK)
            {
                string route = folderDialog.SelectedPath;
                labelRoute.Text = route;
                _route = route;
            }
        }

        private void buttonExport_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrWhiteSpace(_route))
                    throw new Exception("Selecione um diretório");

                using (XmlWriter writer = XmlWriter.Create(Path.Combine(_route, "Clientes.xml")))
                {
                    #region Clientes
                    writer.WriteStartElement("Clientes");
                    foreach (var cliente in _clientes)
                    {
                        #region Cliente
                        writer.WriteStartElement("Cliente");
                        writer.WriteAttributeString("SOBRENOME", cliente.SOBRENOME);
                        writer.WriteAttributeString("NOME", cliente.NOME);
                        writer.WriteAttributeString("CODIGO", cliente.CODIGO.ToString());
                        #region Dados
                            #region CPF
                            writer.WriteStartElement("CPF");
                            writer.WriteString(cliente.CPF.ToString(@"000\.000\.000\-00"));
                            writer.WriteEndElement();
                            #endregion
                                #region Contatos
                                writer.WriteStartElement("Contatos");
                                    #region CELULAR
                                    writer.WriteStartElement("CELULAR");
                                    writer.WriteAttributeString("ACEITASMS", (cliente.ACEITASMS ? 1 : 0).ToString());
                                    writer.WriteString(cliente.CELULAR.ToString());
                                    writer.WriteEndElement();
                                    #endregion
                                    #region EMAIL
                                    writer.WriteStartElement("EMAIL");
                                    writer.WriteString(cliente.EMAIL);
                                    writer.WriteEndElement();
                                #endregion
                                writer.WriteEndElement();
                            #endregion
                            #region SEXO
                            writer.WriteStartElement("SEXO");
                            writer.WriteString(cliente.SEXO.ToString());
                            writer.WriteEndElement();
                            #endregion
                        #endregion
                        writer.WriteEndElement();
                        #endregion
                    }
                    writer.WriteEndElement();
                    #endregion
                    writer.WriteEndDocument();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonPrint_Click(object sender, EventArgs e)
        {
            var saveDialog = new SaveFileDialog();
            if (saveDialog.ShowDialog() == DialogResult.OK)
            {
                string nome = saveDialog.FileName.Split('\\').Last();
                // Captura a tela atual
                Bitmap screenshot = new Bitmap(
                    Screen.PrimaryScreen.Bounds.Width, 
                    Screen.PrimaryScreen.Bounds.Height, 
                    PixelFormat.Format32bppArgb);

                Graphics screenGraphics = Graphics.FromImage(screenshot);

                screenGraphics.CopyFromScreen(Screen.PrimaryScreen.Bounds.X, 
                    Screen.PrimaryScreen.Bounds.Y, 0, 0, Screen.PrimaryScreen.Bounds.Size, CopyPixelOperation.SourceCopy);

                // Adiciona a data e nome do arquivo na imagem
                string dataCaptura = DateTime.Now.ToString("dd/MM/yyyy");
                string textoImagem = $"{dataCaptura} - {nome}";

                System.Drawing.Font fonteTexto = new System.Drawing.Font("Arial", 16, FontStyle.Bold);
                SolidBrush corTexto = new SolidBrush(Color.White);

                Graphics imagemGraphics = Graphics.FromImage(screenshot);
                imagemGraphics.DrawString(textoImagem, fonteTexto, corTexto, new PointF((int)(screenshot.Width*0.75), 10));

                // Salva a imagem em um arquivo JPG
                string caminhoCompleto = $@"{saveDialog.FileName}.jpg";
                screenshot.Save(caminhoCompleto, ImageFormat.Jpeg);

                // Mostra uma mensagem de confirmação
                MessageBox.Show("Captura de tela salva com sucesso!");
            }
        }
    }
}
