﻿using PT09SELETIVAWSC2017_S5.Telas;
using System;
using System.Windows.Forms;

namespace RelatoriosSessao05
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
            Application.Run(new IndicadoresDeReserva());
        }
    }
}
