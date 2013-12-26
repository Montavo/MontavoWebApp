using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BinaryIntellect.DataAccess;

public partial class DevManageApps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetApplications();
        if (GridApps.Rows.Count > 0)
            GridApps.HeaderRow.TableSection = TableRowSection.TableHeader;

    }
    private void GetApplications()
    {
        string sessiona = Session["UID"].ToString();
        int did = Convert.ToInt32(sessiona);
        //DatabaseHelper dh = new DatabaseHelper();
        //DataSet ds = new DataSet();
        //string query = "SP_GETDeveloperApps";
        //dh.AddParameter("@DeveloperId", did);
        //ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds=uf.getDeveloperApps(did);
        GridApps.DataSource = ds;
        GridApps.DataBind();
    }
   
}