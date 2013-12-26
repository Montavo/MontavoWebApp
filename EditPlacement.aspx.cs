using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EditPlacement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        int pid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.getPlacementById(pid);
        txtPname.Text = ds.Tables[0].Rows[0][1].ToString();
        txtPrice.Text = ds.Tables[0].Rows[0][2].ToString();
        txtotal.Text = ds.Tables[0].Rows[0][3].ToString();
        txtDays.Text = ds.Tables[0].Rows[0][4].ToString();
    }

    protected void btnAds_Click(object sender, EventArgs e)
    {
        int pid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        uf.Editplacement(txtPname.Text, Convert.ToInt32(txtPrice.Text), Convert.ToInt32(txtotal.Text), Convert.ToInt32(txtDays.Text),true,pid);
        Response.Redirect("AdvertmanagePlacement.aspx");
    }
}