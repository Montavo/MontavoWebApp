<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditPaymentMethod.aspx.cs" Inherits="EditPaymentMethod" %>
<%@ Register src="UC/Header.ascx" tagname="Header" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Edit Payment</title>
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
    <div class="container">
    <div class="center">
    <h3>
    Edit Payment Method
    </h3>
    <%--<div class="breadcrumb"> 
    <ul>
    <li> <a>Step1-Register Mobile Apps</a><span class="divider">/</span></li>
    <li><a href="#">Step2-Create Business Account</a><span class="divider">/</span></li>
    <li><a href="#">Step3-Add Users</a><span class="divider">/</span></li>
    <li class="active">Step4-Add Payment Method</li>
    </ul>
    </div>--%>
    </div>

    
    <div>
    <div class="box">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-add" ></i>Edit Payment Method</h2>
	
					</div>
<div class="box-content">
     <fieldset>
     <div  class="control-group">              
                            <asp:Label ID="lblFName"  CssClass="control-label" for="txtFName" runat="server">First Name</asp:Label>
							<div class="controls">
                            <asp:TextBox ID="txtFName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validator"  ControlToValidate="txtFName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblLName"  CssClass="control-label" for="txtLName" runat="server">Last Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtLName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="txtLName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblEmail"  CssClass="control-label" for="txtEmail" runat="server">Email</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtEmail" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator"  ControlToValidate="txtEmail" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
             <div  class="control-group">                
                            <asp:Label ID="lblNotes"  CssClass="control-label" for="txtnotes" runat="server">Notes</asp:Label>
						    <div class="controls">
                             <asp:TextBox ID="txtnotes" CssClass="span6 typeahead" TextMode="MultiLine" Columns="50" Rows="5" runat="server"></asp:TextBox>
		             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator"  ControlToValidate="txtnotes" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

            
             </div>
         </div>
            <div class="form-actions">
                            <asp:Button ID="btnAdd" runat="server" Text="Edit" 
                            type="submit" class="btn btn-primary btn-round pull-right" 
                                onclick="btnAdd_Click" />
                           
            </div>
  </fieldset>
    </div>
   
    </div>
    </div>
    </div>
    </form>
</body>
</html>
