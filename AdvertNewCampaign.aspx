<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertNewCampaign.aspx.cs" Inherits="AdvertNewCampaign" %>
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
    <link href="css/datepicker.css" rel="stylesheet" type="text/css" />
    <link href="css/datepicker3.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" class="form-horizontal" runat="server">
          <uc2:Header ID="Header1" runat="server" />
    <div>
    <div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-add" ></i>Create New Campaign</h2>
	
					</div>
                    <div class="box-content">
 <fieldset>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCampName"  CssClass="control-label" for="txtCampName" runat="server">Campaign Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCampName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           <h4 style="padding-left:35px;">
           Flight Dates: All dates are in "UTC" timezone			
           </h4>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblStart" data-provide="datepicker" CssClass="control-label" for="txtStart" runat="server">Start</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtStart" CssClass="span6 typeahead datepicker"   Height="20px" Width="219px" runat="server"></asp:TextBox>  
		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblEnd"  CssClass="control-label" for="txtEnd" runat="server">End</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtEnd" CssClass="span6 typeahead"  Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           <h4 style="padding-left:35px;">
           Conversion Windows		
           </h4>
           <div  class="control-group">       
                            <asp:Label ID="lblclicks"  CssClass="control-label" for="cctxtDays" runat="server">Click Conversions</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="cctxtDays" CssClass=" input-mini typeahead inline"  runat="server"></asp:TextBox>
		                        <asp:Label ID="lbldays"  for="cctxtDays" runat="server">Days</asp:Label>
							    <asp:TextBox ID="cctxthours" CssClass=" input-mini typeahead inline"  runat="server"></asp:TextBox>
		                        <asp:Label ID="lblhours"  for="cctxthours" runat="server">Hours</asp:Label>
                                 <asp:TextBox ID="cctxtMin" CssClass=" input-mini typeahead inline"  runat="server"></asp:TextBox>
		                        <asp:Label ID="lblmins"  for="cctxtMin" runat="server">Mins</asp:Label>
                                </div>
            </div>
                 <div  class="control-group"> 
                                           
                            <asp:Label ID="Label1"  CssClass="control-label" for="vctxtDays" runat="server">View Conversions</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="vctxtDays" CssClass=" input-mini typeahead inline"  runat="server"></asp:TextBox>
		                        <asp:Label ID="Label2"  for="vctxtDays" runat="server">Days</asp:Label>
							    <asp:TextBox ID="vctxtHours" CssClass=" input-mini typeahead inline"  runat="server"></asp:TextBox>
		                        <asp:Label ID="Label3"  for="vctxthours" runat="server">Hours</asp:Label>
                                 <asp:TextBox ID="vctxtMins" CssClass=" input-mini typeahead inline"  runat="server"></asp:TextBox>
		                        <asp:Label ID="Label4"  for="vctxtMin" runat="server">Mins</asp:Label>
                                </div>
            </div>
            <div class="form-actions"> 
                            <asp:Button ID="btnAdd" runat="server" Text="Next" 
                            type="submit" class="btn btn-primary btn-round pull-right" 
                                onclick="btnAdd_Click" />
            </div>
    </div>
    </fieldset>
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
