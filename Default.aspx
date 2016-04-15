<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        
        <div class="row">
            <div class="box">
            <div id="carousel-example-generic" class="carousel slide" style="left: 0px; top: 4px">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active" style="background-color:white; border-color:black"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1" style="background-color:#311B70; border-color:black"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2" style="background-color:yellow; border-color:black"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active" style="left: 9px; top: 4px">
                                <img class="img-responsive img-full" src="img/logo3.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/home-slider-bptw.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/Capture.jpg" alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next" style="right: 196%; top: 38600%"></span>
                        </a>
                    </div>
            </div>
        
        </div>

        <div class="row">
            <div class="box" >
                <div class="col-lg-12" style="left: 6px; top: -10px">
                    <div class="col-md-4">
            <h2 style="color: #311B70">Centric on Twitter</h2>
            <p>
                <a class="twitter-timeline" style="height:680px" href="https://twitter.com/j_bruce24" data-widget-id="707751014024273920">Tweets by @centric</a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

       
<a href="https://twitter.com/intent/tweet?screen_name=centric" style="float:right"  class="twitter-mention-button" data-size="large">Tweet to @centric</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                    </div>    
        </div>
        </div>
         <div class="row">
            <div class="box"  >
                <div class="col-lg-12">
                    <div class="col-md-4">
            <h2 style="color: #311B70">Centric On LinkedIn</h2>
            <p>
                

               <script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
                <script type="IN/JYMBII" data-companyid="11878" data-format="inline" style="align-content:inherit"></script>
            <script src="//platform.linkedin.com/in.js" type="text/javascript"> lang: en_US</script>
               <script type="IN/FollowCompany" data-id="11878" data-counter="top"></script>
                     </div>
                    <div>
                        <script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
<script type="IN/CompanyProfile" data-id="11878" data-format="inline"></script>
                    </div>
                    <div><script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
<script type="IN/CompanyInsider" data-id="11878"></script></div>
            </div>
         
        </div>
               <asp:TextBox runat="server" ID="txtUser" Visible="false"></asp:TextBox>
        </div>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                </div>
                <h2 style="color:#311B70">Leaderboard</h2>
                <br /><!--
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
                </asp:SqlDataSource> -->
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PagerSettings-Position="Top" style="margin-bottom: 0px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" ItemStyle-Width="100px" />
                        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" ItemStyle-Width="100px" />
                        <asp:BoundField DataField="points" HeaderText="Points" SortExpression="points" ItemStyle-Width="100px" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

<PagerSettings Position="Top"></PagerSettings>

                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CSUserData %>" SelectCommand="SELECT [firstName], [lastName], [points] FROM [CentricUsers] ORDER BY [points] DESC"></asp:SqlDataSource>
            </div>
        </div>
                <br />
                <div>
                
                    </div>
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>
    </div>
</asp:Content>
