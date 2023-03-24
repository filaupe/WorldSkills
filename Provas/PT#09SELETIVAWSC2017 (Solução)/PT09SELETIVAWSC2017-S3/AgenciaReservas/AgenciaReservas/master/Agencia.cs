using System;
using System.IO;
using System.Text;

namespace AgenciaReservas.AgenciaReservas.master
{
    public class Agencia
    {
        public virtual void setRegistrarReserva(int idCliente, int qtd)
        {
            var hotel = new Hotel();
            var aviao = new Aviao();

            hotel.setRegistrarReserva(idCliente, qtd);
            aviao.setRegistrarReserva(idCliente, qtd);
        }
        public void gerarClasse(string nome, string[] atributos)
        {
            var strBuilder = new StringBuilder();
            strBuilder.Append($@"{nome}({String.Join(", ", atributos)});");
            File.CreateText("minhaClasse.txt").Write(strBuilder.ToString());
        }
    }
}
