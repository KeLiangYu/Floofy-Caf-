<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        #sidebar {
            width: 240px;
            float: left;
            padding: 40px;
            background: #32251b;
            color: #e1d2c7;
        }

        #content {
            width: 760px;
            margin: 0 0 0 355px;
            padding: 40px;
            background: #fff;
        }
    </style>
    <div id="sidebar">
        <h3>門市服務</h3>
        <p>
            
            服務項目</p>
        <p>
            
        </p>
        <p>
            
        </p>
    </div>
    <div id="content">
        <img alt="" src="images/service.jpg" style="width: 100%; height: 100%" />
        <img alt="" src="images/service_title.jpg" style="width: 100%; height: 100%" /><br />
        毛茸茸咖啡除了提供專業的飲品與美味餐點外，更有許多貼心的小服務。<br />
        提醒您，本店禁帶外食，每人最低消費為不限金額任一商品即可。
     
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="服務項目"></asp:Label>
        <br />
        <br />
        <h2 class="service_tit" style="margin: 0px; padding: 0px 0px 5px 15px; font-size: 15px; color: rgb(15, 52, 130); font-weight: normal; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255) url('http://www.harwanacoffee.com/../images/icon_01.jpg') no-repeat 0px 3px;">免費無限WiFi上網</h2>
        <p style="margin: 0px 0px 25px; padding: 0px 10px 0px 15px; line-height: 22px; letter-spacing: 0.3px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            毛茸茸咖啡館在全台指定門市提供了免費的無限WiFi上網服務，可隨時隨地無線飆網。<br />
            除了可以讓您悠閒地在館內享用美味的咖啡與餐點外，同時也可利用您的筆記型電腦或手機上網收發信件或瀏覽每日新聞，即時掌握最新市場脈動。<br />
            毛茸茸咖啡是您最方便、舒適的行動辦公室。(使用方式請洽各門市服務人員)</p>
        <h2 class="service_tit" style="margin: 0px; padding: 0px 0px 5px 15px; font-size: 15px; color: rgb(15, 52, 130); font-weight: normal; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255) url('http://www.harwanacoffee.com/../images/icon_01.jpg') no-repeat 0px 3px;">電源插座</h2>
        <p style="margin: 0px 0px 25px; padding: 0px 10px 0px 15px; line-height: 22px; letter-spacing: 0.3px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            您是否曾在享用咖啡的同時，面臨了筆記型電腦或手機沒電的窘境?<br />
            毛茸茸咖啡於各門市提供了免費的電源插座，讓您可更無憂無慮地使 用您所攜帶的3C產品。</p>
        <h2 class="service_tit" style="margin: 0px; padding: 0px 0px 5px 15px; font-size: 15px; color: rgb(15, 52, 130); font-weight: normal; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255) url('http://www.harwanacoffee.com/../images/icon_01.jpg') no-repeat 0px 3px;">包場服務</h2>
        <p style="margin: 0px 0px 25px; padding: 0px 10px 0px 15px; line-height: 22px; letter-spacing: 0.3px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            （詳情請洽VIP店長）<br />
            TEL：＊＊-＊＊＊＊-＊＊＊＊</p>
    </div>
</asp:Content>

