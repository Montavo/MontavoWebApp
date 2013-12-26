using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EditAdevertUser : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        GetUserInfo();
    }

    private void GetUserInfo()
    {
        int userId = Convert.ToInt32(Request.QueryString["ID"].ToString());
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetUserByUserID";
        //dh.AddParameter("@userId", userId);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.GetUserINFOByID(userId);
        //txtWebName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtFName.Text = ds.Tables[0].Rows[0][1].ToString();
        // txtaLname.Text = ds.Tables[0].Rows[0][2].ToString();
        txtLName.Text = ds.Tables[0].Rows[0][2].ToString();
        //txt .Text = ds.Tables[0].Rows[0][4].ToString();
        txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
        //txtnotes.Text = ds.Tables[0].Rows[0][4].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int userId = Convert.ToInt32(Request.QueryString["ID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.updateUser(userId, txtFName.Text, txtLName.Text, txtEmail.Text);

        //DatabaseHelper dh1 = new DatabaseHelper();
        //string query = "Sp_EditUser";
        //dh1.AddParameter("@userID", userId);
        //dh1.AddParameter("@fname", txtFName.Text);
        //dh1.AddParameter("@lname", txtLName.Text);
        //dh1.AddParameter("@email", txtEmail.Text);
        //dh1.ExecuteNonQuery(query, CommandType.StoredProcedure);
        Response.Redirect("AdvertManageUsers.aspx");
    }
}