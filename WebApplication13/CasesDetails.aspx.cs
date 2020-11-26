using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class CasesDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["CaseID"]);
            lpCaseID.Text = id.ToString();

            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
                Validate();
            }
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cases.aspx");
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }
        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;

        }
        protected void Tab5_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Clicked";
            Tab6.CssClass = "Initial";
            MainView.ActiveViewIndex = 4;
        }
        protected void Tab6_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Clicked";
            MainView.ActiveViewIndex = 5;
        }



        protected void trsavebtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Termination_Request tr = new Termination_Request();

            tr.Termination_Request_Date = Convert.ToDateTime(trDatetxt.Text);
            tr.Termination_Request_Justification = Justificationtxt.Text;
            tr.Case_ID = int.Parse(trDropDownList.SelectedValue);
            tr.Employee_ID = trEmptxt.Text;

            db.Termination_Requests.Add(tr);

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

        protected void trclosebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }

        protected void iisendbtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Interview_Invite i = new Interview_Invite();

            i.Interview_Invitation_Date = Convert.ToDateTime(iidatetxt.Text);
            i.Interview_Invitation_Date_Sent = Convert.ToDateTime(iidatesenttxt.Text);
            i.Interview_Invitation_Invitee = iiemptxt.Text;
            i.Interview_Invitation_Location = iilocationtxt.Text;
            i.Interview_Invitation_Time = iiTimetxt.Text;
            i.Interview_Invitation_Details = iiDetailstxt.Text;
            i.Case_Handler_ID = iichtxt.Text;
            i.Case_ID = int.Parse(iiDropDownList.SelectedValue); 

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

        protected void iiemptxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void isavebtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Investigation_Interview t = new Investigation_Interview();

            t.Investigation_Interview_Interviewer_ID = Interviewertxt.Text;
            t.Investigation_Interview_Interviewee_ID = intervieweetxt.Text;
            t.Case_ID = int.Parse(iDropDownList.SelectedValue);
            t.Investigation_Interview_Date = Convert.ToDateTime(idatetxt.Text);
            t.Investigation_Interview_Location = ilocationtxt.Text;
            t.Investigation_Interview_Time = itimetxt.Text;
            t.Investigation_Interview_Memo = imemotxt.Text;

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

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("QandA.aspx");
        }

        protected void evidsubmitbtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Evidence_Request evid = new Evidence_Request();

            evid.Evidence_Request_Details = evidtxt.Text;
            evid.Case_Handler = chtxt.Text;
            evid.Employee = emptxt.Text;
            evid.Case_ID = int.Parse(casedropdownlist.SelectedValue);
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