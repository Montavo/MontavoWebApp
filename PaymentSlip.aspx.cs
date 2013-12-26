using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

public partial class PaymentSlip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        GetDEtails();
    }

    private void GetDEtails()
    {
        long checkoutid = Convert.ToInt64(Request.QueryString["checkout_id"]);
        Label1.Text = checkoutid.ToString();
        string url = @"https://stage.wepayapi.com/v2/checkout?checkout_id=" + checkoutid;
        string accesstoken = "STAGE_adb124c960162a9d77ef649c5235f5822168eb5eff77b365a9e0e49aa95030a9";
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
        // Release the response object resources.
        streamRead.Close();
        streamResponse.Close();
        myHttpWebResponse.Close();
        for (int i = 0; i < codes.Length; i++)
        {
            Label NewLabel = new Label();
            NewLabel.ID = "Label" + i;
            NewLabel.Text = codes[i];
            NewLabel.CssClass = "label";
            this.form1.Controls.Add(NewLabel);
        }
        string code1 = codes[1].Replace("\"", string.Empty).Replace("\"account_id\":", string.Empty).Replace("account_id:",string.Empty);
        string code2 = codes[2].Replace("\"", string.Empty).Replace("\"type\":", string.Empty).Replace("type:", string.Empty);
        string code3 = codes[20].Replace("\"", string.Empty).Replace("\"payer_email\":", string.Empty).Replace("payer_email:", string.Empty);
        Label2.Text = code1;
        Label3.Text = code2;
        Label4.Text = code3;
        Label5.Text = codes[21].ToString();
        Label6.Text = codes[17].ToString();
    }
}