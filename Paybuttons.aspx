<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Paybuttons.aspx.cs" Inherits="Paybuttons" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
<div id="abc">
    <form id="form1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="5 USDollars" 
        onclick="Button1_Click" Width="113px" /><br />
    <asp:Button ID="Button2" runat="server" Text="10 USDollars" 
        onclick="Button2_Click" /><br />
    <asp:Button ID="Button3" runat="server" Text="20 USDollars" 
        onclick="Button3_Click" />
    
    
    </div>
    </form>
   
</body>
</html>
