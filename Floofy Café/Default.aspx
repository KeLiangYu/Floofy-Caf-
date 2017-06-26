<%@ Page Title="Floofy Café" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <link href="css/slider.css" rel="stylesheet" type="text/css" />

        <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <div class="jumbotron">
        <div id="slider">
            <figure>
                <img src="images/homewallpaper_1.jpg" />
                <img src="images/homewallpaper_2.jpg" />
                <img src="images/homewallpaper_3.jpg" />
                <img src="images/homewallpaper_4.jpg" />
                <img src="images/homewallpaper_5.jpg" />
            </figure>
        </div>
    </div>

    <div class="row"  style="padding: 30px; margin-bottom: 30px; font-size: 21px; font-weight: 200; line-height: 2.1428571435; color: inherit; background-color: #eeeeee;">
        <div class="col-md-4">
            <h2>新聞訊息</h2>
            <p>
                身為網頁工程師我學會的 8 件事
            </p>
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/web_engineer.jpg" OnClick="ImageButton1_Click1" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>最新活動</h2>
            <p>
                
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/8bb821dd8f37617597698bf4d3a06c20.jpg" />
                
            </p>
            <p>
                
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/eba878380f2a039382c0ab41accca89f.jpg" />
                
            </p>
        </div>
        <div class="col-md-4">
            <h2>facebook官方粉絲團</h2>
            <div id="fb-root"></div>
            <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.5";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
            <div class="fb-page" data-href="https://www.facebook.com/%E9%BB%91%E5%85%94-463344430493814/?ref=hl" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-width="300"></div>
        </div>
    </div>
    </div>
</asp:Content>
