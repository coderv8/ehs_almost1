<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowCartOfBuyer.aspx.cs" Inherits="WebApplication1.ShowCartOfBuyer" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <meta charset="utf-8">
  
   

   
     <style>
#box {
    max-width: 60em;
    height: 24em;
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
        <table style="width:100%">
      
        <tr>
            <td style="width:20%;vertical-align:top;">
              
            </td>
            <td style="width:80%;vertical-align:top">
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
    </table>
            </div>


</asp:Content>
