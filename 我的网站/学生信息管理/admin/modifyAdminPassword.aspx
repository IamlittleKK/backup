<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyAdminPassword.aspx.cs" Inherits="admin_modifyAdminPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        </style>
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
</head>
<body style="height: 280px">
    <div id="container">
    <form id="form1" runat="server">
        <table id="layout">
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Label ID="Label1" runat="server" Text="修改密码"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Label ID="labMsg" runat="server" Text="✎✎✎"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="colum_1">
                    旧密码：
                </td>
                <td class="colum_2">
                    <asp:TextBox ID="txtOldPass" class="textbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPass" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">新密码：</td>
                <td class="colum_2">
                    <asp:TextBox ID="txtNewPass" class="textbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPass" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">确认密码 ：</td>
                <td class="colum_2">
                    <asp:TextBox ID="txtComPass" class="textbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComPass" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1" colspan="2" style="text-align:center;">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPass" ControlToValidate="txtComPass" ErrorMessage="两次密码输入不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button class="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="点击修改" />
                </td>
            </tr>
        </table>
    </form>
    </div>

    <canvas id="mycanvas">
    </canvas>
    <div id="jsi-particle-container" class="container"></div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../js/show.js"></script>
</body>
</html>
