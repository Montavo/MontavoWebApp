using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class PubEditWebsite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        getWebsiteINFO();
    
    }
    private void getWebsiteINFO()
    {
        int webid = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetWebsiteBYID";
        //dh.AddParameter("@WebID", webid);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds= uf.GetWebSiteINFOByID(webid);
        txtWebName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtWebURL.Text = ds.Tables[0].Rows[0][2].ToString();
        //txt .Text = ds.Tables[0].Rows[0][4].ToString();
        txtnotes.Text = ds.Tables[0].Rows[0][4].ToString();
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        int webid = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dh1 = new DatabaseHelper();
        //string query = "SP_PubEditWebsite";
        //dh1.AddParameter("@WebID", webid);
        //dh1.AddParameter("@webname", txtWebName.Text);
        //dh1.AddParameter("@webUrl", txtWebURL.Text);
        //dh1.AddParameter("@notes", txtnotes.Text);
        //dh1.ExecuteNonQuery(query,CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        uf.EditWebsiteInfo(webid, txtWebName.Text, txtWebURL.Text, txtnotes.Text);
        Response.Redirect("PubManageWeb.aspx");
    }
}