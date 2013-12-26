<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertAddBusiness.aspx.cs" Inherits="AdvertAddBusiness" %>
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
                              <asp:Button ID="Button2" runat="server" Text="Add Business Account" 
                             class="btn btn-success brn-round pull-right" onclick="Button2_Click" />
            </div>
            </fieldset>
    </div>
    
    </div>
    </div>
    </form>
    <script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
</body>
</html>
