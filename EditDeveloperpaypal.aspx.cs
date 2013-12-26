using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BinaryIntellect.DataAccess;

public partial class EditDeveloperpaypal : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {

        GetPaymentINFO();
    }

    private void GetPaymentINFO()
    {
        int payid = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetEditPaymentMethodByID";
        //dh.AddParameter("@payId", payid);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.getEditablePaymentmethodById(payid);

        //txtWebName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtFName.Text = ds.Tables[0].Rows[0][1].ToString();
        // txtaLname.Text = ds.Tables[0].Rows[0][2].ToString();
        txtLName.Text = ds.Tables[0].Rows[0][2].ToString();
        //txt .Text = ds.Tables[0].Rows[0][4].ToString();
        txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
        txtnotes.Text = ds.Tables[0].Rows[0][4].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int payid = Convert.ToInt32(Request.QueryString["ID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.EditPaymentMethod(payid, txtFName.Text, txtLName.Text, txtEmail.Text, txtnotes.Text);
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_EditPaymentMethod";
        //dh.AddParameter("@payId", payid);
        //dh.AddParameter("@fname", txtFName.Text);
        //dh.AddParameter("@lname", txtLName.Text);
        //dh.AddParameter("@email", txtEmail.Text);
        //dh.AddParameter("@notes", txtnotes.Text);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        Response.Redirect("DevManagePaypal.aspx");

    }
}