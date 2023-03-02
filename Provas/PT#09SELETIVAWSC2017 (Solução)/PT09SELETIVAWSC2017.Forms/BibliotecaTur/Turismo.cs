using BibliotecaTur.Interfaces;
using System;

namespace BibliotecaTur
{
    public class Turismo : IFinanceiro
    {
        public virtual double getValor(int dias, int pessoas, double valorDiaria)
        {
            return (dias * pessoas * valorDiaria) + Math.Sqrt((Math.Pow(valorDiaria, 2))*4);
        }
    }
}
