namespace BibliotecaTur
{
    public class Passeio : Turismo
    {
        public override double getValor(int dias, int pessoas, double valorDiaria)
        {
            return (dias * pessoas * valorDiaria) + (valorDiaria * 0.05);
        }
    }
}
