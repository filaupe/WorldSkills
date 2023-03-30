using System.IO;
using System.Xml;

namespace AgenciaReservas.Herdados
{
    public class Hotel : Agencia
    {
        public override void setRegistrarReserva(int idCliente, int qtd)
        {
            string filename = "Hotel.xml";
            string baseNodeName = "Hotel";
            string clientNodeName = "Cliente";
            var document = new XmlDocument();

            if (!File.Exists(filename)) XmlWriter.Create(filename).Close();

            do
            {
                try { document.Load(filename); }
                catch { }
            } while (!File.Exists(filename));

            var baseNode = document.SelectSingleNode($"//{baseNodeName}");
            baseNode = baseNode ?? document.CreateElement(baseNodeName);

            var clientNode = document.CreateElement(clientNodeName);
            var qtdNode = document.CreateElement("qtd");

            var id = document.CreateAttribute("id");

            id.Value = idCliente < 10 ? $"0{idCliente}" : idCliente.ToString();
            qtdNode.InnerText = qtd.ToString();

            clientNode.Attributes.Append(id);
            clientNode.AppendChild(qtdNode);
            baseNode.AppendChild(clientNode);
            document.AppendChild(baseNode);

            document.Save(filename);
        }
    }
}
