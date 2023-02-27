using System.Drawing;
using System.Drawing.Printing;

namespace PT2023SE_InvestimentoV3.Forms.Modelos
{
    public class PDFDocumento : PrintDocument
    {
        public PDFDocumento(string texto)
        {
            this.PrinterSettings.PrinterName = "Microsoft Print to PDF";

            _texto = texto;
        }

        private readonly string _texto;

        protected override void OnPrintPage(PrintPageEventArgs e)
        {
            var font = new Font(FontFamily.GenericSansSerif, 12);
            var point = new PointF(20, 20);

            e.Graphics.DrawString(_texto, font, Brushes.Black, point);
        }
    }
}
