<%@ Page Title="ProfilePage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ProfilePage.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      
    <div class="box">
               <p>Search for users by User ID and First or Last Name </p><asp:TextBox ID="userSearch" runat="server" style="color:#3B1770" ></asp:TextBox>
                &nbsp;
                <asp:Button ID="search" runat="server" Text="Search" style="color:black" OnClick="search_Click"/>
                <br />
                <asp:Label ID ="lblError" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT * FROM [CentricUsers]">
                </asp:SqlDataSource>
     
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="userID">
                   <Columns>
                       <asp:CommandField ShowSelectButton="True" />
                   </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
        <div style="height: 229px">
                <table class="nav-justified" visible="false">
                    <tr>
                        <td>
                <asp:DetailsView visible="False" ID="dvProf" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Groove" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="50px"  Width="125px" DataKeyNames="userID" DataSourceID="dvProfSQL" style="margin-bottom: 2px">
                    <AlternatingRowStyle Font-Bold="True" ForeColor="#311B70" />
                    <CommandRowStyle BorderColor="#311B70" />
                    <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="userID" HeaderText="User ID" ReadOnly="True" SortExpression="userID" />
                        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                        <asp:BoundField DataField="twitter" HeaderText="Twitter" SortExpression="twitter" />
                        <asp:BoundField DataField="HireDate" HeaderText="Hire Date" SortExpression="HireDate" />
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                        <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
                        <asp:BoundField DataField="region" HeaderText="Region" SortExpression="region" />
                        
                            
                                
                                 
                            
                        
                    </Fields>
                    <FooterStyle BackColor="#C6C3C6" BorderColor="Lime" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="Blue" ForeColor="#FFFF66" HorizontalAlign="Justify" />
                    <RowStyle BackColor="#FFFF66" BorderColor="#3333CC" ForeColor="Black" />
                </asp:DetailsView>

        

                        </td>
                        <td>

        

                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="userID" DataSourceID="coreValues" Height="50px" Width="125px">
                                <Fields>
                                    <asp:TemplateField HeaderText="excellence" SortExpression="excellence">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("excellence") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("excellence") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("excellence") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="culture" SortExpression="culture">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("culture") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("culture") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("culture") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="integrity" SortExpression="integrity">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("integrity") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("integrity") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("integrity") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="steward" SortExpression="steward">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("steward") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("steward") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("steward") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="innovate" SortExpression="innovate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("innovate") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("innovate") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("innovate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="passion" SortExpression="passion">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("passion") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("passion") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("passion") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="balanced" SortExpression="balanced">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("balanced") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("balanced") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("balanced") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" Visible="False" />
                                </Fields>
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="coreValues" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" DeleteCommand="DELETE FROM [CentricUsers] WHERE [userID] = @userID" InsertCommand="INSERT INTO [CentricUsers] ([excellence], [culture], [integrity], [steward], [innovate], [passion], [balanced], [userID]) VALUES (@excellence, @culture, @integrity, @steward, @innovate, @passion, @balanced, @userID)" SelectCommand="SELECT [excellence], [culture], [integrity], [steward], [innovate], [passion], [balanced], [userID] FROM [CentricUsers] WHERE ([userID] = @userID)" UpdateCommand="UPDATE [CentricUsers] SET [excellence] = @excellence, [culture] = @culture, [integrity] = @integrity, [steward] = @steward, [innovate] = @innovate, [passion] = @passion, [balanced] = @balanced WHERE [userID] = @userID">
                                <DeleteParameters>
                                    <asp:Parameter Name="userID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="excellence" Type="Int32" />
                                    <asp:Parameter Name="culture" Type="Int32" />
                                    <asp:Parameter Name="integrity" Type="Int32" />
                                    <asp:Parameter Name="steward" Type="Int32" />
                                    <asp:Parameter Name="innovate" Type="Int32" />
                                    <asp:Parameter Name="passion" Type="Int32" />
                                    <asp:Parameter Name="balanced" Type="Int32" />
                                    <asp:Parameter Name="userID" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="userID" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="excellence" Type="Int32" />
                                    <asp:Parameter Name="culture" Type="Int32" />
                                    <asp:Parameter Name="integrity" Type="Int32" />
                                    <asp:Parameter Name="steward" Type="Int32" />
                                    <asp:Parameter Name="innovate" Type="Int32" />
                                    <asp:Parameter Name="passion" Type="Int32" />
                                    <asp:Parameter Name="balanced" Type="Int32" />
                                    <asp:Parameter Name="userID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
        </div>
        

                <br />
                <div style="color:black">
                </div>
               <br />

        

                <asp:SqlDataSource ID="dvProfSQL" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT * FROM [CentricUsers]"></asp:SqlDataSource>
                <table class="nav-justified" style="color:black" visible="false">
                    <tr>
                        <td>
              <asp:Button ID="exc" runat="server" Text="Excellence" OnClick="exc_Click" Visible="false" /> 
                        </td>
                        <td> 
               <asp:Button ID="cult" runat="server" Text="Culture" OnClick="cult_Click" Visible="false" />
                        </td>
                        <td>
               <asp:Button ID="integ" runat="server" Text="Integrity" OnClick="integ_Click" Visible="false" />
                        </td>
                        <td>
               <asp:Button ID="steward" runat="server" Text="Stewardship" OnClick="steward_Click" Visible="false" />
                        </td>
                        <td>
               <asp:Button ID="innovate" runat="server" Text="Innovate" OnClick="innovate_Click" Visible="false"/>
                        </td>
                        <td>
               <asp:Button ID="passion" runat="server" Text="Passion" OnClick="passion_Click" Visible="false" />
                        </td>
                        <td>
               <asp:Button ID="balanced" runat="server" Text="Balanced" OnClick="balanced_Click" Visible="false" />
                        </td>
                    </tr>
               </table>
                <asp:SqlDataSource ID="gvSql" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT * FROM [CentricUsers]"></asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [region] FROM [Location] ORDER BY [region]">
                </asp:SqlDataSource>
                
               <table class="nav-justified" visible="false">
                   <tr>
                       <td style="width: 194px">Name</td>
                       <td class="modal-lg" style="width: 519px"><asp:TextBox runat="server" ID="commentName" style="color:black"></asp:TextBox></td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td style="width: 194px; height: 21px;">Email</td>
                       <td style="height: 21px; width: 519px;"><asp:TextBox runat="server" ID="commentEmail" style="color:black" ></asp:TextBox></td>
                       <td style="height: 21px"></td>
                   </tr>
                   <tr>
                       <td style="width: 194px; height: 46px;">Comment</td>
                       <td style="height: 46px; width: 519px;"><asp:TextBox runat="server" ID="comment" TextMode="MultiLine" style="color:black" ></asp:TextBox></td>
                       <td style="height: 46px"></td>
                   </tr>
                   <tr>
                       <td style="width: 194px">&nbsp;</td>
                       <td class="modal-lg" style="width: 519px">&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
               </table>
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [firstName], [lastName] FROM [CentricUsers]">
                </asp:SqlDataSource>
      
 </div>

    
</asp:Content>
