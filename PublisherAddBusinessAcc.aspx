<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PublisherAddBusinessAcc.aspx.cs" Inherits="PublisherAddBusinessAcc" %>
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
    <style>
    .validator
    {
        color:Red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <uc2:Header ID="Header1" runat="server" />
    <div>
    <div class="container">
    <div class="center span12">
    <h3>
    Montavo Publisher SignUp
    </h3>
    <div class="breadcrumb">
    
    <ul>
    <li><a href="#">Step1-Register Websites</a><span class="divider">/</span></li>
    <li class="active">Step2-Create Business Account<span class="divider">/</span></li>
    <li><a href="#">Step3-Add Users</a><span class="divider">/</span></li>
    <li><a href="#">Step4-Add Payment Method</a></li>
    </ul>
    </div>
    </div>

  
    <div class="box">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-gift"></i>Create Business Account</h2>
	
					</div>
                    <div class="box-content">
                    <fieldset>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCompName"  CssClass="control-label" for="txtCompName" runat="server">Company Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCompName" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="txtCompName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
    </div>
    </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblAddress"  CssClass="control-label" for="txtAddress" runat="server">Address</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtAddress" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator"  ControlToValidate="txtAddress" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCity"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCity" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validator"  ControlToValidate="txtCity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblState"  CssClass="control-label" for="txtState" runat="server">State</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtState" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator"  ControlToValidate="txtState" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		                        </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblZip"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtZip" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
		                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validator"  ControlToValidate="txtZip" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                                </div>
            </div>
            <div class="form-actions"> 
                            <asp:Button ID="btnAdd" runat="server" Text="Add Business Account" 
                            type="submit" class="btn  btn-round btn-primary pull-right" onclick="btnAdd_Click" />
            </div>
    </div>
    </fieldset>
    </div>
    </div>
    </div>
      </div>
    </form>
  <%--  <div class="footer">
    <p class="pull-left">2013 Montavo All Rights Reserved</p>
    
    </div>--%>
</body>
</html>
