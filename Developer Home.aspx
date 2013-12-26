<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Developer Home.aspx.cs" Inherits="Developer_Home" %>
<%@ Register src="UC/Header.ascx" tagname="Header" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
    <form id="form1" runat="server">
       <uc2:Header ID="Header1" runat="server" />
    <div>
    <div class="row span12 center">
    <h3>Account Administration</h3>
        <div class="row span12 ">
        <div class="row span8 center">
         <a  class="well span3 top-block" href="DevManageApps.aspx">
					<span class="icon32 icon-color  icon-web"></span>
					<div>Manage Applications</div>
				    </a>


				<a  class="well span3 top-block" href="DevManagePaypal.aspx">
					<span class="icon32 icon-color icon-document"></span>
					<div>Manage Payment Method </div>
					
                </a>
        
        
        </div>
        		   
               <div class="row span8 center">
               <a  class="well span3 top-block" href="DeveloperManageUsers.aspx">
					<span class="icon32 icon-red icon-user"></span>
					<div>Manage Users</div>
				
				</a>
                <a  class="well span3 top-block" href="DeveloperSteps.aspx">
					<span class="icon32 icon-red icon-user"></span>
					<div>Sign Up</div>
				 
				</a>
                 <a  class="well span3 top-block" href="DeveloperRegmobapps.aspx">
					<span class="icon32 icon-red icon-user"></span>
					<div>Add Application</div>
				 
				</a>
                <a  class="well span3 top-block" href="DevAddUsers.aspx">
					<span class="icon32 icon-red icon-user"></span>
					<div>Add User</div>
				 
				</a>
                 <a  class="well span3 top-block" href="DevPaypal.aspx">
					<span class="icon32 icon-red icon-user"></span>
					<div>Add Payment Method</div>
				 
				</a>
               <a  class="well span3 top-block" href="DevBusinessAcc.aspx">
					<span class="icon32 icon-red icon-user"></span>
					<div>Add Business Account</div>
				 
				</a>
              <a  class="well span3 top-block" href="DeveloperManageBusiness.aspx">
					<span class="icon32 icon-color icon-document"></span>
					<div>Manage Business Account</div>
				 
				</a>
                </div>
                </div>
       </div>
    </div>
    </form>
</body>
</html>
