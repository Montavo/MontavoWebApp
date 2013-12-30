using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Debug : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<br>Environment variables<br>");
        IDictionary variables = Environment.GetEnvironmentVariables();
        foreach (DictionaryEntry variable in  variables)
        {
            Response.Write(string.Format("{0}={1}<br>",variable.Key,variable.Value));
        }
        //Response.Write( Environment.GetEnvironmentVariable("SQLAZURECONNSTR_DefaultConnection")

    }
}