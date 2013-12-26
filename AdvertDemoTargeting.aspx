<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertDemoTargeting.aspx.cs" Inherits="AdvertDemoTargeting" %>
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
						<h2><i class="icon-add" ></i>Create New Campaign -Demographic Targeting</h2>
	
					</div>
                    <div class="box-content">
 <fieldset>
         <h4 style="padding-left:35px; padding-bottom:20px;">
           Geographic Targeting		
           </h4>
    <div  class="control-group">              
                            <asp:Label ID="lblcitypostal"  CssClass="control-label" for="txtcitypostal" runat="server">Find City or Postal Code</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtcitypostal" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblmiles"  CssClass="control-label" for="txtradius" runat="server">Radius (miles)</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtradius" CssClass=" input-mini typeahead"   Height="20px" runat="server"></asp:TextBox>  
		   </div>
    </div>
    <h4 style="padding-left:35px;  padding-bottom:20px;">
      Technographic Targeting
    </h4>

            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblos"  CssClass="control-label" for="ddlOS" runat="server">OS</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlOS" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblBrowser"  CssClass="control-label" for="ddlBrowser" runat="server">Browser</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlBrowser" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lbllang"  CssClass="control-label" for="ddlLang" runat="server">Language</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlLang" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblscreenres"  CssClass="control-label" for="ddlRes" runat="server">Screen Resolution</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlRes" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblconnspeed"  CssClass="control-label" for="ddlconnspeed" runat="server">Connection Speed</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlconnspeed" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblconntype"  CssClass="control-label" for="ddlconntype" runat="server">Connection Type</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlconntype" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblDevice"  CssClass="control-label" for="ddlDevice" runat="server">Device</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlDevice" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblUserAgent"  CssClass="control-label" for="ddlUSerAgent" runat="server">User Agent</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlUSerAgent" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblmobcarier"  CssClass="control-label" for="ddlmobcarier" runat="server">Mobile Carrier</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlmobcarier" runat="server">
                                    </asp:DropDownList>
		   </div>
           </div>
     <h4 style="padding-left:35px;">
      Category Targeting
     </h4><br />
     <h5 style="padding-left:35px;">Category Targeting Montavo Shopping App Categories Montavo Ad Network Websites and Mobile App Categories</h5>
    
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblPrimarycategory"  CssClass="control-label" for="ddlwebprimarycat" runat="server">Primary Category</asp:Label>
								<div class="controls">
                                <asp:DropDownList ID="ddlwebprimarycat" runat="server">
                                    </asp:DropDownList>
                                <asp:Label ID="lblsecondrycategory" CssClass="offset1"  for="ddlwebseccat" runat="server">Secondry Category</asp:Label>
							    <asp:DropDownList ID="ddlwebseccat" runat="server">
                                </asp:DropDownList>
                                </div>
            </div>
           

         <h5 style="padding-left:35px;">Montavo Shopping App Categories</h5>
    
           <div  class="control-group">
                                           
                            <asp:Label ID="lblshopprimarycat"  CssClass="control-label" for="ddlshopprimarycat" runat="server">Primary Category</asp:Label>
								<div class="controls">
                                <asp:DropDownList ID="ddlshopprimarycat" runat="server">
                                    </asp:DropDownList>
                                <asp:Label ID="lblshopsecondrycat" CssClass="offset1"  for="ddlshopSecondryseccat" runat="server">Secondry Category</asp:Label>
							    <asp:DropDownList ID="ddlshopSecondryseccat" CssClass="dropdown" runat="server">
                                    </asp:DropDownList>
                                 </div>
            </div>
         <h4 style="padding-left:35px;">
         Gender And Age Targeting
         </h4><br />
          <div  class="control-group"> 
                                           
                            <asp:Label ID="lblGender"  CssClass="control-label" for="ddlGender" runat="server">Gender</asp:Label>
								<div class="controls">
                                <asp:DropDownList ID="ddlGender" runat="server">  
                                <asp:ListItem Value="1" Text="All" />
                                <asp:ListItem Value="2" Text="Male" />
                                <asp:ListItem Value="3" Text="Female" />
                                </asp:DropDownList>
                                </div>
            </div>

             <div  class="control-group"> 
                                           
                            <asp:Label ID="Label1"  CssClass="control-label" for="lstAges" runat="server">Age Groups To Target</asp:Label>
								<div class="controls">
                                    <asp:CheckBoxList ID="lstAges" RepeatDirection="Horizontal" CellPadding="6" runat="server">
                                   <asp:ListItem Value="1">12-17</asp:ListItem>
                                   <asp:ListItem Value="2">18-24</asp:ListItem>
                                   <asp:ListItem Value="3">25-34</asp:ListItem>
                                   <asp:ListItem Value="4">35-44</asp:ListItem>
                                   <asp:ListItem Value="5">45-54</asp:ListItem>
                                   <asp:ListItem Value="6">55-64</asp:ListItem>
                                   <asp:ListItem Value="7">65+</asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>
            </div>   
            <div class="form-actions">
                            <asp:Button ID="btnPrevious" runat="server" Text="Previous" 
                                 class="btn btn-rounded pull-right" /> 
                            <asp:Button ID="btnAdd" runat="server" Text="Next" 
                            type="submit" class="btn btn-primary  btn-rounded pull-right" />
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
