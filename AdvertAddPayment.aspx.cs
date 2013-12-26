using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Data;
using System.Runtime.Serialization.Json;
using System.ServiceModel.Web;
using System.Web.Services;
using BinaryIntellect.DataAccess;
public partial class AdvertAddPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //int accountId = 1776950342;
        //string accesstoken = "STAGE_adb124c960162a9d77ef649c5235f5822168eb5eff77b365a9e0e49aa95030a9";
        //int amount = 520;
        //string desc = "Montavo Test";
        //string url = @"https://stage.wepayapi.com/v2/checkout/create?account_id=" + accountId + "&amount=" + amount + "&short_description=" + desc + "&type=SERVICE&redirect_uri=http://montavo.com/PaymentSlip.aspx";
        //HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        //request.Method = "POST";
        //request.UserAgent = "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; .NET4.0C; .NET4.0E)";
        //request.Headers.Add("Authorization", "Bearer " + accesstoken);
        //HttpWebResponse myHttpWebResponse = (HttpWebResponse)request.GetResponse();
        //Stream streamResponse = myHttpWebResponse.GetResponseStream();
        //StreamReader streamRead = new StreamReader(streamResponse);

        //Char[] readBuff = new Char[256];
        //int count = streamRead.Read(readBuff, 0, 256);
        //string jsonstring = string.Empty;
        //while (count > 0)
        //{
        //    String outputData = new String(readBuff, 0, count);
        //    jsonstring += outputData.ToString();
        //    count = streamRead.Read(readBuff, 0, 256);
        //}

        //string[] codes = jsonstring.Split(',');
        //string checkOutUri = codes[1].Replace("\\", "").Replace("\"", "").Replace("checkout_uri:", "").Replace("}", "");
        //// string checkOutUri = codes[1].Replace("checkout_uri:", string.Empty);
        ////checkOutUri.Replace("\"" , string.Empty);
        //// Release the response object resources.
        //streamRead.Close();
        //streamResponse.Close();
        //myHttpWebResponse.Close();
        //Response.Redirect(checkOutUri, false);
       // MakeCheckout();

    }

    //[WebMethod]
    //private static void MakeCheckout(long ccid)
    //{

    //    long cccardid = Convert.ToInt64(ccid);
    //    int accountId = 1776950342;
    //    int amount = 10000;
    //    string accesstoken = "STAGE_adb124c960162a9d77ef649c5235f5822168eb5eff77b365a9e0e49aa95030a9 ";
    //    string desc = "Montavo Button Test";
    //    string url = @"https://stage.wepayapi.com/v2/checkout/create?account_id=" + accountId + "&amount=" + amount + "&short_description=" + desc + "&payment_method_id=" + cccardid + "&payment_method_type=credit_card&type=SERVICE&redirect_uri=http://montavo.com/PaymentSlip.aspx";
    //    HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
    //    request.Method = "POST";
    //    request.UserAgent = "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; .NET4.0C; .NET4.0E)";
    //    request.Headers.Add("Authorization", "Bearer " + accesstoken);
    //    HttpWebResponse myHttpWebResponse = (HttpWebResponse)request.GetResponse();
    //    Stream streamResponse = myHttpWebResponse.GetResponseStream();
    //    StreamReader streamRead = new StreamReader(streamResponse);
    //    Char[] readBuff = new Char[256];
    //    int count = streamRead.Read(readBuff, 0, 256);
    //    string jsonstring = string.Empty;
    //    while (count > 0)
    //    {
    //        String outputData = new String(readBuff, 0, count);
    //        jsonstring += outputData.ToString();
    //        count = streamRead.Read(readBuff, 0, 256);
    //    }
    //    string[] codes = jsonstring.Split(',');
    //    streamResponse.Close();
    //    myHttpWebResponse.Close();
    //}
    //protected void btnNext_Click(object sender, EventArgs e)
    //{

        
       
    //}
  protected void btnNext_Click(object sender, EventArgs e)
   {

       //DatabaseHelper dh = new DatabaseHelper();
       //string query = "SP_AddAdvertiserPayment";
       //dh.AddParameter("@Fname", txtFName.Text);
       //dh.AddParameter("@Lname", txtLName.Text);
       //dh.AddParameter("@CompName", txtCity.Text);
       //dh.AddParameter("@Street", txtState.Text);
       //dh.AddParameter("@suite", Convert.ToInt32(txtSuite.Text));
       //dh.AddParameter("@city", txtCity.Text);
       //dh.AddParameter("@state", txtState.Text);
       //dh.AddParameter("@Zip", Convert.ToInt32(txtZip.Text));
       //dh.AddParameter("@phone", txtPhone.Text);
       //dh.AddParameter("@CCno", Convert.ToInt32(txtCredit.Text));
       //dh.AddParameter("@CCType", "visa");
       //dh.AddParameter("@CCV", Convert.ToInt32(txtCCV.Text));
       //dh.AddParameter("@Stipend", Convert.ToInt32(txtAdvertSpend.Text));
       //dh.ExecuteNonQuery(query, CommandType.StoredProcedure);
       //Response.Redirect("PublisherAddUser.aspx");
       UserFunctions uf = new UserFunctions();
       uf.addAdvertiserPayment(txtFName.Text, txtLName.Text,txtCompanyName.Text,txtStreet.Text,txtSuite.Text,txtCity.Text,txtState.Text,Convert.ToInt32(txtZip.Text),txtPhone.Text,Convert.ToInt32(txtCredit.Text),Convert.ToInt32(txtCCV.Text),Convert.ToInt32(txtAdvertSpend.Text));

   }
}