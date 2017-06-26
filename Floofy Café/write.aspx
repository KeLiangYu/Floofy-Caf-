<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="write.aspx.cs" Inherits="write" %>

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
        <h3>編寫留言
        </h3>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
    </div>
    <div id="content">
        <td height="24" background="images/bg2.gif" valign="middle">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="67%" style="height: 16px">&nbsp;</td>
                    <td width="33%" style="height: 16px">
                        <table width="200" border="0" align="right" cellpadding="0" cellspacing="0">
                            <tr>
                                <td align="center" style="height: 16px; text-align: right;">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="MemberCentre.aspx">留言首頁</asp:HyperLink></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        </TR>
</TABLE>
        <table align="center" border="0" cellpadding="0" cellspacing="0" class="title" width="618">
            <tr>
                <td style="height: 27px" width="618">
                    <table width="100%" border="0" cellspacing="2" cellpadding="2">
                        <tr>
                            <td align="right" style="width: 123px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 123px">姓名：</td>
                            <td>&nbsp;<asp:TextBox ID="gb_name" runat="server" Width="78px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 123px">信箱：</td>
                            <td>&nbsp;<asp:TextBox ID="gb_email" runat="server" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 123px">頭像：</td>
                            <td>&nbsp;<asp:DropDownList ID="gb_face" runat="server">
                                <asp:ListItem Selected="True" Value="boy.png">男孩</asp:ListItem>
                                <asp:ListItem Value="girl.jpg">女孩</asp:ListItem>
                            </asp:DropDownList></td>
                        </tr>

                        <tr>
                            <td align="right" style="width: 123px">主題：</td>
                            <td>&nbsp;<asp:TextBox ID="gb_title" runat="server" Width="247px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 123px">內容： </td>
                            <td>&nbsp;<asp:TextBox ID="gb_content" runat="server" Height="96px" TextMode="MultiLine"
                                Width="247px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="Button1" runat="server"
                                    Text="送出留言" OnClick="Button1_Click" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]" InsertCommand="INSERT INTO [Table] (gb_name, gb_face, gb_email, gb_title, gb_content) VALUES (@gb_name, @gb_face, @gb_email, @gb_title, @gb_content)">
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="gb_name" Name="gb_name" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="gb_face" Name="gb_face" PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="gb_email" Name="gb_email" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="gb_title" Name="gb_title" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="gb_content" Name="gb_content" PropertyName="Text" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="618" border="0" align="center" cellpadding="0" cellspacing="0" class="title" background="images/bg2.gif">
            <tr>
                <td height="27" style="text-align: center">歡迎使用留言薄</td>
    </div>
</asp:Content>

