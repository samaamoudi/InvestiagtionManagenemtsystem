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
    
    public partial class AccusedEmp
    {
        public AccusedEmp()
        {
            this.Accused_Cases = new HashSet<Accused_case>();
        }
    
        public string A_Employee_ID { get; set; }
    
        public virtual ICollection<Accused_case> Accused_Cases { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
