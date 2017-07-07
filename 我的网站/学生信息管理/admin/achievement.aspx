<%@ Page Language="C#" AutoEventWireup="true" CodeFile="achievement.aspx.cs" Inherits="admin_achievement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <style type="text/css">        
       
    </style>
</head>
<body>
    <div id="container">
    <form id="form1" runat="server">
        <table id="layout">
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Label ID="labMsg" runat="server" Text="✎✎✎"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="colum_1">姓名：</td>
                <td class="colum_2">
                    <asp:DropDownList class="dropdownlist" ID="ddlXtdXh" runat="server" DataSourceID="SqlDataSource1" DataTextField="stdXm" DataValueField="stdXh">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="colum_1">课程名称：</td>
                <td class="colum_2">
                    <asp:DropDownList class="dropdownlist" ID="txtaeid" runat="server" DataSourceID="SqlDataSource2" DataTextField="aeKcmc" DataValueField="aeid">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="colum_1">考试时间：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtAeKssj" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAeKssj" ErrorMessage="*"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="colum_1">考试次数：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtAeKscs" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAeKscs" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">考试成绩：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtAeKscj" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAeKscj" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1" colspan="2" style="text-align:center;">
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAekssj" ErrorMessage="日期格式不对,例如:'2014-09-01'"  ValidationExpression="\d{4}-\d{2}-\d{2}"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="colum_2" colspan="2" style="text-align:center;">
                    <asp:Button class="button" ID="Button1" runat="server" Text="添加成绩" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>                          
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [stdXh], [stdXm] FROM [stdInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
        
    </form>
    </div>

    <canvas id="mycanvas">
    </canvas>
    <div id="jsi-particle-container" class="container"></div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../js/show.js"></script>
</body>
</html>
