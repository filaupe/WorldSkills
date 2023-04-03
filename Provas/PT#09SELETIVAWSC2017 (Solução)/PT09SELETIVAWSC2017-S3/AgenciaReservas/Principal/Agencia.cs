using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgenciaReservas.Principal
{
    public class Agencia
    {
        public virtual void setRegistarReserva(int idCliente, int qtd)
        {
            var aviao = new Aviao();
            var hotel = new Hotel();

            hotel.setRegistarReserva(idCliente, qtd);
            aviao.setRegistarReserva(idCliente, qtd);
        }

        public static void gerarClasse(string nomeClasse, params string[] atributos)
        {
            var tipos = new string[] { "Inteiro", "String", "Double", "Float", "Boolean" };
            var strBuilder = new StringBuilder();

            atributos = atributos.Select(x => x.Trim()).ToArray();
            atributos = atributos.Select(x => $"{tipos.First(o => o.First().ToString() == x.First().ToString().ToUpper())} {x.Substring(1)}").ToArray();

            strBuilder.Append($"public void {nomeClasse}({String.Join(",", atributos)})" + "\n\n{}");

            File.WriteAllText("minhaClasse.txt", strBuilder.ToString());
        }
    }
}
