using AgenciaReservas.AgenciaReservas.master;
using System.IO;
using System.Xml;

namespace AgenciaReservas.AgenciaReservas
{
    public class Aviao : Agencia
    {
        public override void setRegistrarReserva(int idCliente, int qtd)
        {
            string filename = "Aviao.xml";
            var document = new XmlDocument();

            var cliente = document.CreateElement("Passageiro");

            var id = document.CreateAttribute("id");
            var quantidade = document.CreateElement("qtd");

            quantidade.InnerText = qtd.ToString();
            id.Value = (idCliente < 10) ? $"0{idCliente}" : idCliente.ToString();

            cliente.Attributes.Append(id);
            cliente.AppendChild(quantidade);

            if (!File.Exists(filename)) XmlWriter.Create(filename).Close();
            do
            {
                try { document.Load(filename); }
                catch { }
            } while (!File.Exists(filename));
            var hotelNode = document.SelectSingleNode("//Aviao");
            if (hotelNode == null)
            {
                var hotelElement = document.CreateElement("Aviao");
                document.AppendChild(hotelElement);
                hotelNode = document.SelectSingleNode("//Aviao");
            }
            hotelNode.AppendChild(cliente);

            document.Save(filename);
        }
    }
}
