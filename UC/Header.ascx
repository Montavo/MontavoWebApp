<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Header.ascx.vb" Inherits="UC_Header" %>

<style> 
#a
{
    position: relative; 
    left: 700px; 
    top: 5px; 
} 
#b
{
margin-right:162px; 
margin-top: 12px;
} 
#c 
{ 
 width: 30px;
margin-top: 5px;
padding: 0px;
box-shadow: none;
background: lightblue; 

 }

#f 
{   
}
</style>


<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid"> 

				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
     
			<asp:LinkButton ID="lnkMDhipaa" runat="server" CssClass="brand" 
                    CausesValidation="False"> <img alt="Charisma Logo" src="img/logo20.png"> <span>Montavo</span>
     
               </asp:LinkButton>

     
                 
    
				<!-- user dropdown starts -->
				<div class="btn-group pull-right">
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i> 
                        <span class="hidden-phone"> <asp:Label ID="lblCitrixID" runat="server"></asp:Label></span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
                   <%-- <li><a href="~/logout.aspx">Logout</a></li>--%>
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<%--<li>
                    <asp:LinkButton ID="lnkLogout" runat="server" CausesValidation="False">LogOut</asp:LinkButton></li>
			--%>	 <li><a  href="logout.aspx">Logout</a></li>
            </ul>
				</div>
				<!-- user dropdown ends -->
                <div class="pull-right">
                 <a data-rel="tooltip" title="new messages." class="well span4 top-block" href="#" id="c">
		 <span class="icon32 icon-color icon-envelope-closed" id="f"></span>

		     <span class="notification red">
                   <asp:Literal ID="litUnreadMessageCount" runat="server"></asp:Literal>
                   </span>
	        </a>
            </div>
     
			</div>
		</div>
	</div>




 