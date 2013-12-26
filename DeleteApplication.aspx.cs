using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class DeleteApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int AppID = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dhel = new DatabaseHelper();
        //string query = "SP_RemoveApplication";
        //dhel.AddParameter("@Appid", AppID);
        //dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        uf.RemoveApplication(AppID);
        Response.Redirect("DevManageApps.aspx");
    }
}