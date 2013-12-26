using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;
using DCC.OpenXClient;
using DCC.OpenXClient.v2;

public partial class PublisherAddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //string endpointUrl = "http://montavo.ui4.sandbox.openxenterprise.com/";
        //string username = "mudassir@montavo.com";
        //string password = "Montavo_2013";

        //OpenXApiV2 ox = new OpenXApiV2(endpointUrl, username, password);
        //////ox.Logon();
        //Publisher newPub = new Publisher();
        //newPub.publisherName = "My Example Website";
        //newPub.comments = string.Format("Added through API at {0}", DateTime.Now.ToString());
        //newPub.agencyId = 1; // hardcoded default
        //newPub.contactName = "John Doe";
        //newPub.emailAddress = "johnd@example.com";

        //newPub.publisherId = ox.AddPublisher(newPub);
        //ox.Logoff();
        //Console.WriteLine(newPub.publisherId);


        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddUserADP";
        //dh.AddParameter("@firstName", txtFName.Text);
        //dh.AddParameter("@lastName", txtLName.Text);
        //dh.AddParameter("@Email", txtEmail.Text);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        int pubid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.Adduser(txtFName.Text, txtLName.Text, txtEmail.Text,pubid);
        Response.Redirect("PubmanageUsers.aspx");

      
    }
}