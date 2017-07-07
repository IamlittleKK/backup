<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPwd.aspx.cs" Inherits="ModifyPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
        body {
            margin: 0;
	        overflow: hidden;
	        background:;
            font-weight:bold;
            text-shadow:1px 1px 0 black,2px 2px 4px white;
            color:white;
        }
        #container {
            /*border:3px solid;*/
            width:25%;
            position:absolute;
            left:50%;
            top:10%;
            margin-left:-15%;
        }
        #form1 {
            /*border:2px solid;*/
            margin-top:5px;
            width:100%;
        }
        .textbox {
            border-style:groove;
            background-color:black;
            color:white;
            box-shadow:1px 1px 0 white,2px 2px 4px black;
        }
    </style>
</head>
<body>
    <div id='effect' style='position:absolute; width:100%; height:100vh;background-color:#000;'>				
	</div>
    <div id="container">
    <form id="form1" runat="server">    
        <table style="width:100%;text-align:center">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="修改密码"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="labmsg" runat="server" Text="✎✎✎"></asp:Label>
                    <br />
                </td>
                
            </tr>
            <tr style="text-align:left">
                <td style="text-align:right">
                    <asp:Label ID="Label3" runat="server" Text="原始密码:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox class="textbox" ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr style="text-align:left">
                <td style="text-align:right">
                    <asp:Label ID="Label4" runat="server" Text="新密码:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox class="textbox" ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr style="text-align:left">
                <td style="text-align:right">
                    <asp:Label ID="Label5" runat="server" Text="确认密码:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox class="textbox" ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    
                    <asp:LinkButton ID="LinkButton1" style="text-decoration-line:none;color:white;" runat="server" OnClick="LinkButton1_Click">点击修改</asp:LinkButton>
                </td>
                
            </tr>
        </table>
    </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>  
    <script src="./js/time_travel.js"></script>
</body>
</html>
