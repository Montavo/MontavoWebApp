<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CampaignPayInfo.aspx.cs" Inherits="CampaignPayInfo" %>
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
			        <h2> <i class="icon-add"></i> Add Campaign payment Info</h2>
					</div>
     <div class="box-content">
     <fieldset>
     <div  class="control-group">              
                 <asp:Label ID="lblBudget"  CssClass="control-label" for="txtBudget" runat="server">Campaign Budget</asp:Label>
		<div class="controls">
             <asp:TextBox ID="txtBudget" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validator"  ControlToValidate="txtBudget" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
		 </div>
      </div>
    <h4 style="padding-left:35px; padding-bottom:20px;">

    Credit Card Information
    </h4>

       <div  class="control-group">              
                 <asp:Label ID="Label1"  CssClass="control-label" for="ddlcard" runat="server">Choose a Card</asp:Label>
		<div class="controls">
            <asp:DropDownList ID="ddlcard" runat="server">
            </asp:DropDownList>
             </div>
      </div>
      <div  class="control-group">              
                 <asp:Label ID="Label2"  CssClass="control-label" for="ddlcardType" runat="server">Card Type</asp:Label>
		<div class="controls">
            <asp:DropDownList ID="ddlcardType" runat="server">
            </asp:DropDownList>
             </div>
      </div>
      <div  class="control-group">              
                 <asp:Label ID="Label3"  CssClass="control-label" for="txtCardNo" runat="server">Credit Card No</asp:Label>
		<div class="controls">
             <asp:TextBox ID="txtCardNo" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="txtCardNo" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
		 </div>
      </div>
        <div  class="control-group">              
                 <asp:Label ID="Label4"  CssClass="control-label" for="txtCCV" runat="server">CCV</asp:Label>
		<div class="controls">
             <asp:TextBox ID="txtCCV" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator"  ControlToValidate="txtCCV" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
		 </div>
      </div>
      <div  class="control-group">              
                 <asp:Label ID="Label5"  CssClass="control-label" for="ddlMonths" runat="server">Expiration Date</asp:Label>
		<div class="controls">
             
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2"  runat="server">
            </asp:DropDownList>
              </div>
      </div>
      <h4 style="padding-left:35px; padding-bottom:20px;">
            Billing Information
    </h4>
    <div  class="control-group"> 
                                           
                            <asp:Label ID="lblFName"  CssClass="control-label" for="txtFName" runat="server">First Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtFName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator"  ControlToValidate="txtFName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblLName"  CssClass="control-label" for="txtLName" runat="server">Last Name</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtLName" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validator"  ControlToValidate="txtLName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
		   </div>
           </div>
            <div  class="control-group"> 
                                           
                            <asp:Label ID="lblCity"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtCity" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="validator"  ControlToValidate="txtCity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
		   </div>
           </div>
           <div  class="control-group"> 
                                           
                 <asp:Label ID="lblState"  CssClass="control-label" for="txtState" runat="server">State</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtState" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="validator"  ControlToValidate="txtState" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

		                        </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="lblZip"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtZip" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="validator"  ControlToValidate="txtZip" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                                </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="Label6"  CssClass="control-label" for="txtPhone" runat="server">Phone No</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtPhone" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="validator"  ControlToValidate="txtPhone" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                                </div>
            </div>
             <div  class="control-group"> 
                                           
                            <asp:Label ID="Label7"  CssClass="control-label" for="txtEmail" runat="server">Email</asp:Label>
								<div class="controls">
                                <asp:TextBox ID="txtEmail" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="validator"  ControlToValidate="txtEmail" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
            </div>

            <div  class="control-group"> 
                                           
                            <asp:Label ID="Label8"  CssClass="control-label" for="ddlCountry" runat="server">Country</asp:Label>
								<div class="controls">
                                    <asp:DropDownList ID="ddlCountry" runat="server">
                                    </asp:DropDownList>
                                </div>
            </div>
            <div class="form-actions">
                            <asp:Button ID="btnProcedd" runat="server" Text="Proceed" 
                            type="submit" class="btn btn-round btn-primary pull-left" 
                                onclick="btnProcedd_Click"/>
                              <asp:Button ID="btnPrevious" runat="server" Text="Previous" 
                           class="btn btn-round  pull-right" />
                            <asp:Button ID="btnReview" runat="server" Text="Review" 
                           class="btn btn-round btn-info pull-right" />
            </div>
     </fieldset>
     </div>
     </div>
    </div>
    </form>
</body>
</html>
