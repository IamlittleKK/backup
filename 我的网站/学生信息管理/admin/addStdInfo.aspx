<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addStdInfo.aspx.cs" Inherits="admin_addStuInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
</head>
<body>
    <div id="container">        
    <form id="form1" runat="server">
        <table id="layout">
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Label ID="Label1" runat="server" Text="添加学生信息"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Label ID="labMsg" runat="server" Text="✎✎✎"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="colum_1">学号：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdXh" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStdXh" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">初始密码：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdMm" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStdMm" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">确认密码：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtStdMm" ControlToValidate="TextBox3" ErrorMessage="*"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">身份证号码 ：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdSfzhm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStdSfzhm" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colum_1">姓名：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdXm" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="colum_1">入学时间：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdRxsj" runat="server"></asp:TextBox>              
                </td>
            </tr>
            <tr>
                <td class="colum_1">所在班级：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdSzbj" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="colum_1">家庭住址：</td>
                <td class="colum_2"> 
                    <asp:TextBox class="textbox" ID="txtStdJtdz" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="colum_1">联系电话：</td>
                <td class="colum_2">
                    <asp:TextBox class="textbox" ID="txtStdLxdh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="colum_1" colspan="2" style="text-align:center;">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStdRxsj" ErrorMessage="日期格式不对,例如“2014-09-01”" ValidationExpression="\d{4}-\d{2}-\d{2}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button class="button" ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                </td>
            </tr>
        </table>                               
        <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert">
            <InsertItemTemplate>                                
            </InsertItemTemplate>
        </asp:FormView>
    </form>
    </div>

    <canvas id="mycanvas">
    </canvas>
    <div id="jsi-particle-container" class="container"></div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../js/show.js"></script>
</body>
</html>
