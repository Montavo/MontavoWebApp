using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteBusinessAcc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int bid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        uf.removeAdvertBusiness(bid);
        Response.Redirect("AdvertManageBusiness.aspx");
    }
}