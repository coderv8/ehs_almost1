<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
 
        <script type="text/javascript">
	// Prevent dropdown menu from closing when click inside the form
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});
</script>
   <style> 
       .row{
           background-image:url(Images/image5.jpeg);
       }     
       .float-left{
           background-image:url(Images/image1.jpg);
       }
       .float-right{
           background-image:url(Images/image2.jpg);
       }
       .float-center{
           background-image:url(Images/image3.jpg);
       }
   </style>

    <span style="padding-left:450px;color:darkblue;font-family:'Century Gothic';font-weight:bold;font-size:30px">EHS Simplify Lives</span>

    <div class="row"  style="padding-left: 400px; background-image: url(Images/image5.jpeg);">
        
        <br />
        <asp:DropDownList runat="server" CssClass="form-control"  ID="Type" Width="50%" Height="40px" >
            <asp:ListItem runat="server" Text="Buy" ></asp:ListItem>
             <asp:ListItem runat="server" Text="Rent"></asp:ListItem>
           
        </asp:DropDownList>
         &nbsp;&nbsp;
           <asp:DropDownList runat="server" CssClass="form-control" ID="ddlState" Width="50%" Height="40px" AutoPostBack="True"  OnSelectedIndexChanged="ddlState_SelectedIndexChanged" >

        </asp:DropDownList>
        
              &nbsp;&nbsp;
           <asp:DropDownList runat="server" CssClass="form-control" ID="ddlCity" Width="50%" Height="40px" AutoPostBack="True"  >
          
           
        </asp:DropDownList>


          <br />

        <asp:Button runat="server" ID="submit"  Text="Search" ForeColor="White" BackColor="Green" class="btn btn-default"  Width="50%" Height="40px" OnClick="submit_Click" />
        <br /><br />
        </div>
    
    <div style="width:100%;height:300px">
          <span style="padding-left:100px;padding-top:20px;color:darkblue;font-family:'Century Gothic';font-weight:bold;font-size:50px">Give Yourself The Edge &
               View Relevant Properties </span><br /> <span style="padding-left:200px;padding-bottom:100px;color:darkblue;font-family:'Century Gothic';font-weight:bold;font-size:40px">As Soon As They Come On The Market</span>
    </div>
    
  <p>Some Of Our Customer's Properties</p>
     
 <img  src="Images/image1.jpg"  class="float-left" alt="image1" width="378" height="236" />       
  <img src="Images/image2.jpg"  class="float-right" alt="image2" width="378" height="236" /> 
         <img src="Images/image3.jpg"  class="float-center" alt="image3" width="380" height="236" />                   
        

       
   
    
</asp:Content>
