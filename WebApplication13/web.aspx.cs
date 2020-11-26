using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class web : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DropDownList statusdeopdowllist;

        protected void Casestatusdropdownlist_Init(object sender, EventArgs e)
        {
            statusdeopdowllist = sender as DropDownList;
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            var caseStatusID = Convert.ToInt32(statusdeopdowllist.SelectedValue);
            e.Values["Case_Status"] = caseStatusID;


        }
    }
}