using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoalternativo
{
    public partial class paginamestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["login"] == null)
            {              
               Response.Redirect("~/login.aspx");
            }
            if (Request.Cookies["admin"] != null)
            {
                Label1.Visible = true;
            }
        }
    }
}