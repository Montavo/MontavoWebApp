using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteAdvertUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int userID = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dhel = new DatabaseHelper();
        //string query = "SP_RemoveUser";
        //dhel.AddParameter("@userId", userID);
        //dhel.ExecuteNonQuery(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        uf.DeleteUser(userID);
        Response.Redirect("AdvertManageUsers.aspx");

    }
}