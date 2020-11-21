using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class InterviewInvitationRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            protected void Button1_Click(object sender, EventArgs e)
            {
                Response.Redirect("Interview.aspx");
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Interview_Invite i = new Interview_Invite();

            i.Interview_Invitation_Date = Convert.ToDateTime(datetxt.Text);
            i.Interview_Invitation_Date_Sent = Convert.ToDateTime(datesenttxt.Text);
            i.Interview_Invitation_Invitee = emptxt.Text;
            i.Interview_Invitation_Location = locationtxt.Text;
            i.Interview_Invitation_Time = Timetxt.Text;
            i.Interview_Invitation_Details = Detailstxt.Text;
            i.Case_Handler_ID = chtxt.Text;
            i.Case_ID = Convert.ToInt32(casetxt.Text);

            db.Interview_Invite.Add(i);

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
        protected void Button3_Click(object sender, EventArgs e)
            {
                Response.Redirect("CasesDetails.aspx?CaseID=");
            }

        
    }
    }
