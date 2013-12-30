<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link  href="css/bootstrap-cerulean.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>
    <style type="text/css">
        .dropwidth
        {
            width:210px;
        }
    </style>
</head>
<body>
  
    <div>
    <div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>Welcome to Montavo Login Page</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span7 center login-box">
					<div class="alert alert-info">
						Please login with your Domain ID, Password and Role.
					</div>
					<form id="Form2" class="form-horizontal" method="post" runat="server">
						<fieldset>
							<div class="input-prepend span6 center" title=" Domain ID" data-rel="tooltip">
                            <span class="add-on"><i class="icon-user"></i></span>
                            <asp:TextBox  ID="txtdomainID" runat="server" autofocus class="input-large dropwidth span10" name="txtbxCitrixID" type="text"  ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtdomainID" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
							</div>
							<div class="clearfix"></div>
							<div class="input-prepend span6 center" title="Password" data-rel="tooltip">
								<span class="add-on" style="margin-right: 3px;">
                               <i class="icon-lock"></i></span><asp:TextBox ID="txtbxpassword" runat="server"  
            TextMode="Password" class="input-large span10 dropwidth" name="password"  type="password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtbxpassword" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
						
							</div>
                            <div class="clearfix"></div>

							<div class="input-prepend span6 center" title="Role" data-rel="tooltip">
								<span class="add-on" style="margin-right: 1px;">
                               <i class="icon-question-sign"></i></span>
                                <%--<asp:DropDownList ID="ddlRoles" class="dropdown"  runat="server" DataSourceID="SqlDataSource1" DataTextField="fldRoleName" DataValueField="fldRoleID">--%>
                                <asp:DropDownList ID="ddlRoles" class="dropdown"  runat="server" >
                                    <asp:ListItem Enabled="True" Selected="False" Text="Publisher" Value="1" />
                                    <asp:ListItem Enabled="True" Selected="False" Text="Advertiser" Value="2" />            
                                    <asp:ListItem Enabled="True" Selected="False" Text="Developer" Value="3" />
                                </asp:DropDownList>
                                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MontavoConnectionString %>" SelectCommand="SELECT * FROM [tblRoles]"></asp:SqlDataSource>--%>
							</div>
							<div class="clearfix"></div>
							<div class="input-prepend">
							<label class="remember" for="remember"><input type="checkbox"  id="remember" />Remember me</label>
							</div>
							<div class="clearfix"></div>
							<p class="center span5">
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-round btn-primary" 
                                    onclick="btnsubmit_Click"/>

							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
	</div><!--/.fluid-container-->
    <div class="center">
    <asp:Label ID="lblError" runat="server"  Visible="false" style="position: relative; color:Red;">Login Failed Please Provide Valid Credentials</asp:Label>
    </div>
    </div>
</body>
</html>
