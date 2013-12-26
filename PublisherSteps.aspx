<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PublisherSteps.aspx.cs" Inherits="PublisherSteps" %>
<%@ Register src="UC/Header.ascx" tagname="Header" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PUBLISHER REGISTRATION</title>

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
//            $('#wizard').smartWizard('showMessage','Finish Clicked');
//        //alert('Finish Clicked');
        }); 
    </script>

</head>
<body>
<div class="center">
    <form id="form1"  runat="server">
    <uc2:Header ID="Header1" runat="server" />
   <h2 class="center">Publisher Signup</h2>
    <div id="wizard" class="swMain row center">
  <ul>
    <li><a href="#step-1">
          <label class="stepNumber">1</label>
          <span class="stepDesc">
             Step 1<br />
             <small>Register Websites</small>
          </span>
      </a></li>
    <li><a href="#step-2">
          <label class="stepNumber">2</label>
          <span class="stepDesc">
             Step 2<br />
             <small>Add Business Account</small>
          </span>
      </a></li>
    <li><a href="#step-3">
          <label class="stepNumber">3</label>
          <span class="stepDesc">
             Step 3<br />
             <small>Add User</small>
          </span>                   
       </a></li>
    <li><a href="#step-4">
          <label class="stepNumber">4</label>
          <span class="stepDesc">
             Step 4<br />
             <small>Add Payment Method</small>
          </span>                   
      </a></li>
  </ul>
  <div id="step-1">   
      <h2 class="StepTitle">Register Website</h2>
       <!-- step content -->
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
<%--                           <div class="form-actions">
                            <asp:Button ID="btnAdd" runat="server" Text="Add Another Website" 
                            class="btn btn-primary btn-round pull-right" onclick="btnAdd_Click" />
                            <asp:Button ID="btnNext" runat="server" Text="Next" 
                            type="submit" class="btn  btn-round btn-primary pull-right" />
                            </div>   --%>
  </div>
  <div id="step-2">
      <h2 class="StepTitle">Add Business Account</h2> 
       <!-- step content -->
        <fieldset>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCompName"  CssClass="control-label" for="txtCompName" runat="server">Company Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCompName" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validator"  ControlToValidate="txtCompName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
    </div>
    </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblAddress"  CssClass="control-label" for="txtAddress" runat="server">Address</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtAddress" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validator"  ControlToValidate="txtAddress" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCity"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCity" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="validator"  ControlToValidate="txtCity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblState"  CssClass="control-label" for="txtState" runat="server">State</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtState" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="validator"  ControlToValidate="txtState" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		                        </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblZip"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtZip" CssClass="span6 typeahead"   Height="28px" Width="219px" runat="server"></asp:TextBox>
		                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="validator"  ControlToValidate="txtZip" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                                </div>
            </div>
            <%--<div class="form-actions"> 
                            <asp:Button ID="btnAdd" runat="server" Text="Next" 
                            type="submit" class="btn  btn-round btn-primary pull-right" onclick="btnAdd_Click" />
            </div>--%>
    </div>
    </fieldset>
  </div>                      
  <div id="step-3">
      <h2 class="StepTitle">Add User</h2>   
       <!-- step content -->
     <fieldset>
     <div  class="control-group"> 
                                           
                            <asp:Label ID="lblFName"  CssClass="control-label" for="txtFName" runat="server">First Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtFName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="validator"  ControlToValidate="txtFName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblLName"  CssClass="control-label" for="txtLName" runat="server">Last Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtLName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="validator"  ControlToValidate="txtLName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblEmail"  CssClass="control-label" for="txtEmail" runat="server">Email</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtEmail" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="validator"  ControlToValidate="txtEmail" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
           <div  class="control-group"> 
                                           
                            <asp:Label ID="lblRoles"  CssClass="control-label" for="ddlRoles" runat="server">Roles</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlRoles" runat="server">
                                    </asp:DropDownList>
		                        </div>
            </div>
            <%--<div class="form-actions">
                            <asp:Button ID="btnAdd" runat="server" Text="Next" 
                            type="submit" class="btn btn-round btn-primary pull-right" style="margin-right:3px;" 
                                onclick="btnAdd_Click" />
                            <asp:Button ID="btnPrevious" runat="server" Text="Previous" 
                            class="btn btn-round pull-right" />
     
         
       </div>--%>
        </fieldset>
    </div>
    
  
  <div id="step-4">
      <h2 class="StepTitle">Add Payment Method</h2>   
       <!-- step content -->     
       <fieldset>
     <div  class="control-group"> 
                                           
                            <asp:Label ID="Label1"  CssClass="control-label" for="txtFName" runat="server">First Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="TextBox1" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="validator"  ControlToValidate="txtFName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="Label2"  CssClass="control-label" for="txtLName" runat="server">Last Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="TextBox2" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator13" CssClass="validator"  ControlToValidate="txtLName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
    </div>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="Label3"  CssClass="control-label" for="txtEmail" runat="server">Email</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="TextBox3" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator14" CssClass="validator"  ControlToValidate="txtEmail" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
             <div  class="control-group">                
                            <asp:Label ID="Label4"  CssClass="control-label" for="txtnotes" runat="server">Notes</asp:Label>
						    <div class="controls">
                             <asp:TextBox ID="TextBox4" CssClass="span6 typeahead" TextMode="MultiLine" Columns="50" Rows="5" runat="server"></asp:TextBox>
		                      <asp:RequiredFieldValidator ID="RequiredFieldValidator15" CssClass="validator"  ControlToValidate="txtnotes" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

             </div>
         </div>
            <%--<div class="form-actions">
                            <asp:Button ID="btnAdd" runat="server" Text="Next" 
                            type="submit" class="btn btn-round btn-primary pull-right" onclick="btnAdd_Click" />
                            <asp:Button ID="Button1" runat="server" Text="Previous" 
                            type="submit" class="btn btn-round  pull-right" />
            </div>--%>

    
     </fieldset>                    
</div>
</div>
<div class="row">
        <asp:Button ID="Button1" style="margin-top:10px;" 
            CssClass="btn-round btn-large center btn-success" runat="server" 
            Text="Get Registered!" onclick="Button1_Click" /> 
</div>
</form>
</div>
</body>
</html>
