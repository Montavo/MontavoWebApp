using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class CampaignPayInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnProcedd_Click(object sender, EventArgs e)
    {

        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AddCampaignPayment";
        dh.AddParameter("@budget", Convert.ToInt32(txtBudget.Text));
        dh.AddParameter("@card", "Debit Card");
        dh.AddParameter("@cardtype", "Master");
        dh.AddParameter("@Fname", txtFName.Text);
        dh.AddParameter("@Lname", txtLName.Text);
        dh.AddParameter("@Expmonth", "January" );
        dh.AddParameter("@expyear", "2016");
        dh.AddParameter("@email", txtEmail.Text);
        dh.AddParameter("@city", txtCity.Text);
        dh.AddParameter("@state", txtState.Text);
        dh.AddParameter("@Zip", Convert.ToInt32(txtZip.Text));
        dh.AddParameter("@phine", txtPhone.Text);
        dh.AddParameter("@cardno", Convert.ToInt32(txtCardNo.Text));
        dh.AddParameter("@ccv", Convert.ToInt32(txtCCV.Text));
        dh.AddParameter("@country", "Pakistan");
        dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
    }
}