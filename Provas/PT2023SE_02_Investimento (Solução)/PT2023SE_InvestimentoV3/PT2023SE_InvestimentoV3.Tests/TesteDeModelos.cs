using Microsoft.VisualStudio.TestTools.UnitTesting;
using PT2023SE_InvestimentoV3.Forms.Modelos;

namespace PT2023SE_InvestimentoV3.Tests
{
    [TestClass]
    public class TesteDeModelos
    {
        [TestMethod]
        public void RetornarJurosAcumulado()
        {
            Investimento investimento = new Investimento(10, 12, new Cliente("Filaupe", 18));
            double esperado = 0.70;
            double resultado = investimento.retornarJurosAcumulado();

            Assert.AreEqual($"{esperado:N2}", $"{resultado:N2}");
        }
    }
}
