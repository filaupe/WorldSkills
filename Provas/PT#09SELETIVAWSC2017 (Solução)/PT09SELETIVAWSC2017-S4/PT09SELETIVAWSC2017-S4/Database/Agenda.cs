using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PT09SELETIVAWSC2017_S4.Database
{
    public class Agenda
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string tipo { get; set; }
        public bool nulo { get; set; } = false;
    }
}
