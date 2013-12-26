using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdvertmanagePlacement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetPlacements();
        if (grdPlacements.Rows.Count > 0)
            grdPlacements.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    private void GetPlacements()
    {
        int aid = Convert.ToInt32(Session["UID"].ToString());
        UserFunctions uf = new UserFunctions();
        DataSet ds = uf.getAdvertplacements(aid);
        grdPlacements.DataSource = ds;
        grdPlacements.DataBind();
    }
}