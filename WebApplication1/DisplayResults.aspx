<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayResults.aspx.cs" Inherits="WebApplication1.DisplayResults" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <style>
        #box {
            max-width: 60em;
            height: 29em;
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
                <td colspan="2" style="text-align: center"></td>
            </tr>
            <tr>
                <td style="width: 20%; vertical-align: top;">
                    <div class="form-group">
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlState" Width="50%" Height="40px" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlCity" Width="50%" Height="40px"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnSearchByRegion" Text="Search" ForeColor="White" Class = "btn btn-info" Width="50%" Height="40px" OnClick="btnSearchByRegion_Click" />
                    </div>

                    <div class="form-group"> 
                        <asp:TextBox placeholder="MinRange" Text="0"   Width="50%" Height="40px" TextMode="Number" ID="txtMinRange" runat="server" CssClass="form-control"></asp:TextBox>
                   <%-- <asp:RequiredFieldValidator ID="rfvMin" Enabled="true" runat="server" ControlToValidate="txtMinRange" ForeColor="Red" Text="Enter Min price"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="form-group">
                        <asp:TextBox placeholder="MaxRange" Text="50000" Width="50%" Height="40px" TextMode="Number" ID="txtMaxRange" runat="server" CssClass="form-control"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="rfvMax" Enabled="true" runat="server" ControlToValidate="txtMaxRange" ForeColor="Red" Text="Enter Max price"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnSearchByPrice" Text="Search" ForeColor="White" Class = "btn btn-info" Width="50%" Height="40px" OnClick="btnSearchByPrice_Click" />
                    </div>

                </td>
                <td style="width: 80%; vertical-align: top">
                    

                    <div id="box">

                        <div class="container">


                            <div class="card" id="imgdiv" style="width: 552px">
                                  <div runat="server" id="divalert" height="30px" width="200px" visible="false" class="alert alert-success alert-dismissible" role="alert">
       <asp:Label runat="server" ID="lblalert" ></asp:Label>
             <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
            
    </div>
                                <div class="card-body" id="bodydiv" runat="server">
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>

                </td>
            </tr>
        </table>
    </div>

</asp:Content>
