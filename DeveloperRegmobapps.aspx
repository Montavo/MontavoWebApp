<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeveloperRegmobapps.aspx.cs" Inherits="DeveloperRegmobapps" %>
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
    <%--<div class="center span12">
    <h3>
    Montavo Developer SignUp
    </h3>
    <div class="breadcrumb"> 
    <ul>
    <li class="active">Step1-Register Mobile Apps<span class="divider">/</span></li>
    <li><a href="#">Step2-Create Business Account</a><span class="divider">/</span></li>
    <li><a href="#">Step3-Add Users</a><span class="divider">/</span></li>
    <li><a href="#">Step4-Add Payment Method</a></li>
    </ul>
    </div>
    </div>--%>
 
   
    <div class="box">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-add" ></i>Register Mobile Apps</h2>
	
					</div>
                    <div class="box-content">
           <fieldset>
    	  <div  class="control-group"> 
                                           
                            <asp:Label ID="lblAppname"  CssClass="control-label" for="txtAppname" runat="server">Application Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtAppname" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="txtAppname" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblAppurl"  CssClass="control-label" for="txtAppurl" runat="server">Application Store URL</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtAppurl" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator"  ControlToValidate="txtAppurl" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblplaystoreurl"  CssClass="control-label" for="txtplaystoreurl" runat="server">Play Store URL</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtplaystoreurl" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator"  ControlToValidate="txtplaystoreurl" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>

          <div  class="control-group"> 
                                           
                            <asp:Label ID="lblmarketurl"  CssClass="control-label" for="txtmarketurl" runat="server">Marketplace URL</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtmarketurl" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox> 
		              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validator"  ControlToValidate="txtmarketurl" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                      
                        </div>

         </div>
           <div class="control-group"> 
                                           
                            <asp:Label ID="lblddlcatfilters"  CssClass="control-label" for="lstcatfilters" runat="server" Text="Category Filters"></asp:Label>

								<div class="controls">
                                  <%--  <asp:DropDownList ID="ddlcatfilters" runat="server"></asp:DropDownList>
								--%>
                                    <asp:ListBox ID="lstcatfilters" runat="server"></asp:ListBox>
                                </div>
	     </div> 
             <div  class="control-group">                
                            <asp:Label ID="lblNotes"  CssClass="control-label" for="txtnotes" runat="server">Notes</asp:Label>
						    <div class="controls">
                             <asp:TextBox ID="txtnotes" CssClass="span6 typeahead" TextMode="MultiLine" Columns="50" Rows="5" runat="server"></asp:TextBox>
		     
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validator"  ControlToValidate="txtnotes" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

             </div>
         </div>
         
							 <div class="form-actions"> 
                            <asp:Button ID="btnAdd" runat="server" Text="Add App" 
                            type="submit" class="btn btn-primary btn-round pull-right" onclick="btnAdd_Click" />
                
                      <%-- <asp:Button ID="btnNext" runat="server" Text="Next" 
                            type="submit" class="btn btn-primary btn-round pull-right" />
                           </div>--%>
    </div>
    </fieldset>
    </div>
  
                <%-- <uc3:PHYSNotificationStatus ID="PHYSNotificationStatus2" runat="server" />--%>
				<%--<div class="box span12 sortable center">
              
					<div class="box-header well" data-original-title>
						<h2><%--<i class="icon32 icon-black icon-briefcase" style="position: relative;bottom: 9px;right: 6px;"></i>--%>
                     <%--  <asp:Label ID="Label1" runat="server" Text="Applications"></asp:Label> </h2>						
					</div>--%>
                    <%--<div class="box-content">
                    <fieldset>
            <asp:GridView ID="GridApps" runat="server" AutoGenerateColumns="False" 
            EnableModelValidation="True" CssClass="table table-striped table-bordered bootstrap-datatable datatable dataTable">
                <Columns>  
  
                <asp:BoundField HeaderText="Application Name" DataField="fldAppName" />
                <asp:BoundField HeaderText="Android Market URL" DataField="fldAppStoreUrl" />
                <asp:BoundField HeaderText="IOS Market URL" DataField="fldPlayStoreUrl" />
                <asp:BoundField HeaderText="Windows Market URL" DataField="fldmarketUrl" />
                <asp:BoundField HeaderText="Category Filters" DataField="fldCategory" />
                <asp:BoundField HeaderText="Notes" DataField="fldNotes" />
                </Columns>
                </asp:GridView>
                </fieldset>
                </div>--%>
     
               
                
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
