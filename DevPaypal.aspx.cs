using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BinaryIntellect.DataAccess;

public partial class DevPaypal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddPaymentMethod";
        //dh.AddParameter("@firstname",txtFName.Text);
        //dh.AddParameter("@lastname",txtLName.Text);
        //dh.AddParameter("@email",txtEmail.Text);
        //dh.AddParameter("@notes", txtnotes.Text);
        //dh.AddParameter("@adminid", 1);
        //dh.ExecuteNonQuery(query,  CommandType.StoredProcedure);
        int devid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.AddPaymentMethod(txtFName.Text, txtLName.Text, txtEmail.Text,txtnotes.Text,devid);
        Response.Redirect("DevManagePaypal.aspx");
    }
}