using Sessa03Aparamento.ControleDeUsuario.SubControles;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

namespace Sessa03Aparamento.ControleDeUsuario
{
    public partial class GaleriaDeImagem : UserControl
    {
        public GaleriaDeImagem()
        {
            InitializeComponent();
        }

        private void addRow()
        {
            this.tableImages.RowStyles.Add(new RowStyle(SizeType.Percent, 130));
            this.tableImages.RowCount += 1;
            this.Height += 130;
        }

        private void removeRow()
        {
            this.tableImages.RowStyles.RemoveAt(this.tableImages.RowCount-1);
            this.tableImages.RowCount -= 1;
            this.Height -= 130;
        }

        private void button1_Click(object sender, System.EventArgs e)
        {
            void remove(object s, System.EventArgs @event)
            {
                var btn = (Button)s;
                this.tableImages.Controls.Remove((Imagem)btn.Tag);
                this.removeRow();
            }
            var dialog = new OpenFileDialog
            {
                Filter = "image files (*.png)|*.jpg"
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                var imagem = new Imagem();
                imagem.Dock = DockStyle.Fill;
                imagem.pictureBox1.Image = Image.FromFile(dialog.FileName);
                imagem.button1.Tag = imagem;
                imagem.button1.Click += remove;
                tableImages.Controls.Add(imagem);
                if (this.tableImages.Controls.Count > 0)
                    this.addRow();
            }
        }
    }
}
