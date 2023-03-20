using BibliotecaTur.Generic;

namespace BibliotecaTur
{
    public class Agencia : Turismo
    {
        public override double getValor(int dias, int pessoas, double valorDiaria)
            => (dias * pessoas * valorDiaria) + (valorDiaria * 0.1);
    }
}
