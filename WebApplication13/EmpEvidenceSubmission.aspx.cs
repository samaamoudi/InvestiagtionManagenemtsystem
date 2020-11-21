using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class EmpEvidenceSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();


            Evidence evid = new Evidence();

            evid.Evidence_Date = Convert.ToDateTime(datetxt.Text);
            evid.Evidence_Details = Detailstxt.Text;
            evid.Case_ID = Convert.ToInt32(casetxt.Text);
            evid.Evidence_Document = FileUpload1.FileBytes;
            evid.Requester_ID = Requestertxt.Text;
            evid.Evidence_Type = RadioButtonList1.Text;

            db.Evidences.Add(evid);

            int res = db.SaveChanges();

            if (res > 0)
            {

                Response.Write("Data Inserted Successfully");

            }
            else
            {

                Response.Write("Try Again!!!");

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CaseRequest.aspx");
        }
    }
}