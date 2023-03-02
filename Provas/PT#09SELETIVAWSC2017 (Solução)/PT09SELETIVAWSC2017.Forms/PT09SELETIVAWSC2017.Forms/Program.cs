using PT09SELETIVAWSC2017.Forms.Telas;
using System;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017.Forms
{
    internal static class Program
    {
        /// <summary>
        /// Ponto de entrada principal para o aplicativo.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Principal());
        }
    }
}
