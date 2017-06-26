<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        #sidebar {
            width: 240px;
            float: left;
            padding: 45px;
            background: #32251b;
            color: #e1d2c7;
        }

        #content {
            width: 760px;
            margin: 0 0 0 355px;
            padding: 40px;
            background: #fff;
        }
        .auto-style1 {
            width: 123px;
            height: 28px;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
    <div id="sidebar">
        <h3>最新消息
        </h3>
        <p>
            最新活動
        </p>
        <p>
            門市消息
        </p>
        <p>
            公告
        </p>
    </div>
    <div id="content">
        <img alt="" src="images/event_news.jpg" style="width: 100%; height: 80px" />

        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="NewView" runat="server">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登入管理" />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="News_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowHeader="False" Width="75%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="News_Data" DataFormatString="{0:yyyy-MM-dd}" HeaderText="News_Data" SortExpression="News_Data" />
                        <asp:BoundField DataField="News_Subject" HeaderText="News_Subject" SortExpression="News_Subject" />
                        <asp:BoundField DataField="News_Content" HeaderText="News_Content" SortExpression="News_Content" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [NewsData] WHERE [News_ID] = @News_ID" InsertCommand="INSERT INTO [NewsData] ([News_Data], [News_Subject], [News_Content]) VALUES (@News_Data, @News_Subject, @News_Content)" SelectCommand="SELECT * FROM [NewsData] ORDER BY [News_ID] DESC" UpdateCommand="UPDATE [NewsData] SET [News_Data] = @News_Data, [News_Subject] = @News_Subject, [News_Content] = @News_Content WHERE [News_ID] = @News_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="News_ID" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="News_Data" DbType="Date" Name="News_Data" PropertyName="Text" />
                        <asp:ControlParameter ControlID="News_Subject" Name="News_Subject" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="News_Content" Name="News_Content" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="News_Data" />
                        <asp:Parameter Name="News_Subject" Type="String" />
                        <asp:Parameter Name="News_Content" Type="String" />
                        <asp:Parameter Name="News_ID" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:View>
            <asp:View ID="LoginView" runat="server">
                管理員<br /> 
                <br />
                <asp:Label ID="Label1" runat="server" Text="帳號："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="密碼："></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnOK" runat="server" Height="31px" OnClick="btnOK_Click" Text="登入" Width="59px" />
                <br />
                <br />
                <asp:Label ID="lblShow" runat="server"></asp:Label>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="News_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowHeader="False" Width="75%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="News_Data" DataFormatString="{0:yyyy-MM-dd}" HeaderText="News_Data" SortExpression="News_Data" />
                        <asp:BoundField DataField="News_Subject" HeaderText="News_Subject" SortExpression="News_Subject" />
                        <asp:BoundField DataField="News_Content" HeaderText="News_Content" SortExpression="News_Content" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br />
                <asp:Button ID="btnnew" runat="server" Height="32px" OnClick="btnnew_Click" Text="新增" Width="68px" />
                &nbsp;
                <asp:Button ID="btnLoginout" runat="server" Height="32px" OnClick="btnLoginout_Click" Text="登出" Width="68px" />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <table border="0" cellpadding="2" cellspacing="2" width="100%">
                    <tr>
                        <td align="right" style="width: 123px">新增最新消息</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 123px">日期：</td>
                        <td>
                            <asp:TextBox ID="News_Data" runat="server" Width="143px" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 123px">主題：</td>
                        <td>
                            <asp:TextBox ID="News_Subject" runat="server" Width="143px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="auto-style1">內容： </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="News_Content" runat="server" Width="143px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="送出" Width="77px" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <br />
        </asp:MultiView>

    </div>
</asp:Content>

