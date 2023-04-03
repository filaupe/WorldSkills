using AgenciaReservas.Principal;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace AgenciaReservas
{
    public class Hotel : Agencia
    {
        public override void setRegistarReserva(int idCliente, int qtd)
        {
            var filename = "hotel.xml";
            var baseElement = "Hotel";
            var client = "Cliente";
            var qtdElement = "qtd";

            var document = new XmlDocument();
            if (!File.Exists(filename)) XmlWriter.Create(filename).Close();

            do
            {
                try { document.Load(filename); }
                catch { }
            } while (!File.Exists(filename));

            var baseElmt = document.SelectSingleNode($"//{baseElement}");

            if (baseElmt == null)
                baseElmt = document.CreateElement(baseElement);

            var clientElmt = document.CreateElement(client);
            var qtdElmt = document.CreateElement(qtdElement);

            var idAttr = document.CreateAttribute("id");

            idAttr.Value = idCliente < 10 ? $"0{idCliente}" : idCliente.ToString();
            clientElmt.Attributes.Append(idAttr);
            qtdElmt.InnerText = qtd < 10 ? $"0{qtd}" : qtd.ToString();
            clientElmt.AppendChild(qtdElmt);
            baseElmt.AppendChild(clientElmt);
            document.AppendChild(baseElmt);

            document.Save(filename);
        }
    }
}
