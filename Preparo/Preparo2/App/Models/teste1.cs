using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;

namespace App.Models
{
    public class teste1
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public static implicit operator teste1(string Json)
        {
            DataContractJsonSerializer jsonSer = new DataContractJsonSerializer(typeof(teste1));
            MemoryStream stream = new MemoryStream(Encoding.UTF8.GetBytes(Json));
            teste1 objteste1 = (teste1)jsonSer.ReadObject(stream);

            return new teste1()
            {
                Id = objteste1.Id,
                Name = objteste1.Name,
            };
        }
    }
}