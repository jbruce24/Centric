<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="box">
       
     <h2>Your Profile<%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            
        </asp:PlaceHolder>

    </div>

    <div class="row">
        <div class="col-md-12">
            
           <a href="Manage.aspx">Click here to change your password.</a>

        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="userID" DataSourceID="profile" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="twitter" HeaderText="twitter" SortExpression="twitter" />
                <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="profile" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [userID], [lastName], [firstName], [twitter], [HireDate], [title], [department], [region] FROM [CentricUsers]"></asp:SqlDataSource>
    </div>
       </div>

</asp:Content>
