<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellerHome.aspx.cs" Inherits="WebApplication1.SellerHome" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <meta charset="utf-8">
     <style>
#box {
    max-width: 60em;
    height: 25em;
    padding: 8.5em;
    margin: 0em;
   border: 0.062em solid #999;
    background-color: #fff;
    overflow: auto;
    direction: ltr;
    text-align: left;
}



.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.3);
    transition: 0.3s;
    width: 50%;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.card-body {
    padding: 8px 20px;
    width:552px;
}

  </style>

  <div>
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="text-align: center"><Legend>Seller</Legend>
            </td>
        </tr>
        <tr>
            <td style="width: 20%;vertical-align: top;">
                
                <div class="form-group">
                    <asp:Button ID="btnVerifiedProp" Text="Verified" runat="server" ForeColor="White" Class = "btn btn-info" Width="50%" Height="40px" OnClick="btnVerifiedProp_Click" />
                </div>
                <div class="form-group">
                     <asp:Button ID="btnDeactivatedProp" Text="Deactivated" runat="server" ForeColor="White" Class = "btn btn-info" Width="50%" Height="40px" OnClick="btnDeactivatedProp_Click"/>
                </div>

                <div class="form-group">
                     <asp:Button ID="btnAllProp" runat="server" Text="Show All" ForeColor="White"   Class = "btn btn-info" Width="50%" Height="40px" OnClick="btnAllProp_Click1" />
                </div>

                <div class="form-group">
                    <asp:Button ID="btnAddProp" runat="server" Text="Add Property"  ForeColor="White" BackColor="Green"  Class = "btn btn-info" Width="50%" Height="40px" OnClick="btnAddProp_Click" />
                </div>
                <%--<div class="form-group">
                    <asp:HyperLink ID="hlEdit" Text="Edit property" runat="server" NavigateUrl="~/EditProperty.aspx"></asp:HyperLink>
                </div>--%>
            </td>

            <td style="width: 80%; vertical-align: top">
                <%--<asp:ContentPlaceHolder ID="cphLnDBody" runat="server"></asp:ContentPlaceHolder>--%>
               <div id="box">
                  
                    <div class="container">
  
 
  <div class="card" id="imgdiv" style="width:552px">
    
    <div class="card-body" id="bodydiv" runat="server">   
    </div>
  </div>
  <br>
  </div>
              </div>
                   
            </td>
        </tr>
    </table></div>
</asp:Content>
