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
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.CgppDrafts = new HashSet<CgppDraft>();
            this.CgppPhonebooks = new HashSet<CgppPhonebook>();
        }
    
        public int UserID { get; set; }
        public Nullable<int> LoginID { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public string EmailID { get; set; }
        public Nullable<int> DistrictID { get; set; }
        public Nullable<int> OfficeID { get; set; }
        public Nullable<int> DivisionID { get; set; }
        public Nullable<System.DateTime> DateAdded { get; set; }
    
        public virtual CgppDivision CgppDivision { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CgppDraft> CgppDrafts { get; set; }
        public virtual CgppOffice CgppOffice { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CgppPhonebook> CgppPhonebooks { get; set; }
        public virtual Login Login { get; set; }
    }
}
