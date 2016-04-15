<%@ Page Title="ProfilePage" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="box">
                <div class="col-lg-12">
                </div>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="userID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" />
                        <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                        <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                        <asp:BoundField DataField="twitter" HeaderText="twitter" SortExpression="twitter" />
                        <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                        <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                       
                        
                        <asp:BoundField DataField="points" HeaderText="points" SortExpression="points" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="addBtn" runat="server" CausesValidation="false" CommandName="" OnClick="LinkButton1_Click" Text="Add Points"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT * FROM [CentricUsers]">
                </asp:SqlDataSource>
            </div>

</asp:Content>

