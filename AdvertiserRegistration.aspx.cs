using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class AdvertiserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AdvertiserSignup";
        //dh.AddParameter("@web", txtWeb.Text);
        //dh.AddParameter("@street", txtStreet.Text);
        //dh.AddParameter("@suite", txtSuite.Text);
        //dh.AddParameter("@CCNo", Convert.ToInt32( txtCredit.Text));
        //dh.AddParameter("@CCtype","Visa");
        //dh.AddParameter("@CCv", Convert.ToInt32( txtCCV.Text));
        //dh.AddParameter("@stipend", Convert.ToInt32( txtAdvertSpend.Text));
        //dh.AddParameter("@fname", txtFName.Text);
        //dh.AddParameter("@lname", txtLName.Text);
        //dh.AddParameter("@email", txtEmail.Text);
        //dh.AddParameter("@comname",txtBusinessName.Text);
        //dh.AddParameter("@compaddress",txtAddress.Text );
        //dh.AddParameter("@city",txtcity.Text);
        //dh.AddParameter("@state", txtstate.Text);
        //dh.AddParameter("@phone", txtPhone.Text);
        //dh.AddParameter("@zip", Convert.ToInt32( txtZip.Text));
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

        UserFunctions uf = new UserFunctions();
        uf.RegisterAdvertiser(txtWeb.Text, txtStreet.Text, txtSuite.Text, Convert.ToInt32(txtCredit.Text), Convert.ToInt32(txtCCV.Text), Convert.ToInt32(txtAdvertSpend.Text)
            , txtFName.Text, txtLName.Text, txtEmail.Text, txtBusinessName.Text, txtAddress.Text, txtcity.Text, txtstate.Text, txtPhone.Text, Convert.ToInt32(txtZip.Text));
    }
}