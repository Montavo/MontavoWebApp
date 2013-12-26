using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdvertManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetUsers();
        if (grdUsers.Rows.Count > 0)
            grdUsers.HeaderRow.TableSection = TableRowSection.TableHeader;

    }
    private void GetUsers()
    {
            string sessiona = Session["UID"].ToString();
            int aid = Convert.ToInt32(sessiona);
            UserFunctions uf = new UserFunctions();
            DataSet ds = uf.LoadUsers(aid);
            grdUsers.DataSource = ds;
            grdUsers.DataBind();

    
    }
}