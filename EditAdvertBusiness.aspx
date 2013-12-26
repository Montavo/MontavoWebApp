<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditAdvertBusiness.aspx.cs" Inherits="EditAdvertBusiness" %>
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
    <div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-pencil"></i>Add Business</h2>
	
					</div>
                    <div class="box-content">
                    <fieldset>
     <div  class="control-group"> 
                                           
                            <asp:Label ID="lblBusinessname"  CssClass="control-label" for="txtBusinessName" runat="server">Business Entity Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtBusinessName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblAddress"  CssClass="control-label" for="txtAddress" runat="server">Address</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtAddress" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCity"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCity" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblState"  CssClass="control-label" for="ddlStates" runat="server">State</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlStates" runat="server">
                                    </asp:DropDownList>
		                        </div>
            </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblZip"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtZip" CssClass="span6 typeahead"   Height="20px" Width="150px" runat="server"></asp:TextBox>
                 
		                        </div>
            </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblPhone"  CssClass="control-label" for="txtPhone" runat="server">Phone</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtPhone" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		                        </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblWeb"  CssClass="control-label" for="txtWeb" runat="server">Web Address</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtWeb" CssClass="span6 typeahead"   Height="20px" Width="320px" runat="server"></asp:TextBox>
                 
		                        </div>
            </div>
            <div class="form-actions">
                            <%--<asp:Button ID="btnAdd" runat="server" Text="Add Another Business" 
                             class="btn btn-primary btn-round center" />
                             <asp:Button ID="Button1" runat="server" Text="Cancel" 
                             class="btn btn-round center" />--%>
                              <asp:Button ID="Button2" runat="server" Text="Edit" 
                             class="btn btn-primary brn-round pull-right" onclick="Button2_Click" />
            </div>
            </fieldset>
    </div>
    
    </div>
    </div>
    </form>
</body>
</html>
