<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Account_Manage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="box">
       
     <h2>Your Profile<%: Title %>.</h2>
        <p>
            <table class="nav-justified" style="width: 39%">
                <tr>
                    <td>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="userID" DataSourceID="sdsImageUpload">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 293px">User ID:
                                <asp:Label ID="userIDLabel1" runat="server" Text='<%# Eval("userID") %>' />
                                <br />
                                First Name:
                                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                                <br />
                                Last Name:
                                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:TextBox ID="txtImageUrl" runat="server" Text='<%# Bind("ImageUrl") %>' Visible="False"></asp:TextBox>
                                <br />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" OnClick="UpdateButton_Click" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    User ID:
                    <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                    <br />
                    Last Name:
                    <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                    <br />
                    Last Name:
                    <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                    <br />
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                    <asp:TextBox ID="txtImageUrl" runat="server" Visible="False" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" OnClick="InsertButton_Click" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    <br />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("ImageUrl") %>' Width="232px" />
                    <br />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Visible="False" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" Visible="False" />
                </ItemTemplate>
            </asp:FormView>
                    </td>
                    <td>
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
                    </td>
                </tr>
            </table>
        </p>
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
        <p>
            <asp:SqlDataSource ID="sdsImageUpload" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" DeleteCommand="DELETE FROM [CentricUsers] WHERE [userID] = @userID" InsertCommand="INSERT INTO [CentricUsers] ([userID], [lastName], [firstName], [ImageUrl]) VALUES (@userID, @lastName, @firstName, @ImageUrl)" SelectCommand="SELECT [userID], [lastName], [firstName], [ImageUrl] FROM [CentricUsers]" UpdateCommand="UPDATE [CentricUsers] SET [lastName] = @lastName, [firstName] = @firstName, [ImageUrl] = @ImageUrl WHERE [userID] = @userID" ProviderName="<%$ ConnectionStrings:CSUserData.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="userID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="userID" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="ImageUrl" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="ImageUrl" Type="String" />
                    <asp:Parameter Name="userID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            
        </asp:PlaceHolder>

        </div>

    <div class="row">
        <div class="col-md-12" style="left: 17px; top: -10px; height: 21px">
            
           <a href="Manage.aspx">Click here to change your password.</a>       <div style="float:right">&nbsp;</div>
        <div style="float:inherit">
            <br />
                    <br />
            <br />
                    <br />
            <br />
                    <br />
            <br />
                    <br />
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
        </div>
</asp:Content>
