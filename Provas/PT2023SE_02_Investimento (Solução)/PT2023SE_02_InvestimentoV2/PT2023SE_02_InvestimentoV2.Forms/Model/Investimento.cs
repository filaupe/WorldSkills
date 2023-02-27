namespace PT2023SE_02_InvestimentoV2.Forms.Model
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
            double juros = 0;
            double qtdPorMes = 0.07 / 12;
            for (int i = 0; i < _meses; i++)
                juros += qtdPorMes * _valorInvestido;
            return juros;
        } 
    }
}
