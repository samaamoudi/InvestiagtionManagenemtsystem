using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class CaseRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 te = new Investigation_management_systemEntities4();


            InvestigationCase1 c = new InvestigationCase1();
            //Requester r = new Requester();

            //Evidence evid = new Evidence();

            //r.R_Employee_ID = requestertxt.Text;
            c.Requester_ID = requestertxt.Text;
            c.Employee_ID = accusedtxt.Text;
            c.Case_Details = casedetailstxt.Text;
            c.Case_Start_Date = Convert.ToDateTime(datetxt.Text);
            c.Case_Type = int.Parse(DropDownList1.SelectedValue);
            //evid.Evidence_Details = evidendetxt.Text;


            //add entity to the add method

            //te.courses.Add(c);
            //te.studs.Add(st);


            te.InvestigationCase1.Add(c);
            //te.Requesters.Add(r);
            //te.Evidences.Add(evid);



            //insert it into table
            int res = te.SaveChanges();

            if (res > 0)
            {

                Response.Write("Data Inserted Successfully");

            }
            else
            {

                Response.Write("Try Again!!!");

            }

            int newID = c.Case_ID;
            string requesterID = c.Requester_ID;
            Response.Write(newID);

            Response.Redirect("Evidence.aspx?CaseID=" + newID + requesterID);
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
                        //Response.Redirect("Evidence.aspx?CaseID=" + newID ;

        }
    }
}