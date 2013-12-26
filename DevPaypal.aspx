<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DevPaypal.aspx.cs" Inherits="DevPaypal" %>
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
    <div class="container">
    <%--<div class="center">
    <h3>
    Montavo Developer SignUp
    </h3>
    <div class="breadcrumb"> 
    <ul>
    <li> <a>Step1-Register Mobile Apps</a><span class="divider">/</span></li>
    <li><a href="#">Step2-Create Business Account</a><span class="divider">/</span></li>
    <li><a href="#">Step3-Add Users</a><span class="divider">/</span></li>
    <li class="active">Step4-Add Payment Method</li>
    </ul>
    </div>
    </div>--%>

    
    <div>
    <div class="box">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-add" ></i>Add Payment Method</h2>
	
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
                            <asp:Button ID="btnAdd" runat="server" Text="Add Payment Method" 
                            type="submit" class="btn btn-primary btn-round pull-right" onclick="btnAdd_Click" />
                            <%--<asp:Button ID="Button1" runat="server" Text="Previous" 
                            type="submit" class="btn btn-round pull-right" />--%>
            </div>

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
