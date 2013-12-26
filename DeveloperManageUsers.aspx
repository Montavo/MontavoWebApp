﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="False" CodeFile="DeveloperManageUsers.aspx.cs" Inherits="DeveloperManageUsers" %>
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

    <div class="span12 center">
        <h3>
    Developer-Manage Users
    </h3>
    <div class="breadcrumb"> 
    <ul>
    <li><a href="DevManageApps.aspx">Manage Applications</a><span class="divider">|</span></li>
    <li class="active"><a>Manage Users</a><span class="divider">|</span></li>
    <li><a href="DevManagePaypal.aspx">Manage Payment Method</a><span class="divider">|</span></li>
          <li><a href="DeveloperManageBusiness.aspx">Manage Business Accounts</a></li>
    </ul>
    </div>
    </div>

    <div class="box span12 center">
              
					<div class="box-header well" data-original-title>
						<h2><%--<i class="icon32 icon-black icon-briefcase" style="position: relative;bottom: 9px;right: 6px;"></i>--%>
                         <i class="icon-edit" ></i> <asp:Label ID="Label1" runat="server" Text="Manage Users"></asp:Label> </h2>						
					</div>
                    <div class="box-content">
                    <fieldset>
            <asp:GridView ID="grdUsers" runat="server" AutoGenerateColumns="False" 
           EmptyDataText="No USers To Display" 
                            CssClass="table table-striped table-bordered bootstrap-datatable datatable dataTable" 
                            EnableViewState="True" OnRowCommand="grdUsers_RowCommand">
                <Columns>  
                <asp:BoundField HeaderText="User Name" DataField="fldUserFirstName" />
                <asp:BoundField HeaderText="Password" DataField="fldpassword" />
                <asp:BoundField HeaderText="Role" DataField="fldRoleName" />
                <%-- <asp:BoundField HeaderText="Notes" DataField="fldNotes" />--%>
                <%--<asp:BoundField HeaderText="Category Filters" DataField="fldCategory" />
                <asp:BoundField HeaderText="Notes" DataField="fldNotes" />--%>
                 <asp:TemplateField > 
                    <ItemTemplate>
                         
                         <asp:HyperLink ID="lnkEdit" Text="Edit User" CssClass="btn btn-primary" 
                        NavigateUrl='<%# "EditDeveloperUser.aspx?ID="+Eval("fldUserId") %>' 
                        Runat="server"></asp:HyperLink>

                        <asp:HyperLink ID="HyperLink1" Text="Delete User" CssClass="btn btn-danger" 
                        NavigateUrl='<%# "DevDeleteUser.aspx?ID="+Eval("fldUserId") %>' 
                        Runat="server"></asp:HyperLink>
                         
                        </ItemTemplate>
                     </asp:TemplateField>
                </Columns>
                </asp:GridView>
                </fieldset>
                <div class="span5 center">
                
                     <asp:HyperLink ID="lnkAdd" Text="Add User" CssClass="btn btn-primary btn-large"  
                        NavigateUrl="DevAddUsers.aspx"
                        Runat="server"></asp:HyperLink>
                    <asp:HyperLink ID="lnkback" Text="Back to Profile" CssClass="btn btn-warning btn-large"  
                        NavigateUrl="Developer Home.aspx"
                        Runat="server"></asp:HyperLink>  
                    
                </div>
                </div>
                </div>
    </div>
    </div>
    </form>

      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/dropdown-menu.min.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
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
    <script src="js/bootbox.min.js" type="text/javascript"></script>
</body>
</html>
