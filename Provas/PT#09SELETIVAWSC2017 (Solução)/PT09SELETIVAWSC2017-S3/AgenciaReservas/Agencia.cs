using AgenciaReservas.Herdados;
using System;
using System.IO;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;

namespace AgenciaReservas
{
    public class Agencia
    {
        public virtual void setRegistrarReserva(int idCliente, int qtd)
        {
            var aviao = new Aviao();
            var hotel = new Hotel();

            aviao.setRegistrarReserva(idCliente, qtd);
            hotel.setRegistrarReserva(idCliente, qtd);
        }

        public void gerarClasse(string nomeClasse, params string[] atributos)
        {
            string verifyType(string atributo)
            {
                var typeList = new string[] { "Inteiro", "String", "Double", "Float", "Boolean" };

                try
                {
                    return typeList.First(x => x.ToUpper().First() == atributo.ToUpper().First());
                }
                catch (Exception)
                {
                    return String.Empty;
                }
            }

            atributos = atributos.Select(x => $"{verifyType(x.Trim())} {x.Trim().Substring(1)}").ToArray();
            var file = File.CreateText("minhaClasse.txt");
            file.Write("public void " + nomeClasse + $"({String.Join(", ", atributos)})" + "\n{\n}");
            file.Close();
        }
    }
}
