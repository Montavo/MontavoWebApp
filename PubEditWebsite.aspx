<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PubEditWebsite.aspx.cs" Inherits="PubEditWebsite" %>
<%@ Register src="UC/Header.ascx" tagname="Header" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Website</title>
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
    <div class="center span12">
    <h3>
    Publisher Edit Website Information
    </h3>
    <%--<div class="breadcrumb">
    <ul>
    <li class="active">Step1-Register Websites<span class="divider">/</span></li>
    <li><a href="#">Step2-Create Business Account</a><span class="divider">/</span></li>
    <li><a href="#">Step3-Add Users</a><span class="divider">/</span></li>
    <li><a href="#">Step4-Add Payment Method</a></li>
    </ul>
    </div>--%>
    </div>
    <div>
     <div class="box">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-pencil"></i>Edit Website</h2>
					</div>
            <div class="box-content">
                  <fieldset>

                  <div  class="control-group">      
                            <asp:Label ID="lblWebname"  CssClass="control-label" for="txtWebName" runat="server">Website Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtWebName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="txtWebName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                   </div>
                   </div>
                  <div  class="control-group">
                                           
                            <asp:Label ID="lblWebURL"  CssClass="control-label" for="txtWebURL" runat="server">Website URL</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtWebURL" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator"  ControlToValidate="txtWebURL" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
                   </div>
                   <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCateegoryFilter"  CssClass="control-label" for="lstCategoryFilters" runat="server">Category Filters</asp:Label>
								<div class="controls">
                                <%--<asp:TextBox ID="TextBox1" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                                --%>
                                <asp:ListBox ID="lstCategoryFilters" runat="server"></asp:ListBox>
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
                            <asp:Button ID="btnEdit" runat="server" Text="Edit Website" 
                            class="btn btn-primary btn-round pull-right" onclick="btnEdit_Click"  />
                            </div>   
                  </fieldset>
                  </div>
     </div>
    </div>
       </div>

    </form>
</body>
</html>
