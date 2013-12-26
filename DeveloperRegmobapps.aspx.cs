using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;


public partial class DeveloperRegmobapps : System.Web.UI.Page
{
    DatabaseHelper dh = new DatabaseHelper();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        GetApplications();
        //if (GridApps.Rows.Count > 0)
        //GridApps.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    private void GetApplications()
    {
        //DataSet ds = new DataSet();
        //string query = "SP_GETDeveloperApps";
        //dh.AddParameter("@DeveloperId", 1);
        //ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        //GridApps.DataSource = ds;
        //GridApps.DataBind();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
//        string query = @"insert into dbo.tblMobileApps(fldAppName,fldAppStoreUrl,fldPlayStoreUrl,fldMarketUrl,fldCategory,fldNotes)
//	                Values ('" + txtAppname.Text + "','" + txtAppurl.Text + "','" + txtplaystoreurl.Text + "','" + txtmarketurl.Text + "','" + lstcatfilters.Items + "','" + txtnotes.Text + "')";
        //string query = "SP_ADDMobileApp";
        //dh.AddParameter("@AppName", txtAppname.Text);
        //dh.AddParameter("@AppStoreURL", txtAppurl.Text);
        //dh.AddParameter("@PlayStoreURL", txtplaystoreurl.Text);
        //dh.AddParameter("@MarketURL", txtmarketurl.Text);
        //dh.AddParameter("@Catfilters", lstcatfilters.Items);
        //dh.AddParameter("@Notes", txtnotes.Text);
        //dh.ExecuteNonQuery(query,CommandType.StoredProcedure);
        //Response.Redirect("DevBusinessAcc.aspx");
        //GetApplications();
        int devid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.AddApplication(txtAppname.Text, txtAppurl.Text, txtplaystoreurl.Text, txtmarketurl.Text, "1", txtnotes.Text,devid);
        Response.Redirect("DevManageApps.aspx");
    }
}