using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdvertEditPayment : System.Web.UI.Page
{
    protected void  Page_Init(object sender, EventArgs e){
    
     int pid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        DataSet ds=uf.getAdvertpaymentByID(pid);
        txtFName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtLName.Text = ds.Tables[0].Rows[0][2].ToString();
        txtCompanyName.Text = ds.Tables[0].Rows[0][3].ToString();
        txtStreet.Text = ds.Tables[0].Rows[0][4].ToString();
        txtSuite.Text = ds.Tables[0].Rows[0][5].ToString();
        txtCity.Text = ds.Tables[0].Rows[0][6].ToString();
        txtState.Text = ds.Tables[0].Rows[0][7].ToString();
        txtZip.Text = ds.Tables[0].Rows[0][8].ToString();
        txtPhone.Text = ds.Tables[0].Rows[0][9].ToString();
        //txt.Text = ds.Tables[0].Rows[0][11].ToString();
        txtCredit.Text = ds.Tables[0].Rows[0][10].ToString();
        txtCCV.Text = ds.Tables[0].Rows[0][12].ToString();
        txtAdvertSpend.Text = ds.Tables[0].Rows[0][13].ToString();
    
    
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {    int pid = Convert.ToInt32(Request.QueryString["ID"]);
        UserFunctions uf = new UserFunctions();
        uf.EditAdvertPaymentMethod(pid, txtFName.Text, txtLName.Text, txtCompanyName.Text, txtStreet.Text,
         txtSuite.Text, txtCity.Text, txtState.Text, Convert.ToInt32(txtPhone.Text), txtPhone.Text, Convert.ToInt32(txtCredit.Text), Convert.ToInt32(txtCCV.Text),Convert.ToInt32(txtAdvertSpend.Text));
        Response.Redirect("AdvertManagePayments.aspx");
    }
}