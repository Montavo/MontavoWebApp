using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class AdvertnewPlacement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAds_Click(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddPlacement ";
        //dh.AddParameter("@PlaceName", txtPname.Text);
        //dh.AddParameter("@PricingRate", Convert.ToInt32(txtPrice.Text));
        //dh.AddParameter("@totlgoal", Convert.ToInt32(txtotal.Text));
        //dh.AddParameter("@perday", Convert.ToInt32(txtDays.Text));
        //dh.AddParameter("@frequecy", true);
        //dh.AddParameter("@AdvertID", 14);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        int aid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.addAdvertPlacement(txtPname.Text, Convert.ToInt32(txtPrice.Text), Convert.ToInt32(txtotal.Text), Convert.ToInt32(txtDays.Text),aid);
        Response.Redirect("AdvertmanagePlacement.aspx");

    }
}