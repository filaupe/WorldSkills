using BibliotecaTur.Interfaces;

namespace BibliotecaTur.Generic
{
    public class Turismo : IFinanceiro
    {
        public virtual double getValor(int dias, int pessoas, double valorDiaria)
            => (dias * pessoas * valorDiaria) + (dias * 2) / 2;
    }
}
