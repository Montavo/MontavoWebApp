using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class Deletewebsite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int webid =Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dhel = new DatabaseHelper();
        //string query = "SP_RemoveWebsite";
        //dhel.AddParameter("@webId", webid);
        //dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        uf.RemoveWebsite(webid);
        Response.Redirect("PubManageWeb.aspx");
    }
}