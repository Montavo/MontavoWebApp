using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;


public partial class EditDevApp : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e) {

        int appid = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dh1 = new DatabaseHelper();
        //string query = "SP_GetApplicationByAppId";
        //dh1.AddParameter("@Appid", appid);
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.GetApplicationInfoByID(appid);
        //txtWebName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtAppname.Text = ds.Tables[0].Rows[0][1].ToString();
        // txtaLname.Text = ds.Tables[0].Rows[0][2].ToString();
        txtAppurl.Text = ds.Tables[0].Rows[0][2].ToString();
        //txt .Text = ds.Tables[0].Rows[0][4].ToString();
        txtplaystoreurl.Text = ds.Tables[0].Rows[0][3].ToString();
        txtmarketurl.Text = ds.Tables[0].Rows[0][4].ToString();
        txtnotes.Text = ds.Tables[0].Rows[0][6].ToString();
    
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int appid = Convert.ToInt32(Request.QueryString["ID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.AddEditApplication(appid, txtAppname.Text, txtAppurl.Text, txtplaystoreurl.Text, txtmarketurl.Text, txtnotes.Text);
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_EditDeveloperApp";
        //dh.AddParameter("@AppId", appid);
        //dh.AddParameter("@AppName", txtAppname.Text);
        //dh.AddParameter("@AppStoreUrl", txtAppurl.Text);
        //dh.AddParameter("@playStoreUrl", txtplaystoreurl.Text);
        //dh.AddParameter("@marketurl", txtmarketurl.Text);
        //dh.AddParameter("@notes", txtnotes.Text);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        Response.Redirect("DevManageApps.aspx");

    }
}