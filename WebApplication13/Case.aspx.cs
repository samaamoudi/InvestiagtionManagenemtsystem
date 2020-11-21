using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication13.BLL;

namespace WebApplication13
{
    public partial class Case : System.Web.UI.Page
    {
        Student_BLL objStudent_BLL = new Student_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid();
            //bindDetail();
        }

        public void bindGrid()
        {
            GridView1.DataSource = objStudent_BLL.GetAllData();
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("CaseDetails.aspx?CaseID=" + GridView1.SelectedRow.Cells[0].Text);
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //detailsPanel.Visible = true;
        //    //lpCaseID.Text = GridView1.SelectedRow.Cells[0].Text;
        //    Response.Redirect("CaseDetails.aspx?CaseID=" + GridView1.SelectedRow.Cells[0].Text);
        //}
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGrid();
        }
    }
}
