using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication13.BLL;

namespace WebApplication13
{
    public partial class CaseDetails : System.Web.UI.Page
    {
        Student_BLL objStudent_BLL = new Student_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["CaseID"]);
            lpCaseID.Text = id.ToString();
            bindGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Case.aspx");
        }

        public void bindGrid()
        {
            DetailsView1.DataSource = objStudent_BLL.GetAllData();
            DetailsView1.DataBind();

        }

    }
}
