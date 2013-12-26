using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class DevAddUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void btnAdd_Click(object sender, EventArgs e)
    //{
    //    //DatabaseHelper dh = new DatabaseHelper();
    //    //string query = "SP_AddUserADP";
    //    //dh.AddParameter("@firstName", txtFName.Text);
    //    //dh.AddParameter("@lastName", txtLName.Text);
    //    //dh.AddParameter("@Email", txtEmail.Text);
    //    //dh.ExecuteNonQuery(query,CommandType.StoredProcedure);
     
    //}
    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        int devid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.Adduser(txtFName.Text, txtLName.Text, txtEmail.Text, devid);
        Response.Redirect("DeveloperManageUsers.aspx");
    }
}