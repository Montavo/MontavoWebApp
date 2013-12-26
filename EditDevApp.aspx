<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditDevApp.aspx.cs" Inherits="EditDevApp" %>
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

       <div class="container">
    <div class="center span12">
    <h3>
    Edit Application Information
    </h3>
    
    </div>
 
   
    <div class="box">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-add" ></i>Edit Mobile Apps</h2>
	
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
                           <asp:Button ID="btnAdd" runat="server" Text="Edit App" 
                            type="submit" class="btn btn-primary btn-round pull-right" 
                                     onclick="btnAdd_Click"  />
                
                       
                           </div>
    </div>
    </fieldset>
    </div>
  
                <%-- <uc3:PHYSNotificationStatus ID="PHYSNotificationStatus2" runat="server" />--%>
				
               
                
    </div>
    </form>
</body>
</html>
