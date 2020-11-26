using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class Cases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Redirect("CasesDetails.aspx?CaseID=" + GridView2.SelectedRow.Cells[0].Text);
            Response.Redirect("WebForm4.aspx?CaseID=" + GridView2.SelectedRow.Cells[0].Text);
        }
    }
}