<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="coffee_list_album.aspx.cs" Inherits="coffee_list_album" %>

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
        <h3>會員中心
        </h3>
        <p>
            <a runat="server" href="MemberCentre.aspx">留言區</a>
        </p>
        <p>
            
        </p>
        <p><a runat="server" href="coffee_list_album.aspx">咖啡相簿</a></p>
    </div>
    <div id="content">
        <p>
            請選擇要上傳的照片<asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="上傳" />
        </p>
        <p>
            <asp:Label ID="lblErr" runat="server"></asp:Label>
        </p>
        <p>
            
        </p>
        <p>
            <asp:Label ID="lblShow" runat="server"></asp:Label>
        </p>
    </div>
</asp:Content>

