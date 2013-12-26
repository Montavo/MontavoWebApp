<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertAddPayment.aspx.cs" Inherits="AdvertAddPayment" %>
<%@ Register src="UC/Header.ascx" tagname="Header" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap-cerulean.css" rel="stylesheet">
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
    <!-- jQuery -->
    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<%--<script type="text/javascript">
        function createcheckout() {
            alert('start');
            var response = WePay.credit_card.create({
                "client_id": "134060",
                "user_name": "Bob Smith",
                "email": "test@example.com",
                "cc_number": "5496198584584769",
                "cvv": "123",
                "expiration_month": "04",
                "expiration_year": "2015",
                "address":
		{
		    "address1": "test",
		    "city": "test",
		    "state": "CA",
		    "country": "US",
		    "zip": "94025"
		}
            }, function (data) {
                if (data.error) {
                    console.log(data);
                    // handle error response
                    alert("error");

                } else {
                    alert('hi');
                    console.log(data.credit_card_id);
                    PageMethods.MakeCheckout(data.credit_card_id);
                    //alert(obj.credit_card_id);
                    //alert("Stringft: " + JSON.stringify(data));
                    // var out = '';
                    //  for (var state in data) {
                    //     out += data[state];
                    // }
                    // alert("out: " + out);
                    // handle success (probably you will submit the form with the credit_card_id)
                }
            });

            if (response.error) {
                //alert("yes working");
                alert("Error");
                //console.log(response);
                // handle error response

            }
            else {
                //alert("yes working");
                //alert(response);
                
                //console.log(response);
                //alert(response.credit_card_id);
            }
            //            alert("error");
            return false;
        }

    </script>
--%>

</head>
<body>
    <form id="form1" class="form-horizontal" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <uc2:Header ID="Header1" runat="server" />
    <div>
         <div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-pencil"></i>Add Payment Method</h2>
					</div>
                    <div class="box-content">
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
             			                 
                            <asp:Label ID="lblCity"  CssClass="control-label" for="txtCity" runat="server">City</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtCity" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
              <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblState"  CssClass="control-label" for="txtState" runat="server">State</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtState" CssClass="span6 typeahead"   Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
                       </div>
             </div>
             <div  class="control-group"> 
             			                 
                            <asp:Label ID="lblZip"  CssClass="control-label" for="txtZip" runat="server">Zip Code</asp:Label>
						    <div class="controls">
                            <asp:TextBox ID="txtZip" CssClass="span6 typeahead"   Height="20px" Width="100px" runat="server"></asp:TextBox>
		  
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
            <asp:Label ID="Label2"  CssClass="control-label" for="txtAdvertSpend" runat="server">Advertising Spend:</asp:Label>
			</em>
              <div class="controls">
                            <asp:TextBox ID="txtAdvertSpend" CssClass="span6 typeahead"  placeholder="$500.00"  Height="20px" Width="219px" runat="server"></asp:TextBox>
		  
            </div>    
            </div>
              <p class="help-block">IMPORTANT NOTE:  A minimum of spend of $500.00 is required to place any advertisement through Montavo's ad network.</p>
              <div class="form-actions">
                           <%-- <asp:Button ID="btnPrevious" runat="server" Text="Previous" 
                            class="btn btn-round  pull-right" />--%>
                            <asp:Button ID="btnNext" runat="server" Text="Next" 
                            type="submit" class="btn btn-success btn-round pull-right" 
                                 onclick="btnNext_Click" 
                             />
            </div>
            </fieldset>
    </div>
    </div>
    </div>
   
    </form>
   
<!--<script type="text/javascript" src="https://stage.wepay.com/min/js/tokenization.v2.js">
    </script>
    <script type="text/javascript">
        WePay.set_endpoint("https://stage.wepayapi.com/v2/"); // change to "production" when live
    </script>
    -->
     <script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	
	<script src="js/charisma.js"></script>
    <script type="text/javascript" src="https://stage.wepay.com/min/js/tokenization.v2.js">
</script>
<script type="text/javascript">
    WePay.set_endpoint("stage"); // change to "production" when live
</script>
</body>
</html>
