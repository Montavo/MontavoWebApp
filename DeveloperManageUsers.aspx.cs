using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class DeveloperManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetUsers();
        if (grdUsers.Rows.Count > 0)
            grdUsers.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    private void GetUsers()
    {
        if (!IsPostBack)
        {
            string sessiona = Session["UID"].ToString();
            int did = Convert.ToInt32(sessiona);
            UserFunctions uf = new UserFunctions();
            DataSet ds = uf.LoadUsers(did);
            grdUsers.DataSource = ds;
            grdUsers.DataBind();

        }
    }
    protected void grdUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleteUser")
        {
            int userid = Convert.ToInt32(e.CommandArgument.ToString());
            //DatabaseHelper dhel = new DatabaseHelper();
            //string query = "SP_RemoveUser";
            //dhel.AddParameter("@userId", userid);
            //dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
            UserFunctions uf = new UserFunctions();
            uf.DeleteUser(userid);

         

        }

    }
}