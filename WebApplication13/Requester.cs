//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication13
{
    using System;
    using System.Collections.Generic;
    
    public partial class Requester
    {
        public Requester()
        {
            this.InvestigationCase1 = new HashSet<InvestigationCase1>();
        }
    
        public string R_Employee_ID { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual ICollection<InvestigationCase1> InvestigationCase1 { get; set; }
    }
}