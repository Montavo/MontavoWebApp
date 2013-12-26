using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class PubmanagePaypal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sessionid = Session["UID"].ToString();
        // Label2.Text = sessionid;
        int userId = Convert.ToInt32(sessionid);
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_GetPaymentMethodBYID";
        //dh.AddParameter("@ID", userId);
        //DataSet ds = dh.ExecuteDataSet(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        DataSet ds=uf.getPaymentmethodByID(userId);
        grdPayment.DataSource = ds;
        grdPayment.DataBind();
        if(grdPayment.Rows.Count>0)
            grdPayment.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
}