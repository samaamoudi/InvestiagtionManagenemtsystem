using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication13.DAL.Repository
{
    public class Viewer
    {
        public int Case_ID { get; set; }
        public Nullable<int> Case_Type { get; set; }
        public System.DateTime Case_Start_Date { get; set; }
        public Nullable<System.DateTime> Case_End_Date { get; set; }
        public Nullable<int> Case_Status { get; set; }
        public string Case_Details { get; set; }
        public string Case_Duration { get; set; }
        public Nullable<int> Case_Verdict { get; set; }
        public string Employee_ID { get; set; }
        public string Case_Handler_ID { get; set; }
        public string Requester_ID { get; set; }
        public string Case_Type1 { get; set; }
        public string Case_Status1 { get; set; }


    }

}