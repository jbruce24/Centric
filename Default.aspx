<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" style="left: 0px; top: 0px; height: 415px">
                            <div class="item active" style="left: 0; top: 0px; width: 1125px; height: 398px">
                                <img src="img/logo3.jpg" style="width: 1125px; height: 415px; margin-left: 0px" />&nbsp;</div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/home-slider-bptw.jpg" alt="" style="width: 1125px; height: 415px; margin-left: 0px" />&nbsp;> 
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/Capture.JPG" alt="" style="width: 1125px; height: 415px; margin-left: 0px" />&nbsp;>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <h2 class="brand-before">
                        <small>Welcome to</small>
                    </h2>
                    <h1 class="brand-name">Centric Consulting</h1>
                    <hr class="tagline-divider">
                    <h2>
                        <small>By
                            M</small><span style="font-weight: bold"><small>is 4200</small></span><small>
                        </small>
                    </h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="box" style = "height:720px" >
                <div class="col-lg-12">
                    <div class="col-md-4">
            <h2>Twitter</h2>
            <p>
                <a class="twitter-timeline" href="https://twitter.com/centric" data-widget-id="707751014024273920">Tweets by @centric</a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

        </div>
            </div>
        </div>
        </div>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">centric&#39;s core values</h2>
                    <hr>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="img/CentricCoreValues1.jpg" style="width: 750px; height: 650px; text-align: center;" /></p>
                    <p>&nbsp;</p>
                </div>
            </div>
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
<<<<<<< HEAD
</div>
</div>
=======
>>>>>>> 139a879d5df27025f04e80b59bfdddac882e0b54
</asp:Content>
