using BibliotecaTur.Generic;

namespace BibliotecaTur
{
    public class Hotel : Turismo
    {
        public override double getValor(int dias, int pessoas, double valorDiaria)
            => (dias * pessoas * valorDiaria) + (valorDiaria * 0.15);
    }
}
