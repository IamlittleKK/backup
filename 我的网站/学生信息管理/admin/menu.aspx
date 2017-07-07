<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="admin_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
        body{	
            margin:0;
            background-color:#b6d7a8;
            width:100%;
            height:100%;
            font-weight:bold;
            text-shadow:1px 1px 0 skyblue,2px 2px 4px black;
            color:#964B00;
	}
    #container {
        width:100%;
        height:112px;
        border-bottom:4px solid;
        background-color:#b6d7a8;
    }
    ul {
        border-color: inherit;
        position:absolute;
        left:50%;
        margin-top:0;
        margin-left:-475px;
        width:950px;
        height:112px;
    }
    ul li{
        list-style-type:none;
        float:left;
        width:190px;
        height:50px;
        margin-left:38px;
        margin-top:31px;
        text-align:center;
        z-index:1;
    }
        ul li a {
            text-decoration:none;
            position:relative;
            top:14px;
            color:#db9147;
        }
    #li1, #li2, #li3, #li4 {
        position:relative;
        z-index:1;
        transition-property:all;
        transition-duration:0.5s;
    }
    #back_lamp {
            background-color:purple;
            opacity:0.3;
            position:absolute;
            border:1px solid;
            border-radius:10px;
            width:190px;
            height:50px;
            left:39px;
            z-index:0;
            transition-property:all;
            transition-duration:0.3s;
            -webkit-transition-timing-function:ease-in-out;
    }
    #li1:hover{
            -webkit-transform:scale(1.2,1.2);
    }
    #li2:hover{
            -webkit-transform:scale(1.2,1.2);
    }
    #li3:hover{
            -webkit-transform:scale(1.2,1.2);
    }
    #li4:hover{
            -webkit-transform:scale(1.2,1.2);
    }
</style>
    <script type="text/javascript">
        function move_lamp_back(move_distance) {
            document.getElementById('back_lamp').style.left =move_distance+"px";
        }
    </script>
</head>
<body>
    <div id="container">
        <ul>
            <!--添加学生信息连接-->
            <li id="li1"onmouseover="move_lamp_back(38)"><a href="addStdInfo.aspx" target="mainFrame">学生信息添加</a></li>
            <!--管理学生信息连接-->
            <li id="li2" onmouseover="move_lamp_back(263)"><a href="manageStdInfo.aspx" target="mainFrame">学生信息管理</a></li>
            <!--成绩信息添加连接-->
            <li id="li3" onmouseover="move_lamp_back(493)"><a href="achievement.aspx" target="mainFrame">成绩信息添加</a></li>
            <!--修改管理密码连接-->
            <li id="li4" onmouseover="move_lamp_back(723)"><a href="modifyAdminPassword.aspx" target="mainFrame">管理员密码修改</a></li>
            <li id="back_lamp"></li>
        </ul>
    </div>
</body>
</html>
