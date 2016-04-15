<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Account_Manage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

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
        <div style="float:right">&nbsp;</div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="userID" DataSourceID="profile" Height="50px" Width="125px" style="color:steelblue">
            <Fields>
                <asp:BoundField DataField="userID" HeaderText="User ID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="twitter" HeaderText="Twitter Handle" SortExpression="twitter" />
                <asp:BoundField DataField="HireDate" HeaderText="Hire Date" SortExpression="HireDate" />
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:BoundField DataField="region" HeaderText="Region" SortExpression="region" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <div style="float:inherit">
        <asp:Chart ID="Chart1" runat="server" DataSourceID="sqlLine" Visible="false">
            <Series>
                <asp:Series Name="Series1" ChartType="Line"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
            </div>
        <asp:SqlDataSource ID="sqlLine" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [excellence], [culture], [steward], [integrity], [innovate], [passion], [balanced] FROM [CentricUsers]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="profile" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [lastName], [userID], [firstName], [twitter], [HireDate], [title], [department], [region] FROM [CentricUsers]" DeleteCommand="DELETE FROM [CentricUsers] WHERE [userID] = @userID" InsertCommand="INSERT INTO [CentricUsers] ([lastName], [userID], [firstName], [twitter], [HireDate], [title], [department], [region]) VALUES (@lastName, @userID, @firstName, @twitter, @HireDate, @title, @department, @region)" UpdateCommand="UPDATE [CentricUsers] SET [lastName] = @lastName, [firstName] = @firstName, [twitter] = @twitter, [HireDate] = @HireDate, [title] = @title, [department] = @department, [region] = @region WHERE [userID] = @userID">
            <DeleteParameters>
                <asp:Parameter Name="userID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="userID" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="twitter" Type="String" />
                <asp:Parameter Name="HireDate" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="region" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="twitter" Type="String" />
                <asp:Parameter Name="HireDate" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="region" Type="String" />
                <asp:Parameter Name="userID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
       </div>
    <asp:Label runat="server" ID="time"></asp:Label>
    <asp:TextBox runat="server" ID="txtInvisible" Visible="false">
    </asp:TextBox>
</asp:Content>
