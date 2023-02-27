using System;

namespace PT2023SE_InvestimentoV3.Forms.Validacoes
{
    public static class Textos
    {
        public static void TextoVazio(string texto)
        {
            if (String.IsNullOrWhiteSpace(texto))
                throw new Exception("A caixa de texto está vazia.");
        }

        public static void Numero(string texto)
        {
            try
            {
                decimal.Parse(texto);
            }
            catch
            {
                throw new Exception("Adicione números válidos.");
            }
        }
    }
}
