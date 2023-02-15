using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PT2023SE_02_Investimento.Forms.ViewModel
{
    public class InvestimentoViewModel
    {
        public double valorInvestido { get; set; }
        public int meses { get; set; }
        public ClienteViewModel Cliente { get; set; }

        public double retornarJurosAcumulado()
        {
            var jurosMensal = 0.07 / meses;
            return valorInvestido*jurosMensal;
        }
    }
}
