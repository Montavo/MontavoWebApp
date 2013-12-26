using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BinaryIntellect.DataAccess;
using System.Data;

public partial class AdvertNewCampaign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //DatabaseHelper dh = new DatabaseHelper();
        //string query = "SP_AddCampaign";
        //dh.AddParameter("@name", txtCampName.Text);
        //dh.AddParameter("@start", DateTime.Today);
        //dh.AddParameter("@end", DateTime.Today.AddDays(10));
        //dh.AddParameter("@ccdays", cctxtDays.Text);
        //dh.AddParameter("@cchours", cctxthours.Text);
        //dh.AddParameter("@ccmins", cctxtMin.Text);
        //dh.AddParameter("@vcdays", vctxtDays.Text);
        //dh.AddParameter("@vchours", vctxtHours.Text);
        //dh.AddParameter("@vcmins", vctxtMins.Text);
        //dh.AddParameter("@advertID", 14);
        //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
        UserFunctions uf = new UserFunctions();
        uf.advertAddCampaign(txtCampName.Text, Convert.ToInt32(cctxtDays.Text), Convert.ToInt32(cctxthours.Text),Convert.ToInt32(cctxtMin.Text)
            ,Convert.ToInt32( vctxtDays.Text),Convert.ToInt32( vctxtHours.Text),Convert.ToInt32( vctxtMins.Text));
    }
}