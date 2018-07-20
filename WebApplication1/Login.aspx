<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>

   
                            <p class="hint-text" style="font-size:medium">Sign in with your Credentials</p>
						<div class="or-seperator"><b>:)</b></div>
        <div style="background-image: url(Images/image5.jpeg);height:auto;width:auto" >
            <br /><br /><br />
							<div class="form-group" >
								<%--<input type="text" class="form-control" placeholder="Username" required="required">--%>
                                <asp:TextBox runat="server" ID="txtUserName" placeholder="UserName" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUserName" Text="Please provide user name" ForeColor="White"></asp:RequiredFieldValidator>
                            </div>
							<div class="form-group" >
								<%--<input type="password" class="form-control" placeholder="Password" required="required">--%>
							<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPassword" Text="Please provide password" ForeColor="White"></asp:RequiredFieldValidator>
                            </div>
							<%--<input type="submit" class="btn btn-primary btn-block" value="Login" >--%>
       <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-block" BackColor="Green" ForeColor="White" Width="10%" OnClick="btnLogin_Click" />
		<br /><br /><br />
        </div>				
     </center>
</asp:Content>
