using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class DeveloperSteps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "Sp_DeveloperRegister";
        //dh.AddParameter("@Appname", txtAppname.Text);
        //dh.AddParameter("@appstoreurl", txtAppurl.Text);
        //dh.AddParameter("@playstoreurl", txtplaystoreurl.Text);
        //dh.AddParameter("@marketurl", txtmarketurl.Text);
        //dh.AddParameter("@AppNotes", txtnotes.Text);
        //dh.AddParameter("@fname", txtFName.Text);
        //dh.AddParameter("@lname", txtLName.Text);
        //dh.AddParameter("@email", txtEmail.Text);
        //dh.AddParameter("@compname", txtCompName.Text);
        //dh.AddParameter("@comaddress", txtAddress.Text);
        //dh.AddParameter("@city", txtCity.Text);
        //dh.AddParameter("@state", txtState.Text);
        //dh.AddParameter("@zip", txtZip.Text);
        //dh.AddParameter("@paynotes", TextBox4.Text);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

        UserFunctions us = new UserFunctions();
        us.RegisterDeveloper(txtAppname.Text, txtAppurl.Text, txtplaystoreurl.Text, txtmarketurl.Text, txtnotes.Text,
          txtFName.Text, txtLName.Text, txtEmail.Text, txtCompName.Text, txtAddress.Text, txtCity.Text, txtState.Text, Convert.ToInt32(txtZip.Text), TextBox4.Text);
    }
}