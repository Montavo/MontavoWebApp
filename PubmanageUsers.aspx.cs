using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;


public partial class PubmanageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetUsersByID";
        //dh.AddParameter("@ID", 1);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        string sessionid = Session["UID"].ToString();
        // Label2.Text = sessionid;
        int userId = Convert.ToInt32(sessionid);
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.LoadUsers(userId);
        grdUsers.DataSource = ds;
        grdUsers.DataBind();
        if (grdUsers.Rows.Count > 0)
            grdUsers.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
}