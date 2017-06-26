<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MemberCentre.aspx.cs" Inherits="MemberCentre" %>

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
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Button ID="btnwrite" runat="server" Text="填寫留言" Height="29px" OnClick="btnwrite_Click" />
                &nbsp;
                <asp:Button ID="btnlogin" runat="server" Height="29px" OnClick="btnlogin_Click" Text="登入管理" />
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" Text="留言板"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="gb_id" DataSourceID="SqlDataSource1" PageSize="3" ShowHeader="False">
                    <Columns>
                        <asp:TemplateField HeaderText="gb_id" InsertVisible="False" SortExpression="gb_id">
                            <EditItemTemplate>
                                &nbsp;<table border="0" width="100%">
                                    <tr>
                                        <td style="width: 18px; text-align: left" valign="top">&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gb_face", "face/{0}") %>' />
                                        </td>
                                        <td style="width: 442px; text-align: left" valign="top">姓名：<asp:Label ID="Label2" runat="server" Text='<%# Eval("gb_name") %>'></asp:Label>
                                            <br />
                                            信箱：<asp:Label ID="Label3" runat="server" Text='<%# Eval("gb_email") %>'></asp:Label>
                                            <br />
                                            主題：<asp:Label ID="Label4" runat="server" Text='<%# Eval("gb_title") %>'></asp:Label>
                                            <br />
                                            時間：<asp:Label ID="Label5" runat="server" Text='<%# Eval("gb_time") %>'></asp:Label>
                                            <br />
                                            內容：<asp:Label ID="Label6" runat="server" Text='<%# Eval("gb_content") %>'></asp:Label>
                                            <hr style="width: 129%" />
                                            回應：<asp:TextBox ID="TextBox1" runat="server" Height="83px" Text='<%# Bind("gb_reply") %>' TextMode="MultiLine" Width="329px"></asp:TextBox>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button3" runat="server" CommandName="Update" Text="送出回應資料" />
                                            <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="取消" />
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table border="0" width="100%">
                                    <tr>
                                        <td style="width: 18px; text-align: left" valign="top">&nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gb_face", "face/{0}") %>' />
                                        </td>
                                        <td style="width: 442px; text-align: left" valign="top">姓名：<asp:Label ID="Label9" runat="server" Text='<%# Eval("gb_name") %>'></asp:Label>
                                            <br />
                                            信箱：<asp:Label ID="Label10" runat="server" Text='<%# Eval("gb_email") %>'></asp:Label>
                                            <br />
                                            主題：<asp:Label ID="Label11" runat="server" Text='<%# Eval("gb_title") %>'></asp:Label>
                                            <br />
                                            時間：<asp:Label ID="Label12" runat="server" Text='<%# Eval("gb_time") %>'></asp:Label>
                                            <br />
                                            內容：<asp:Label ID="Label13" runat="server" Text='<%# Eval("gb_content") %>'></asp:Label>
                                            <hr style="width: 100%" />
                                            <br />
                                            回應：<asp:Label ID="Label7" runat="server" Text='<%# Eval("gb_reply") %>'></asp:Label>
                                            <br />
                                            <asp:LoginView ID="LoginView1" runat="server">
                                                <LoggedInTemplate>
                                                    <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="刪除" />
                                                    <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="回應" />
                                                </LoggedInTemplate>
                                            </asp:LoginView>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [gb_id] = @gb_id" InsertCommand="INSERT INTO [Table] ([gb_name], [gb_face], [gb_email], [gb_title], [gb_content], [gb_reply], [gb_time]) VALUES (@gb_name, @gb_face, @gb_email, @gb_title, @gb_content, @gb_reply, @gb_time)" SelectCommand="SELECT * FROM [Table] ORDER BY [gb_id] DESC" UpdateCommand="UPDATE [Table] SET [gb_name] = @gb_name, [gb_face] = @gb_face, [gb_email] = @gb_email, [gb_title] = @gb_title, [gb_content] = @gb_content, [gb_reply] = @gb_reply, [gb_time] = @gb_time WHERE [gb_id] = @gb_id">
                    <DeleteParameters>
                        <asp:Parameter Name="gb_id" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="gb_name" Type="String" />
                        <asp:Parameter Name="gb_face" Type="String" />
                        <asp:Parameter Name="gb_email" Type="String" />
                        <asp:Parameter Name="gb_title" Type="String" />
                        <asp:Parameter Name="gb_content" Type="String" />
                        <asp:Parameter Name="gb_reply" Type="String" />
                        <asp:Parameter Name="gb_time" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="gb_name" Type="String" />
                        <asp:Parameter Name="gb_face" Type="String" />
                        <asp:Parameter Name="gb_email" Type="String" />
                        <asp:Parameter Name="gb_title" Type="String" />
                        <asp:Parameter Name="gb_content" Type="String" />
                        <asp:Parameter Name="gb_reply" Type="String" />
                        <asp:Parameter Name="gb_time" Type="DateTime" />
                        <asp:Parameter Name="gb_id" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:View>
            <asp:View ID="View2" runat="server">
                管理員<br /> 
                <br />
                <asp:Label ID="Label1" runat="server" Text="帳號："></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="密碼："></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnOK" runat="server" Height="31px" OnClick="btnOK_Click" Text="登入" Width="59px" />
                <br />
                <br />
                <asp:Label ID="lblShow" runat="server"></asp:Label>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="gb_id" DataSourceID="SqlDataSource1" PageSize="3" ShowHeader="False">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="gb_id" InsertVisible="False" SortExpression="gb_id">
                            <EditItemTemplate>
                                &nbsp;<table border="0" width="100%">
                                    <tr>
                                        <td style="width: 18px; text-align: left" valign="top">&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl='<%# Bind("gb_face") %>' />
                                        </td>
                                        <td style="width: 442px; text-align: left" valign="top">姓名：<asp:Label ID="Label15" runat="server" Text='<%# Bind("gb_name") %>'></asp:Label>
                                            <br />
                                            信箱：<asp:Label ID="Label16" runat="server" Text='<%# Bind("gb_email") %>'></asp:Label>
                                            <br />
                                            主題：<asp:Label ID="Label17" runat="server" Text='<%# Bind("gb_title") %>'></asp:Label>
                                            <br />
                                            時間：<asp:Label ID="Label18" runat="server" Text='<%# Bind("gb_time") %>'></asp:Label>
                                            <br />
                                            內容：<asp:Label ID="Label19" runat="server" Text='<%# Bind("gb_content") %>'></asp:Label>
                                            <hr style="width: 129%" />
                                            回應：<asp:TextBox ID="TextBox4" runat="server" Height="83px" Text='<%# Bind("gb_reply") %>' TextMode="MultiLine" Width="329px"></asp:TextBox>
                                            <br />
                                            <br />
                                            
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table border="0" width="100%">
                                    <tr>
                                        <td style="width: 18px; text-align: left" valign="top">&nbsp;<asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("gb_face", "face/{0}") %>' />
                                        </td>
                                        <td style="width: 442px; text-align: left" valign="top">姓名：<asp:Label ID="Label20" runat="server" Text='<%# Eval("gb_name") %>'></asp:Label>
                                            <br />
                                            信箱：<asp:Label ID="Label21" runat="server" Text='<%# Eval("gb_email") %>'></asp:Label>
                                            <br />
                                            主題：<asp:Label ID="Label22" runat="server" Text='<%# Eval("gb_title") %>'></asp:Label>
                                            <br />
                                            時間：<asp:Label ID="Label23" runat="server" Text='<%# Eval("gb_time") %>'></asp:Label>
                                            <br />
                                            內容：<asp:Label ID="Label24" runat="server" Text='<%# Eval("gb_content") %>'></asp:Label>
                                            <hr style="width: 100%" />
                                            <br />
                                            回應：<asp:Label ID="Label25" runat="server" Text='<%# Eval("gb_reply") %>'></asp:Label>
                                            <br />
                                            <asp:LoginView ID="LoginView2" runat="server">
                                                <LoggedInTemplate>
                                                    <asp:Button ID="Button7" runat="server" CommandName="Delete" Text="刪除" />
                                                    <asp:Button ID="Button8" runat="server" CommandName="Edit" Text="回應" />
                                                </LoggedInTemplate>
                                            </asp:LoginView>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="btnLoginout" runat="server" Height="32px" OnClick="btnLoginout_Click" Text="登出" Width="68px" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>

