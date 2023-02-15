using System.Collections.Generic;
using System.Linq;

namespace PT2023SE_02_Investimento.Forms.ViewModel
{
    public class DataViewModel
    {
        public double MediaIdade { get; set; }
        public List<double> JurosAcumuladoPorCliente { get; set; } = new List<double>();

        public double SomaTodosOsJuros() => this.JurosAcumuladoPorCliente.Sum();
    }
}
