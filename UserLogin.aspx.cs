using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //Session.Abandon();
        AuthenticateUser();
    }

    private void AuthenticateUser()
    {
        DatabaseHelper dh = new DatabaseHelper();
        string query = "SP_AuthenticateUser ";
        dh.AddParameter("@name", txtdomainID.Text);
        dh.AddParameter("@passworld", txtbxpassword.Text);
        dh.AddParameter("@roleid", ddlRoles.SelectedValue);
        DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        //string passwo=txtbxpassword.Text.ToString();
        //UserFunctions uf = new UserFunctions();
        //DataSet ds = uf.validateuserlogin(txtdomainID.Text,txtbxpassword.Text, ddlRoles.SelectedValue);
        int num = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        if (num == 1 && ddlRoles.SelectedValue == "1")
        {
            DatabaseHelper dh1 = new DatabaseHelper();
            string query1 = "Sp_GetUserID ";
            dh1.AddParameter("@Username", txtdomainID.Text);
            DataSet ds1 = dh1.ExecuteDataSet(query1, CommandType.StoredProcedure);
            int num1 = Convert.ToInt32(ds1.Tables[0].Rows[0][0]);
            Session["UID"] = num1.ToString();
            Response.Redirect("PublisherHome.aspx");
        }
        if (num == 1 && ddlRoles.SelectedValue == "3")
        {
            DatabaseHelper dh2 = new DatabaseHelper();
            string query2 = "Sp_GetUserID ";
            dh2.AddParameter("@Username", txtdomainID.Text);
            DataSet ds2 = dh2.ExecuteDataSet(query2, CommandType.StoredProcedure);
            int num2 = Convert.ToInt32(ds2.Tables[0].Rows[0][0]);
            Session["UID"] = num2.ToString();
            Response.Redirect("Developer Home.aspx");
        }
        if (num == 1 && ddlRoles.SelectedValue == "2")
        {
            DatabaseHelper dh2 = new DatabaseHelper();
            string query2 = "Sp_GetUserID ";
            dh2.AddParameter("@Username", txtdomainID.Text);
            DataSet ds2 = dh2.ExecuteDataSet(query2, CommandType.StoredProcedure);
            int num2 = Convert.ToInt32(ds2.Tables[0].Rows[0][0]);
            Session["UID"] = num2.ToString();
            Response.Redirect("AdvertiserHome.aspx");

        }
        else
        {
            lblError.Visible = true;
        }
    }
}