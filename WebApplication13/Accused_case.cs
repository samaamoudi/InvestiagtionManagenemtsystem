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
    
    public partial class Accused_case
    {
        public int Case_ID { get; set; }
        public string Accused_ID { get; set; }
    
        public virtual AccusedEmp AccusedEmp { get; set; }
    }
}