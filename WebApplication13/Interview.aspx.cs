using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class Interview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CasesDetails.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("QandA.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Investigation_Interview t = new Investigation_Interview();

            t.Investigation_Interview_Interviewer_ID = Interviewertxt.Text;
            t.Investigation_Interview_Interviewee_ID = intervieweetxt.Text;
            t.Case_ID = Convert.ToInt32(casetxt.Text);
            t.Investigation_Interview_Date = Convert.ToDateTime(Datetxt.Text);
            t.Investigation_Interview_Location = locationtxt.Text;
            t.Investigation_Interview_Time = Timetxt.Text;
            t.Investigation_Interview_Memo = Memotxt.Text;

            db.Investigation_Interview.Add(t);

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