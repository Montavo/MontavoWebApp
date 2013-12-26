using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdvertManageBusiness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sessiona = Session["UID"].ToString();
        int aid = Convert.ToInt32(sessiona);
        UserFunctions uf = new UserFunctions();
        DataSet ds=uf.getAdvertBusiness(aid);
        grdPayments.DataSource = ds;
        grdPayments.DataBind();
        if (grdPayments.Rows.Count > 0)
            grdPayments.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
}