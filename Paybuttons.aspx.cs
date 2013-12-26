using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

public partial class Paybuttons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        APICALL(5);
    }
    private void APICALL(int amount)
    {
        int accountId = 1776950342;
       
        string accesstoken = "STAGE_adb124c960162a9d77ef649c5235f5822168eb5eff77b365a9e0e49aa95030a9 ";
        string desc = "Montavo Button Test";
        string url = @"https://stage.wepayapi.com/v2/checkout/create?account_id=" + accountId + "&amount=" + amount + "&short_description=" + desc + "&type=SERVICE&redirect_uri=http://montavo.com/PaymentSlip.aspx";
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        request.Method = "POST";
        request.UserAgent = "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; .NET4.0C; .NET4.0E)";
        request.Headers.Add("Authorization", "Bearer " + accesstoken);
        HttpWebResponse myHttpWebResponse = (HttpWebResponse)request.GetResponse();
        Stream streamResponse = myHttpWebResponse.GetResponseStream();
        StreamReader streamRead = new StreamReader(streamResponse);
        Char[] readBuff = new Char[256];
        int count = streamRead.Read(readBuff, 0, 256);
        string jsonstring = string.Empty;
        while (count > 0)
        {
            String outputData = new String(readBuff, 0, count);
            jsonstring += outputData.ToString();
            count = streamRead.Read(readBuff, 0, 256);
        }
        string[] codes = jsonstring.Split(',');
        string checkOutUri = codes[1].Replace("\\", "").Replace("\"", "").Replace("checkout_uri:", "").Replace("}", "");
        // string checkOutUri = codes[1].Replace("checkout_uri:", string.Empty);
        //checkOutUri.Replace("\"" , string.Empty);
        // Release the response object resources.
        streamRead.Close();
        streamResponse.Close();
        myHttpWebResponse.Close();
        Response.Redirect(checkOutUri, false);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        APICALL(10);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        APICALL(20);
    }
}