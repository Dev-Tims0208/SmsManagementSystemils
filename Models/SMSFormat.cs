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
    
    public partial class SMSFormat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SMSFormat()
        {
            this.ConcernOffices = new HashSet<ConcernOffice>();
            this.FormattedMessages = new HashSet<FormattedMessage>();
        }
    
        public int formatID { get; set; }
        public string keyword { get; set; }
        public string reply { get; set; }
        public string smsformat1 { get; set; }
        public Nullable<int> Isdisplay { get; set; }
        public Nullable<int> autoExec { get; set; }
        public Nullable<int> isactive { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ConcernOffice> ConcernOffices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FormattedMessage> FormattedMessages { get; set; }
    }
}
