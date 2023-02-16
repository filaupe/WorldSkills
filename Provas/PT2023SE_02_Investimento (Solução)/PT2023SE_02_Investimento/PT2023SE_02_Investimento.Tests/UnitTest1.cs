using Microsoft.VisualStudio.TestTools.UnitTesting;
using PT2023SE_02_Investimento.Forms.ViewModel;
using System;

namespace PT2023SE_02_Investimento.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void JurosMensais()
        {
            var esperado = 4000 * (0.07 / 20);
            InvestimentoViewModel investimento = new InvestimentoViewModel() 
            { 
                valorInvestido = 4000,
                meses = 20
            };
            Assert.AreEqual(esperado, investimento.retornarJurosAcumulado());
        }
    }
}
