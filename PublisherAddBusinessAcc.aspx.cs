using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class PublisherAddBusinessAcc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int pubid= Convert.ToInt32(Session["UID"].ToString());
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddBusiness";
        //dh.AddParameter("@BusinessName", txtCompName.Text);
        //dh.AddParameter("@address", txtAddress.Text);
        //dh.AddParameter("@city", txtCity.Text);
        //dh.AddParameter("@state", txtState.Text);
        //dh.AddParameter("@zipcode", Convert.ToInt32(txtZip.Text));
        //dh.AddParameter("@phone", 12345);
        //dh.AddParameter("@website", "abc.com");
        //dh.AddParameter("@DeveloperId", 3);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        uf.Addbusiness(txtCompName.Text, txtAddress.Text, txtCity.Text, Convert.ToInt32(txtZip.Text),"1234-546-9","abc.com",pubid);
        Response.Redirect("PublisherAddUser.aspx");
    }
}