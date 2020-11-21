using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class EvidenceRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Evidence_Request evid = new Evidence_Request();

            evid.Evidence_Request_Details = evidtxt.Text;
            evid.Case_Handler = chtxt.Text;
            evid.Employee = emptxt.Text;
            evid.Case_ID = Convert.ToInt32(casetxt.Text);
            evid.evidence_request_date = Convert.ToDateTime(datetxt.Text);

            db.Evidence_Request.Add(evid);

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
    }
}