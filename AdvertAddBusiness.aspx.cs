using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class AdvertAddBusiness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddBusiness";
        //dh.AddParameter("@BusinessName",txtBusinessName.Text);
        //dh.AddParameter("@address", txtAddress.Text);
        //dh.AddParameter("@city", txtCity.Text);
        //dh.AddParameter("@state", "Punjab");
        //dh.AddParameter("@zipcode", 1234);
        //dh.AddParameter("@phone", txtPhone.Text);
        //dh.AddParameter("@website", txtWeb.Text);
        //dh.AddParameter("@DeveloperId", 3);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        //Response.Redirect("PublisherAddUser.aspx");


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int aid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.Addbusiness(txtBusinessName.Text, txtAddress.Text, txtCity.Text, Convert.ToInt32(txtZip.Text), txtPhone.Text,txtWeb.Text,aid);
        Response.Redirect("AdvertManageBusiness.aspx");
    }
}