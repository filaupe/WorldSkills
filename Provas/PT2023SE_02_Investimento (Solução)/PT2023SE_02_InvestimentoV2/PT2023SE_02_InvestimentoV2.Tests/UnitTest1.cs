using Microsoft.VisualStudio.TestTools.UnitTesting;
using PT2023SE_02_InvestimentoV2.Forms.Model;
using System;

namespace PT2023SE_02_InvestimentoV2.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void RetornarJuros()
        {
            double esperado = 0.7;
            Investimento investimento = new Investimento(10, 12, new Cliente("Filaupe", 18));
            double resultado = investimento.retornarJurosAcumulado();

            Assert.AreEqual($"{esperado:N2}", $"{resultado:N2}");
        }
    }
}
