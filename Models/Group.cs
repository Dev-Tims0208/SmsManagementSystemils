//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TryLogin.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Group
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Group()
        {
            this.Grouping_cellnumbers = new HashSet<Grouping_cellnumbers>();
        }
    
        public int id { get; set; }
        public string keyword { get; set; }
        public string subgroup { get; set; }
        public Nullable<int> isactive { get; set; }
        public Nullable<int> isdeletable { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grouping_cellnumbers> Grouping_cellnumbers { get; set; }
    }
}
