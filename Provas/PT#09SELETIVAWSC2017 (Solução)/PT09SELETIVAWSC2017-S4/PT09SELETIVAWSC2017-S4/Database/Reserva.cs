//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PT09SELETIVAWSC2017_S4.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reserva
    {
        public int RESCODIGO { get; set; }
        public Nullable<int> CLICODIGO { get; set; }
        public int TIPCODIGO { get; set; }
        public System.DateTime RESDATAINICIO { get; set; }
        public System.DateTime RESDATAFIM { get; set; }
        public Nullable<int> RESQUANTIDADEADULTOS { get; set; }
        public Nullable<decimal> RESVALORRESERVA { get; set; }
    
        public virtual Cliente Cliente { get; set; }
        public virtual TIPOACOMODACAO TIPOACOMODACAO { get; set; }
    }
}
