<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 283px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT articles.id, articles.class, articles.title, articles.pushTime, articles.keyWords, articles.[content], articles.clockCount, articleClass.cname FROM articles INNER JOIN articleClass ON articles.class = articleClass.cid"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [articleClass]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT top 10 * FROM [articles] ORDER BY [clockCount] DESC"></asp:SqlDataSource>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <!--DataList控件控制样式-->
                    <asp:DataList ID="DataList2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" GridLines="Both" Width="153px" DataKeyField="cid">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="true" ForeColor="White" />
                       
                        <HeaderTemplate>
                            <a href="Default.aspx">首页</a>
                                <br />
                                <br />
                        </HeaderTemplate>
                        
                        <HeaderStyle BackColor="#A55129" Font-Bold="true" ForeColor="White" />
                        
                        <ItemTemplate>
                            <a href="Default.aspx?cid=<%# Eval("cid") %>>"><%# Eval("cname") %>>
                                </a>
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td rowspan="2">
                    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Both">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <ItemTemplate>
                            <!--文章列表表格-->
                            <table>
                                <tr>
                                    <!--显示 文章类别 标题和时间-->
                                    <td>
                                        [<%# Eval("cname") %>>]
                                        <a href="viewArticle.aspx?id=<%# Eval("id") %>" /><%# Eval("title") %>>
                                    </td>
                                </tr>
                                <tr>
                                    <!--读取文章内容的前30个字作为文章摘要-->
                                    <td>
                                        <%# Eval("content").ToString().Substring(0,Eval("content").ToString().Length>30?30:Eval("content").ToString().Length) %>

                                    </td>
                                </tr>
                                <tr>
                                    <!--显示文章发布时间和点击率-->
                                    <td>
                                        <div align="right">
                                            <%# Eval("pushTime") %>[<%# Eval("clockCount") %>>]>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DataList ID="DataList3" runat="server" DataKeyField="id" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource3" GridLines="Both">
                        
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="true"/>
                        <HeaderTemplate>热点排行</HeaderTemplate>
                        <ItemTemplate>
                           <a href="viewArticle.aspx?id=<%#Eval("id") %>" />
                            <%#Eval("title") %>(<%#Eval("clockCount") %>)
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
