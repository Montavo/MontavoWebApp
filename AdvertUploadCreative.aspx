<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertUploadCreative.aspx.cs" Inherits="AdvertUploadCreative" %>
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
    <div>
      <div class="box span12">
					<div class="box-header well" data-original-title="">
			        <h2> <i class="icon-edit" ></i> Upload Creative</h2>
					</div>
     <div class="box-content">
     <fieldset>
     
      <div  class="control-group">  
       <asp:Label ID="lblcretive"  CssClass="control-label" for="upcreative" runat="server">Upload Creative</asp:Label>
								<div class="controls">
                                    <asp:FileUpload ID="upcreative" runat="server" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"  ControlToValidate="upcreative" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

      
      </div>
      </div>
      <div class="form-actions">
                            <asp:Button ID="btnAds" runat="server" Text="Proceed To Create Ads" 
                            type="submit" class="btn btn-round btn-info pull-right" />
                            <asp:Button ID="btnfinish" runat="server" Text="Finish" 
                            type="submit" class="btn btn-round  pull-right" />
      </div>
      </fieldset>
      </div>
      </div>


    </div>
    </form>
</body>
</html>
