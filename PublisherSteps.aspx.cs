using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class PublisherSteps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_PublisherRegister ";
        //dh.AddParameter("@fname", txtFName.Text);
        //dh.AddParameter("@lname", txtLName.Text);
        //dh.AddParameter("@email", txtEmail.Text);
        //dh.AddParameter("@WebsiteName", txtWebName.Text);
        //dh.AddParameter("@webUrl", txtWebURL.Text);
        //dh.AddParameter("@Webnotes", txtnotes.Text);
        //dh.AddParameter("@comname", txtCompName.Text);
        //dh.AddParameter("@compaddress", txtAddress.Text);
        //dh.AddParameter("@city", txtCity.Text);
        //dh.AddParameter("@state", txtState.Text);
        //dh.AddParameter("@zip", txtZip.Text);
        //dh.AddParameter("@paynotes",txtnotes.Text);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);

        UserFunctions uf = new UserFunctions();
        uf.Registerpublisher(txtFName.Text, txtLName.Text, txtEmail.Text, txtWebName.Text, txtWebURL.Text
            , txtnotes.Text, txtCompName.Text, txtAddress.Text, txtCity.Text, txtState.Text, Convert.ToInt32(txtZip.Text), txtnotes.Text);
}
}