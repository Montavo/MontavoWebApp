using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class PubManageWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        getwebsites();
        if (grdWeb.Rows.Count > 0)
            grdWeb.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    private void getwebsites()
    {
        string sessiona = Session["UID"].ToString();
        int pid = Convert.ToInt32(sessiona);
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetPublisherWebsites";
        //dh.AddParameter("@pubid", pid);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds=uf.getPublisherWebsitesByID(pid);
        grdWeb.DataSource = ds;
        grdWeb.DataBind();
    }
    //protected void grdweb_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "deleteWeb")
    //    {
    //        int webid = Convert.ToInt32(e.CommandArgument.ToString());
    //        DatabaseHelper dhel = new DatabaseHelper();
    //        string query = "SP_RemoveWebsite";
    //        dhel.AddParameter("@webId", webid);
    //        dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
    //        getwebsites();

    //    }

    //}
}