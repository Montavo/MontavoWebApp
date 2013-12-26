using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdvertAddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int aid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.Adduser(txtFName.Text,txtLName.Text,txtEmail.Text,aid);
        Response.Redirect("AdvertManageUsers.aspx");
    }
}