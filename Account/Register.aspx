<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="row">
            <div class="box"  >
                <div class="col-lg-12">
    
     <h2 style="color:#311B70"><%: Title %></h2>
    
     <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4 style="color:#311B70">Create a new account.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" ForeColor="#311B70">User name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        </div>
        <!-- added -->

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label" ForeColor="#311B70">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="firstTxt" CssClass="col-md-2 control-label" ForeColor="#311B70">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="firstTxt" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="firstTxt"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="lastTxt" CssClass="col-md-2 control-label" ForeColor="#311B70">Last name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="lastTxt" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lastTxt"
                    CssClass="text-danger" ErrorMessage="The last name field is required." />
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="region" CssClass="col-md-2 control-label" ForeColor="#311B70">Location</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="region" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="region" DataValueField="region" ForeColor="#311B70"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [region] FROM [Location]"></asp:SqlDataSource>
               
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Title" CssClass="col-md-2 control-label" ForeColor="#311B70">Job Title</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="title" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="title"
                    CssClass="text-danger" ErrorMessage="The job title field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="HireDate" CssClass="col-md-2 control-label" ForeColor="#311B70">Hire Date(mm/dd/yyyy)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="HireDate" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="HireDate"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        <!--<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Twitter" CssClass="col-md-2 control-label" ForeColor="#311B70">Twitter Handle</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Twitter" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Twitter"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div> -->
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" ForeColor="#311B70">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label" ForeColor="#311B70">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
                <br />
                <asp:Label ID="lblOutput" runat="server" ForeColor="Red" Text=""></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <br />
            </div>
        </div>
    </div>
                    </div></div></div>
</asp:Content>

