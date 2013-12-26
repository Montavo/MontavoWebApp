using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DevEditBusiness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        int bid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.getBusinessById(bid);
        txtBusinessName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtAddress.Text = ds.Tables[0].Rows[0][2].ToString();
        txtCity.Text = ds.Tables[0].Rows[0][3].ToString();
        txtPhone.Text = ds.Tables[0].Rows[0][6].ToString();
        txtZip.Text = ds.Tables[0].Rows[0][5].ToString();
        txtWeb.Text = ds.Tables[0].Rows[0][7].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int bid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        uf.EditAdvertBusiness(bid, txtBusinessName.Text, txtAddress.Text, txtCity.Text, Convert.ToInt32(txtZip.Text), txtPhone.Text, txtWeb.Text);
        Response.Redirect("DeveloperManageBusiness.aspx");
    }
}