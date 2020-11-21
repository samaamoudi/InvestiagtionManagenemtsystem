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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cases.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EvidenceRequest.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("InterviewInvitationRequest.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("TerminationRequest.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Interview.aspx");

        }
    }
}