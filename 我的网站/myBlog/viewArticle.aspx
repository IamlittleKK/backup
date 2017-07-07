<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewArticle.aspx.cs" Inherits="viewArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 137px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [articles] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [review] WHERE ([aid] = @aid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="aid" QueryStringField="aid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <!--显示文章内容列表模板代码-->
                <table>
                    <!--显示文章标题-->
                    <tr>
                        <td>
                            <div align="center"><strong><%#Eval("title") %>></strong></div>
                        </td>
                    </tr>
                    <!--显示文章属性-->
                    <tr>
                        <td>
                            <div align="center">
                                关键词: <%# Eval("keyWords") %>>
                                发布日期: <%# Eval("pushTime") %>>
                                单机次数: <%# Eval("clockCount") %>>
                            </div>
                        </td>
                    </tr>
                    <!--显示文章内容-->
                    <tr>
                        <td><%#Eval("content") %>></td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    
        <asp:DataList ID="DataList2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="rid" DataSourceID="SqlDataSource2" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <HeaderTemplate>评论列表</HeaderTemplate>
            <ItemTemplate>
                <table width="592" border="0" align="center"> 
                    <!--显示评论标题-->
                    <tr>
                        <td>
                            <%#Eval("remen") %>(<%#Eval("reip") %>)发布评论
                            <%#Eval("retitle") %>
                        </td>
                    </tr>
                    <!--显示评论内容-->
                    <tr >
                        <td>
                            <%#Eval("recontent") %>
                        </td>
                    </tr>
                    <!--显示主人回复信息-->
                    <tr>
                        <td>
                            <div align="center">主人回复:<%# Eval("reviceRecord") %></div>
                        </td>
                    </tr>
                    <!--显示评论发表时间-->
                    <tr>
                        <td><div align="center">发布时间<%#Eval("retime") %></div></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">昵称：</td>
                <td>
                    <asp:TextBox ID="txtReMan" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">评论主题：</td>
                <td>
                    <asp:TextBox ID="txtReTitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReTitle" ErrorMessage="输入评论主题"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">评论内容：</td>
                <td>
                    <asp:TextBox ID="txtRecontent" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发表" />
                    <input id="Button2" type="button" value="重置" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
