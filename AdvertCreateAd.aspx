<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertCreateAd.aspx.cs" Inherits="AdvertCreateAd" %>
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
    <form id="form1" class="form-horizontal" runat="server">
    <uc2:Header ID="Header1" runat="server" />
    <div>
     <div class="box span12">
					<div class="box-header well" data-original-title="">
			        <h2> <i class="icon-edit" ></i> Create Standard Display Ad</h2>
					</div>
     <div class="box-content">
     <fieldset>
     
     <div  class="control-group">          
                            <asp:Label ID="lblAdname"  CssClass="control-label" for="txtADname" runat="server">Ad Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtADname" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="txtADname" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>

           <div  class="control-group">          
                            <asp:Label ID="Label1"  CssClass="control-label" for="upadd" runat="server">Add New Creative</asp:Label>
								<div class="controls">
                                
                                    <asp:FileUpload ID="upadd" runat="server" />
                                
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator"  ControlToValidate="upadd" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
           <div  class="control-group">          
                          <%--  <asp:Label ID="Label2"  CssClass="control-label" for="txtADname" runat="server">Ad Name</asp:Label>
							--%>	<div class="controls">
                                <%--<asp:TextBox ID="TextBox2" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator"  ControlToValidate="txtADname" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
--%>

                                <asp:DropDownList ID="selectad" runat="server">
                                </asp:DropDownList>
		   </div>
           </div>
           <div  class="control-group">          
                            <asp:Label ID="Label2"  CssClass="control-label" for="txtclick" runat="server">Clickthrough URL</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtclick" CssClass="span6 typeahead"   Height="20px" Width="350px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator"  ControlToValidate="txtclick" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group">          
                            <asp:Label ID="Label3"  CssClass="control-label" for="ddlclickwin" runat="server">Click Target Window</asp:Label>
								<div class="controls">
                              <asp:DropDownList ID="ddlclickwin" runat="server">
                                </asp:DropDownList>
		   </div>    
           </div>

           <div class="form-actions">
                            <asp:Button ID="btnNext" runat="server" Text="Next" 
                            type="submit" class="btn btn-round btn-info pull-right" />
                           
            </div>
     </fieldset>
     </div>
     </div>
    </div>
    </form>
</body>
</html>
