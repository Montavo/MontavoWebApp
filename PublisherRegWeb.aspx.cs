using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class PublisherRegWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int pubid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        uf.AddWebsite(txtWebName.Text, txtWebURL.Text, txtnotes.Text,pubid);
        Response.Redirect("PubManageWeb.aspx");

        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddPubWebsite";
        //dh.AddParameter("@webnaem",txtWebName.Text);
        //dh.AddParameter("@weburl",txtWebURL.Text);
        //dh.AddParameter("@notes",txtnotes.Text);     
        //dh.AddParameter("@pubid",3);
        //dh.ExecuteNonQuery(query,CommandType.StoredProcedure);
        //Response.Redirect("PublisherAddBusinessAcc.aspx");
    }
}