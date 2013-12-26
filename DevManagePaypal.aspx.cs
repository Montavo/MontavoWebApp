using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class DevManagePaypal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sessiona = Session["UID"].ToString();
        int did = Convert.ToInt32(sessiona);
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetPaymentMethodBYID";
        //dh.AddParameter("@ID", did);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds=uf.getPaymentmethodByID(did);
        grdPayment.DataSource = ds;
        grdPayment.DataBind();
        if (grdPayment.Rows.Count > 0)
            grdPayment.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
}