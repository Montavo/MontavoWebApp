using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DevDeletepaymentmethod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int payId = Convert.ToInt32(Request.QueryString["ID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.RemovePaymentMethod(payId);
        Response.Redirect("DevManagePaypal.aspx");
    }
}