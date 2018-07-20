<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuyerRegistration.aspx.cs" Inherits="WebApplication1.BuyerRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div  class="row vertical-center-row" >
    <div class="col-md-8 col-md-offset-1">
       <legend style="font-size:40px">Buyer Registration</legend>
        <fieldset>

          <!-- Form Name -->
            
            

          <legend>Personal Information</legend>

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
                <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" class="form-control"></asp:TextBox>
             <%-- <input type="text" name="fistName" placeholder="First Name" class="form-control">--%>
            </div>
              <div class="col-sm-5">
                  <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" Text=" * Please Enter First name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" id="rexFirstName" controltovalidate="txtFirstName" Display="Dynamic" validationexpression="^[a-zA-Z'.\s]{1,20}" errormessage="First Name should be only Alphabets and maximum of 20 letters!" />
              </div>
           
           
          </div>
            <br />
            <div class="form-group">
                 <div class="col-sm-4">
                <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" class="form-control"></asp:TextBox>
              <%--<input type="text" name="lastName" placeholder="Last Name" class="form-control">--%>
            </div>
               <div class="col-sm-5">
                  <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" Text=" * Please Enter Last name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" id="rexLastName" controltovalidate="txtLastName" Display="Dynamic" validationexpression="^[a-zA-Z'.\s]{1,20}" errormessage="Last Name should be only Alphabets and maximum of 20 letters!" />
                  </div>
            </div>
            <br />
            <br />
         
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
               
                <asp:TextBox ID="txtDOB" runat="server" placeholder="Date Of Birth" class="form-control" TextMode="Date"></asp:TextBox>
              <%--<input type="date" placeholder="Date Of Birth" class="form-control">--%>
            </div>
              <div class="col-sm-5">
                  <asp:RequiredFieldValidator ID="refDOB" runat="server" ControlToValidate="txtDOB" Display="Dynamic" Text=" * Please Enter Date of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ErrorMessage="(mm/dd/yyyy)" Display="Dynamic" ID="valcDate" ControlToValidate="txtDOB" Operator="DataTypeCheck" Type="Date" runat="server"></asp:CompareValidator>       
                <asp:RangeValidator ID="valrDate" runat="server" ControlToValidate="txtDOB" MinimumValue="12/31/1950" MaximumValue="1/1/2100" Type="Date" text="Invalid Date" Display="Dynamic"/>
              </div>
          </div>

          <!-- Text input-->
          
          

<!-- Address Section -->
          <!-- Form Name -->
            <br />
            <br />
            
         
          <legend>User Details</legend>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
                <asp:TextBox ID="txtUserName" Text="" runat="server" placeholder="User Name" class="form-control"></asp:TextBox>
             <%-- <input type="text" name="pFistName" placeholder="User Name" class="form-control">--%>
            </div>
              <div class="col-sm-5">
                  <asp:RequiredFieldValidator ID="rfvUser" runat="server" Display="Dynamic" ControlToValidate="txtUserName" Text="* Please provide user name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" id="rexUserName"  Controltovalidate="txtUserName" Display="Dynamic" validationexpression="[A-Za-z0-9]{6,15}" errormessage="User Name should be Minimum 6 and Maximum 15 characters!" />
              </div>
             </div>
            <br />
            <br />
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox ID="txtPassword" Text="" TextMode="Password" runat="server" placeholder="Password" class="form-control"></asp:TextBox>
                    <%--<input type="text" name="pFistName" placeholder="Password" class="form-control">--%>
                </div>

                <div class="col-sm-5">
                  <asp:RequiredFieldValidator ID="rfvPwd" runat="server" Display="Dynamic" ControlToValidate="txtPassword" Text="* Please provide password" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="rexPassword" runat="server" Display="Dynamic" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character"  />

                </div>
            </div>

            
             <%-- <div class="col-sm-4"></div>--%>
         
          <br />
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox ID="txtPhoneNo"  runat="server"  placeholder="Phone No" class="form-control"></asp:TextBox>
                    <%--<input type="pPhoneNbr" placeholder="Phone Number" class="form-control">--%>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" Display="Dynamic" ControlToValidate="txtPhoneNo" Text="* Please provide PhoneNo" ForeColor="Red" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic"  ControlToValidate="txtPhoneNo" ErrorMessage="Phone No must be only 10 digits and should start with 6,7,8 or 9!" ValidationExpression="[6-9][0-9]{9}"></asp:RegularExpressionValidator>  
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
                    <%--<input type="email" name="pEmail" placeholder="Email" class="form-control">--%>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Text="* Please provide Email" ForeColor="Red" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rexEmail" Display="Dynamic" runat="server" ErrorMessage="Please Enter Valid Email ID " ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>
                </div>

            </div>
            
            <br />
            <br />
            <br />
            <br />
          <div class="form-group">
            <div class="col-sm-4 col-sm-offset-1">
              <div class="pull-right">
                  <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary" Text="Save" OnClick="btnSubmit_Click"/>
                   <asp:Button ID="btnCancel" runat="server" class="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"/>
                <%--<button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>--%>
              </div>
            </div>
          </div>
        </fieldset>
  
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
</asp:Content>
