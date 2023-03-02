using PT09SELETIVAWSC2017.Forms.ViewModels.ValueObjects;
using System;

namespace PT09SELETIVAWSC2017.Forms.ViewModels
{
    internal class TestViewModel
    {
        public TestViewModel(string archive)
        {
            try
            {
                var rows = archive.Split('\n');

                var rowCE = rows[0].Split(';');
                var rowQtdMEP = rows[1].Split(';');
                var rowQtdMEPP = rows[2].Split(';');
                var rowME = rows[3].Split(';');
                var rowCAE = rows[4].Split(';');

                this.Parametros = new ParamViewModel()
                {
                    ClassName = rowCE[0],
                    ClasseAbstrataExiste = rowCAE[0],
                    MetodoExiste = rowME[0],
                };

                this.Esperado = new ExpectedViewModel()
                {
                    ClassName = bool.Parse(rowCE[1]),
                    ClasseAbstrataExiste = bool.Parse(rowCAE[1]),
                    MetodoExiste = bool.Parse(rowME[1]),
                    QtdMetodos = int.Parse(rowQtdMEP[1]),
                    QtdMetodosPublico = int.Parse(rowQtdMEPP[1]),
                };
            }
            catch
            {
                throw new Exception("Verifique se o arquivo certo foi selecionado");
            }

        }

        public ParamViewModel Parametros { get; set; }
        public ExpectedViewModel Esperado { get; set; }

        public ReturnViewModel Resultado(string library)
        {
            bool classeExiste = library.Contains(this.Parametros.ClassName);
            int qtdMetodosExistePacote = 10;
            int qtdMetodosExistePacotePublico = 5;
            bool metodoExiste = library.Contains(this.Parametros.MetodoExiste);
            bool classeAbstrataExiste = library.Contains(this.Parametros.ClasseAbstrataExiste);
            return new ReturnViewModel()
            {
                ClassName = classeExiste,
                QtdMetodos = qtdMetodosExistePacote,
                QtdMetodosPublico = qtdMetodosExistePacotePublico,
                MetodoExiste = metodoExiste,
                ClasseAbstrataExiste = classeAbstrataExiste,
            };
        }
    }
}
