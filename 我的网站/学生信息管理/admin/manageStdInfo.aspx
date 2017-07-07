<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageStdInfo.aspx.cs" Inherits="admin_manageStdInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <style type="text/css">
        #GridView1 {
            margin:5px auto;
        }
        .button_modify {
            color:black;
        }
    </style>
</head>
<body>
    <div id="container">
    <form id="form1" runat="server">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [stdInfo] WHERE [stdXh] = @stdXh" InsertCommand="INSERT INTO [stdInfo] ([stdXh], [stdSfzhm], [stdXm], [stdRxsj], [stdSzbj], [stdSfby], [stdJtdz], [stdLxdh], [stdBgqq]) VALUES (@stdXh, @stdSfzhm, @stdXm, @stdRxsj, @stdSzbj, @stdSfby, @stdJtdz, @stdLxdh, @stdBgqq)" SelectCommand="SELECT [stdXh], [stdSfzhm], [stdXm], [stdRxsj], [stdSzbj], [stdSfby], [stdJtdz], [stdLxdh], [stdBgqq] FROM [stdInfo]" UpdateCommand="UPDATE [stdInfo] SET [stdSfzhm] = @stdSfzhm, [stdXm] = @stdXm, [stdRxsj] = @stdRxsj, [stdSzbj] = @stdSzbj, [stdSfby] = @stdSfby, [stdJtdz] = @stdJtdz, [stdLxdh] = @stdLxdh, [stdBgqq] = @stdBgqq WHERE [stdXh] = @stdXh">
            <DeleteParameters>
                <asp:Parameter Name="stdXh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stdXh" Type="String" />
                <asp:Parameter Name="stdSfzhm" Type="String" />
                <asp:Parameter Name="stdXm" Type="String" />
                <asp:Parameter Name="stdRxsj" Type="DateTime" />
                <asp:Parameter Name="stdSzbj" Type="String" />
                <asp:Parameter Name="stdSfby" Type="Boolean" />
                <asp:Parameter Name="stdJtdz" Type="String" />
                <asp:Parameter Name="stdLxdh" Type="String" />
                <asp:Parameter Name="stdBgqq" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="stdSfzhm" Type="String" />
                <asp:Parameter Name="stdXm" Type="String" />
                <asp:Parameter Name="stdRxsj" Type="DateTime" />
                <asp:Parameter Name="stdSzbj" Type="String" />
                <asp:Parameter Name="stdSfby" Type="Boolean" />
                <asp:Parameter Name="stdJtdz" Type="String" />
                <asp:Parameter Name="stdLxdh" Type="String" />
                <asp:Parameter Name="stdBgqq" Type="String" />
                <asp:Parameter Name="stdXh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="stdXh" DataSourceID="SqlDataSource1" Height="193px" Width="885px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:HyperLinkField ControlStyle-CssClass="button_modify" DataNavigateUrlFields="stdXh" DataNavigateUrlFormatString="ModifyStdInfo.aspx?stdXh={0}" HeaderText="修改" Text="修改" >
<ControlStyle CssClass="button_modify"></ControlStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="stdXh" HeaderText="学号" ReadOnly="True" SortExpression="stdXh" />
                <asp:BoundField DataField="stdSfzhm" HeaderText="身份证号" SortExpression="stdSfzhm" />
                <asp:BoundField DataField="stdXm" HeaderText="姓名" SortExpression="stdXm" />
                <asp:BoundField DataField="stdRxsj" HeaderText="入学时间" SortExpression="stdRxsj" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="stdSzbj" HeaderText="所在班级" SortExpression="stdSzbj" />
                <asp:CheckBoxField DataField="stdSfby" HeaderText="是否毕业" ReadOnly="True" SortExpression="stdSfby" />
                <asp:BoundField DataField="stdJtdz" HeaderText="家庭地址" SortExpression="stdJtdz" />
                <asp:BoundField DataField="stdLxdh" HeaderText="联系电话" SortExpression="stdLxdh" />
                <asp:BoundField DataField="stdBgqq" HeaderText="变更请求" SortExpression="stdBgqq" />
            </Columns>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
        </asp:GridView>        
    </form>
    </div>
    <canvas id="mycanvas"></canvas>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="../js/show.js"></script>   
</body>
</html>
