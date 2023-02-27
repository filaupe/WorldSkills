namespace PT2023SE_InvestimentoV3.Forms.Modelos
{
    public class Investimento
    {
        public Investimento(double valorInvestido, int meses, Cliente cliente)
        {
            _valorInvestido = valorInvestido;
            _meses = meses;
            _cliente = cliente;
        }

        private readonly double _valorInvestido;
        private readonly int _meses;
        private readonly Cliente _cliente;

        public double ValorInvestido { get => _valorInvestido; }
        public int Meses { get => _meses; }
        public Cliente Cliente { get => _cliente; }

        public double retornarJurosAcumulado()
        {
            double jurosPorMes = 0.07 / 12;
            double juros = 0;
            for (int i = 0; i < Meses; i++)
                juros += _valorInvestido * jurosPorMes;
            return juros;
        }
    }
}
