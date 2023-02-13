//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Session6.Forms
{
    using System;
    using System.Collections.Generic;
    
    public partial class Service
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Service()
        {
            this.AddonServiceDetails = new HashSet<AddonServiceDetail>();
        }
    
        public long ID { get; set; }
        public System.Guid GUID { get; set; }
        public long ServiceTypeID { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public Nullable<long> Duration { get; set; }
        public string Description { get; set; }
        public string DayOfWeek { get; set; }
        public string DayOfMonth { get; set; }
        public long DailyCap { get; set; }
        public long BookingCap { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AddonServiceDetail> AddonServiceDetails { get; set; }
        public virtual ServiceType ServiceType { get; set; }
    }
}
