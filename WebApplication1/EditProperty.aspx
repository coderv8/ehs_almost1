<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProperty.aspx.cs" Inherits="WebApplication1.EditProperty" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <div class="container">
          
                <Legend>Edit Property</Legend>
        <br />
        <br />
                <div class="form-group">
                    <label for="txtPropName" class="col-sm-3 control-label">Property Name</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtPropName" runat="server" class="form-control" placeholder="Property Name"></asp:TextBox>
                        <%--<input type="text" id="firstName" placeholder="Full Name" class="form-control" autofocus>--%>
                        <%--<span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>--%>
                    </div>
                    <div class="col-sm-12">
                         <asp:RequiredFieldValidator ID="rfvPropName" runat="server" ControlToValidate="txtPropName" Display="Dynamic" Text=" * Please Enter Property name" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator runat="server" id="rexPropName" controltovalidate="txtPropName" Display="Dynamic" validationexpression="^[a-zA-Z'.\s]{1,20}" ForeColor="Red" errormessage="Property Name should be only Alphabets and maximum of 20 letters!" />
                    </div>
                </div>
                <br />
               <br />
                 <div class="form-group">
                    <label class="control-label col-sm-3">Property Type</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-2">
                                <label class="radio-inline">
                                    <asp:RadioButton GroupName="grpPropertyType" ID="rdbFlat" runat="server" Text="Flat" Checked="true" />
                                    <%--<input type="radio" id="femaleRadio" value="Female">Female--%>
                                </label>
                            </div>
                            <div class="col-sm-2">
                                <label class="radio-inline">
                                    <asp:RadioButton GroupName="grpPropertyType" ID="rdbOffice" runat="server" Text="Office"  />
                                   <%-- <input type="radio" id="maleRadio" value="Male">Male--%>
                                </label>
                            </div>
                            <div class="col-sm-2">
                                <label class="radio-inline">
                                    <asp:RadioButton GroupName="grpPropertyType" ID="rdbVilla" runat="server" Text="Villa"  />
                                    <%--<input type="radio" id="uncknownRadio" value="Unknown">Unknown--%>
                                </label>
                            </div>
                            
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <br />
           <br />
                <div class="form-group">
                    <label class="control-label col-sm-3">Property Option</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-2">
                                <label class="radio-inline">
                                    <asp:RadioButton GroupName="grpPropertyOption" ID="rdbSell" runat="server" Text="Sell" AutoPostBack="true"  OnCheckedChanged="rdbSell_CheckedChanged" />
                                    <%--<input type="radio" id="femaleRadio" value="Female">Female--%>
                                </label>
                            </div>
                            <div class="col-sm-2">
                                <label class="radio-inline">
                                    <asp:RadioButton GroupName="grpPropertyOption" ID="rdbRent" runat="server" Text="Rent" AutoPostBack="true" OnCheckedChanged="rdbRent_CheckedChanged1" />
                                   <%-- <input type="radio" id="maleRadio" value="Male">Male--%>
                                </label>
                            </div>
                            
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <br />
                <br />
                <div class="form-group">
                    <label for="txtAddress" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-3">
                        <asp:TextBox TextMode="MultiLine" ID="txtAddress" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                        <%--<input type="email" id="email" placeholder="Email" class="form-control">--%>
                    </div>
                    <div class="col-sm-12">
                  <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" Text=" * Please Enter Address" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" id="rexAddress" Controltovalidate="txtAddress" Display="Dynamic" validationexpression="[0-9a-zA-Z #,-]{1,50}" ForeColor="Red" errormessage="Address should be maximum of 50 letters!" />
              </div>
                </div>
                <br />   <br />
        <br />
                <div class="form-group">
                    <label for="txtLandMark" class="col-sm-3 control-label">LandMark</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtLandMark" runat="server" class="form-control" placeholder="Landmark"></asp:TextBox>
                        <%--<input type="password" id="password" placeholder="Password" class="form-control">--%>
                    </div>
                    <div class="col-sm-12">
                         <asp:RequiredFieldValidator ID="rfvLandMark" runat="server" ControlToValidate="txtLandMark" Display="Dynamic" Text=" * Please Enter LandMark" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator runat="server" id="rexLandMark" controltovalidate="txtLandMark" Display="Dynamic" validationexpression="^[a-zA-Z'.\s]{1,20}" ForeColor="Red" errormessage="LandMark should be only Alphabets and maximum of 20 letters!" />
                    </div>
                </div>
               <br />   <br />
                <div class="form-group">
                    <label for="ddlState" class="col-sm-3 control-label">State</label>
                    <div class="col-sm-3">
                <asp:DropDownList runat="server" Class="form-control" ID="ddlState"  placeholder="State" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"  ></asp:DropDownList>
            </div>
                </div>
                <br />   <br />
                <div class="form-group">
                    <label for="ddlCity" class="col-sm-3 control-label">City</label>
            <div class="col-sm-3">
                <asp:DropDownList runat="server" Class="form-control" ID="ddlCity"  placeholder="City" AutoPostBack="True"   > </asp:DropDownList>
              <%--<input type="text" name="state" placeholder="State" class="form-control">--%>
            </div>
                    </div>
                  <br />
                <br />
            <div class="form-group">
                    <label for="txtAddress" class="col-sm-3 control-label">Initial Deposit</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtInitialDeposit" Enabled="false" runat="server" class="form-control" placeholder="Initial Deposit"></asp:TextBox>
                        <%--<input type="email" id="email" placeholder="Email" class="form-control">--%>
                    </div>
                <div class="col-sm-12">
                    <asp:RequiredFieldValidator ID="rfvInitialDeposit" Enabled="true" runat="server" ControlToValidate="txtInitialDeposit" Display="Dynamic" Text=" * Please Enter Initial Deposit" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" id="rngInitialDeposit" Enabled="true" controltovalidate="txtInitialDeposit" type="Double" minimumvalue="5000" maximumvalue="10000" ForeColor="Red" errormessage="Initial Deposit should be between 5000 to 10000!" />
                </div>
            </div>
                <br />
        
            <div class="form-group">
                    <label for="txtPriceRange" class="col-sm-3 control-label">Price Range</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtPriceRange" TextMode="Number" runat="server" class="form-control" placeholder="Price Range"></asp:TextBox>
                        <%--<input type="email" id="email" placeholder="Email" class="form-control">--%>
                    </div>
                <div class="col-sm-12">
                    <asp:RequiredFieldValidator ID="rfvPriceRange" runat="server" ControlToValidate="txtPriceRange" Display="Dynamic" Text=" * Please Enter Initial Deposit" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" id="rngPriceRange" controltovalidate="txtPriceRange" type="Double" minimumvalue="10000" maximumvalue="100000" ForeColor="Red" errormessage="Price Range should be between 10000 to 100000!" />
                </div>
            </div>
        <br />
        <div class="form-group">
                    <label for="txtDesc" class="col-sm-3 control-label col-sm-offset-0" >Description</label>
                    <div class="col-sm-3">
                        <asp:TextBox TextMode="MultiLine" ID="txtDesc" runat="server" class="form-control" placeholder="Description"></asp:TextBox>
                        <%--<input type="email" id="email" placeholder="Email" class="form-control">--%>
                    </div>
                    <div class="col-sm-12">

                       <%-- <asp:RangeValidator ID="rvDesc" runat="server" Controltovalidate="txtDesc" Display="Dynamic" MinimumValue="1" MaximumValue="250" Type="String" errormessage="Description should be maximum of 250 letters!"></asp:RangeValidator> --%>
                       <%--<asp:RegularExpressionValidator runat="server" id="rexDescription" Controltovalidate="txtDesc" Display="Dynamic" validationexpression="[A-Za-z]" ForeColor="Red" errormessage="Description should be maximum of 250 letters!" />--%>
                    </div>
                </div>
                <br />
           <br />   <br />   
                <div class="form-group">
                    <div class="col-sm-2 col-sm-offset-1">
                        <asp:Button ID="btnRegister" class="btn btn-primary btn-block" runat="server" Text="Update" OnClick="btnRegister_Click" />
                        
                       <%-- <button type="submit" class="btn btn-primary btn-block">Register</button>--%>
                    </div>
                <div class="col-sm-2 col-sm-offset-0">
                        <asp:Button ID="btnCancel" class="btn btn-primary btn-block" runat="server" BackColor="Gray" Text="Cancel" OnClick="btnCancel_Click" />
                </div>
                </div>
     
        </div> <!-- ./container -->
</asp:Content>
