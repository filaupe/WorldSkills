using MPT_01_SEv3.Forms.Telas.Pais;
using System;
using System.Windows.Forms;

namespace MPT_01_SEv3.Forms
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
            Application.Run(new Form1());
        }
    }
}
