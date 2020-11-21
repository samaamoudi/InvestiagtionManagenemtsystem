using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication13.BLL;

namespace WebApplication13
{
    public partial class WebForm1 : System.Web.UI.Page
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
            Response.Redirect("WebForm3.aspx?CaseID=" + GridView1.SelectedRow.Cells[0].Text);
        }

       

        //public void bindDetail()
        //{
        //    DetailsView1.DataSource = objStudent_BLL.GetAllData();
        //    DetailsView1.DataBind();
        //}
    }
}