<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
        <h3>簡介</h3>
        <p>
            
            聯絡我們
            
        </p>
        <p>
            
            夥伴招募</p>
        <p>
            
        </p>
    </div>
    <div id="content">
        <asp:Label ID="Label1" runat="server" Text="簡介" Font-Size="XX-Large"></asp:Label><br />
        我們一直有一個夢，夢想有一天走在台北的街頭到處可以看到怡客咖啡店的足跡，裡面坐著愉快心情的顧客，品嚐著我們精心提供的服務。如今這個夢想逐漸地在實現，雖然距離理想仍然遙遠，但我們將堅持著對經營咖啡連鎖店的熱情，不斷的向前拓展，以滿足顧客的要求為第一優先，以成為有最好的口碑的咖啡店為職志。<br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="聯絡我們 " Font-Size="XX-Large"></asp:Label>
        <br />
        毛茸茸咖啡聯絡資料如下：<br />
        <br />
        店址：地球上<br />
        電話：04-2***-****<br />
        營業時間：Never<br />
        email：klw19960615@yahoo.com.tw<br />
        <br />
        如果您有活動洽辦、場地租用的需要，<br />
        請於營業時間來電洽談如果打得通的話，或將需求 email 給我們。 
    <br />
        我們很樂於協助推廣有關於藝術人文、公益議題、地方社群、<br />
        社區營造…等相關活動或展演，<br />
        如果有需要毛茸茸咖啡參與的地方，歡迎您告訴我們！ 
     
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="夥伴招募" Font-Size="XX-Large"></asp:Label>
        <br />
        歡迎各位對咖啡工作有興趣的朋友加入我們!
        <br />
        <br />
        招募地點: 地球上<br />
        招募項目: 服務生 正職/兼職<br />
        人員資格: 滿18歲以上(應屆高中(職)畢業生可)
        <br />
        <br />
        我們希望前來應徵的各位都是抱持著認真負責的心態，能與我們一同​＊＊服務，因此只是試試的想法或是打算短期上班者是不被允許的 
        <br />
        <br />
        意者請mail完整履歷至 klw19960615@yahoo.com.tw<br />
        <br />
        履歷為以下內容:
        <br />
        毛茸茸咖啡履歷表<br />
        姓名 
        <br />
        出生年月日 
        <br />
        電話 
        <br />
        地址 
        <br />
        身高 體重 
        <br />
        學歷 語文能力 工作經歷<br />
        興趣 
        <br />
        其他(請將認為對於此工作有幫助的技能寫填入)
        <br />
        自我介紹 (需要附上至少全身 半身各一的應徵者照片!)</div>
</asp:Content>

