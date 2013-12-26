using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeletePlacement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        uf.Removeplacement(pid);
        Response.Redirect("AdvertmanagePlacement.aspx");
    }
}