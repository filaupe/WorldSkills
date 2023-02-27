using System.Drawing;
using System.Drawing.Printing;

namespace PT2023SE_02_InvestimentoV2.Forms
{
    public class PDFDocument : PrintDocument
    {
        private readonly string _text;

        public PDFDocument(string text)
        {
            this.PrinterSettings.PrinterName = "Microsoft Print to PDF";
            _text = text;
        }

        protected override void OnPrintPage(PrintPageEventArgs e)
        {
            e.Graphics.DrawString(_text, new Font(FontFamily.GenericSansSerif, 12), Brushes.Black, new PointF(20, 20));
        }
    }
}
