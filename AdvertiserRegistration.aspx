<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertiserRegistration.aspx.cs" Inherits="AdvertiserRegistration" %>
<%@ Register src="UC/Header.ascx" tagname="Header" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adveriser Registration</title>
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
    <link href="css/smart_wizard.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>
    <script src="js/jquery.smartWizard.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            // Initialize Smart Wizard
            $('#wizard').smartWizard();
            //             function onFinishCallback(){
            //   $('#wizard').smartWizard('showMessage','Finish Clicked');
            //        //alert('Finish Clicked');
        }); 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center">
      <uc2:Header ID="Header1" runat="server" />
   <h2 class="center">Advertiser Signup</h2>

   <div id="wizard" class="swMain center">
  <ul>
    <li><a href="#step-1">
          <label class="stepNumber">1</label>
          <span class="stepDesc">
             Step 1<br />
             <small>Add New Business</small>
          </span>
      </a></li>
    <li><a href="#step-2">
          <label class="stepNumber">2</label>
          <span class="stepDesc">
             Step 2<br />
             <small>Add User</small>
          </span>
      </a></li>
    <li><a href="#step-3">
          <label class="stepNumber">3</label>
          <span class="stepDesc">
             Step 3<br />
             <small>Add Payment Method</small>
          </span>                   
       </a></li>
    
  </ul>
  <div id="step-1">   
      <h2 class="StepTitle">Add Business Account</h2>
       <!-- step content -->
        <fieldset>
     <div  class="control-group"> 
                                           
                            <asp:Label ID="lblBusinessname"  CssClass="control-label" for="txtBusinessName" runat="server">Business Entity Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtBusinessName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="Label5"  CssClass="control-label" for="txtAddress" runat="server">Address</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtAddress" CssClass="span6 typeahead"   Height="20px" 
                                        Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="Label6"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtcity" CssClass="span6 typeahead"   Height="20px" Width="219px" 
                                        runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="Label7"  CssClass="control-label" for="ddlStates" runat="server">State</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlStates" runat="server">
                                    </asp:DropDownList>
		                        </div>
            </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="Label8"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtZip" CssClass="span6 typeahead"   Height="20px" Width="150px" 
                                        runat="server"></asp:TextBox>
                 
		                        </div>
            </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="Label9"  CssClass="control-label" for="txtPhone" runat="server">Phone</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="phone" CssClass="span6 typeahead"   Height="20px" Width="219px" 
                                        runat="server"></asp:TextBox>
                 
		                        </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblWeb"  CssClass="control-label" for="txtWeb" runat="server">Web Address</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtWeb" CssClass="span6 typeahead"   Height="20px" Width="320px" runat="server"></asp:TextBox>
                 
		                        </div>
            </div>
            
            </fieldset>
         </div>
  <div id="step-2">
      <h2 class="StepTitle">Add User</h2> 
       <!-- step content -->
        <fieldset>
        <div  class="control-group"> 
        <asp:Label ID="Label10"  CssClass="control-label" for="txtFName" runat="server">First Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="fname" CssClass="span6 typeahead"   Height="23px" Width="219px" 
                                        runat="server"></asp:TextBox>
                 
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="Label11"  CssClass="control-label" for="txtLName" runat="server">Last Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="lname" CssClass="span6 typeahead"   Height="23px" Width="219px" 
                                        runat="server"></asp:TextBox>
                 
		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblEmail"  CssClass="control-label" for="txtEmail" runat="server">Email</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtEmail" CssClass="span6 typeahead"   Height="23px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblRoles"  CssClass="control-label" for="ddlRoles" runat="server">Roles</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlRoles" runat="server">
                                    </asp:DropDownList>
		                        </div>
            </div>
            
            </fieldset>
  </div>                      
  <div id="step-3">
      <h2 class="StepTitle">Payment Method</h2>   
       <!-- step content -->
     <fieldset>
                       <div  class="control-group"> 
                                           
                            <asp:Label ID="lblFName"  CssClass="control-label" for="txtFName" runat="server">First Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtFName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                                </div>
                      </div>
                     <div  class="control-group">       
                            <asp:Label ID="lblLName"  CssClass="control-label" for="txtLName" runat="server">Last Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtLName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		                        </div>
                      </div>

                       <div>
                       <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCompanyName"  CssClass="control-label" for="txtCompanyName" runat="server">Company Name(Optional)</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCompanyName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 
		   </div>
           </div>
           <div class="control-group">
            <em>
            <asp:Label ID="Label1"  CssClass="control-label" runat="server">Billing Address:</asp:Label>
			</em>
            </div>
             <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblStreet"  CssClass="control-label" for="txtStreet" runat="server">Street</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtStreet" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
             <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblSuite"  CssClass="control-label" for="txtSuite" runat="server">Suite</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtSuite" CssClass="span6 typeahead"   Height="20px" Width="100px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
              <div  class="control-group"> 
             			                 
                            <asp:Label ID="Labelo"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtpaycity" CssClass="span6 typeahead"   Height="20px" 
                                    Width="219px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
              <div  class="control-group"> 
             			                 
                            <asp:Label ID="Label2"  CssClass="control-label" for="txtState" runat="server">State</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtstate" CssClass="span6 typeahead"   Height="20px" Width="219px" 
                                    runat="server"></asp:TextBox>
		  
                       </div>
             </div>
             <div  class="control-group"> 
             			                 
                            <asp:Label ID="Label3"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtpayZip" CssClass="span6 typeahead"   Height="20px" 
                                    Width="100px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
             <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblPhone"  CssClass="control-label" for="txtPhone" runat="server">Phone</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtPhone" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
                  <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblCredit"  CssClass="control-label" for="txtCredit" runat="server">Credit Card Number</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtCredit" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
             <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblCreditType"  CssClass="control-label" for="ddlCreditType" runat="server">Credit Card Type</asp:Label>
						    <div class="controls">
                                <%--<asp:TextBox ID="TextBox1" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		  --%>
                            <asp:DropDownList ID="ddlCreditType" runat="server">
                            </asp:DropDownList>
                       </div>
             </div>
                           <%--  <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblExpDate"  CssClass="control-label" for="txtExpDate" runat="server">Credit Card Number</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtExpDate" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                       </div>        
                     
             </div>--%>
              <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblCCV"  CssClass="control-label" for="txtCCV" runat="server">CCV</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtCCV" CssClass="span6 typeahead"   Height="20px" Width="100px" runat="server"></asp:TextBox>
		  
                       </div>            
             </div>
              <div class="control-group">
             <em>
            <asp:Label ID="Label4"  CssClass="control-label" for="txtAdvertSpend" runat="server">Advertising Spend:</asp:Label>
			</em>
              <div class="controls">
                            <asp:TextBox ID="txtAdvertSpend" CssClass="span6 typeahead"  placeholder="$500.00"  Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
            </div>    
            </div>
              <p class="help-block">IMPORTANT NOTE:  A minimum of spend of $500.00 is required to place any advertisement through Montavo's ad network.</p>
              
            </fieldset>
    </div>
    </div>
    </div>
    <div class="row center">
        <asp:Button ID="Button1" style="margin-top:10px;" 
            CssClass="btn-round buttonNext btn-large center btn-success" runat="server" 
            Text="Get Registered!" onclick="Button1_Click" /> 
</div>
    </form>
</body>
</html>
