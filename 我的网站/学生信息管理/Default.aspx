<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        /*//-ms-代表【ie】内核识别码

         //-moz代表火狐【firefox】内核识别码

         //-webkit代表谷歌【chrome】/苹果【safari】内核识别码

         //-o代表欧朋【opera】内核识别码*/
body {
            overflow:hidden;
            background:#595959;
            text-shadow:1px 0.5px 0 white,2px 2px 4px #595959;
            font-weight:bolder;
            color:#595959;
           }
img {               
                position:absolute;
                left:50%;
	            width:99%;
	            height:98%;
                margin-left:-49.5%;
	            border-radius:20px;
                z-index:-2;

                -webkit-transition-property:all;
	            -webkit-transition-duration:3s;

                -ms-transition-property:all;
	            -ms-transition-duration:3s;

                -moz-transition-property:all;
	            -moz-transition-duration:3s;

                -o-transition-property:all;
	            -o-transition-duration:3s;

                transition-property:all;
	            transition-duration:3s;
        }
.hide
{
	opacity:0;
}
.e1_out
{
	opacity:0;
	-webkit-transition-timing-function:ease-out;

    -ms-transition-timing-function:ease-out;

    -moz-transition-timing-function:ease-out;

    -o-transition-timing-function:ease-out;

    transition-timing-function:ease-out;
}
.e1_in
{
	opacity:1;
	-webkit-transition-timing-function:ease-in;

    -ms-transition-timing-function:ease-in;

    -moz-transition-timing-function:ease-in;

    -o-transition-timing-function:ease-in;

    transition-timing-function:ease-in;
}
#LinkButton1 {
                        position:absolute;
                        color:#595959;
                        left:30px;
                        top:110px;
        }
 #form1 {
                        /*background-color:red;
                        border:3px solid;*/      
                        position:absolute;
                        top:80px;
                        z-index:7; 
                        width:245px;
                        height:150px;
            
        }
        #form1 #login {
            /*background-color:yellow;
            border:2px solid;*/            
            width:100%;
            height:100%;
        }        
#baymax{
position:absolute;
top:100px;
border:;
border-radius:180px;
opacity:0.7;
/*高度*/
height: 500px;
width:350px;
/*隐藏溢出*/
overflow: hidden;
}

#head{

height: 64px;

width: 100px;

/*以百分比定义圆角的形状*/

border-radius: 50%;

/*背景*/

background: #fff;

margin: 0 auto;

margin-bottom: -20px;

/*设置下边框的样式*/

border-bottom: 5px solid #e0e0e0;

/*属性设置元素的堆叠顺序； 拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面*/

z-index: 100;

/*生成相对定位的元素*/

position: relative;

}

#eye,

#eye2{

width: 11px;

height: 13px;

background: #282828;

border-radius: 50%;

position: relative;

top: 30px;

left: 27px;

/*旋转该元素*/

transform: rotate(8deg);
-webkit-transition-property:all;
-webkit-transition-duration:0.3s;

-ms-transition-property:all;
-ms-transition-duration:0.3s;

-moz-transition-property:all;
-moz-transition-duration:0.3s;

-o-transition-property:all;
-o-transition-duration:0.3s;

transition-property:all;
transition-duration:0.3s;
}
#head:hover .eye
{
	-webkit-transform:scale(1.5,1.5);

    -ms-transform:scale(1.5,1.5);

    -moz-transform:scale(1.5,1.5);

    -o-transform:scale(1.5,1.5);

    transform:scale(1.5,1.5);
}

#eye2{

/*使其旋转对称*/

transform: rotate(-8deg);

left: 69px; top: 17px;

}

#mouth{

width: 38px;

height: 1.5px;

background: #282828;

position: relative;

left: 35px;

top: 10px;

}

/*躯干和腹部*/

#torso,

#belly{

margin: 0 auto;

height: 200px;

width: 180px;

background: #fff;

border-radius:47%;

/*设置边框*/

border: 5px solid #e0e0e0;

border-top: none;

z-index: 1;

}

#belly{
position:relative;
height: 300px;

width: 245px;

margin-top: -140px;

z-index: 5;

}
            #belly .textbox {
            box-shadow:0.5px 1px 0 white,3px 3px 0 gray;
            border-radius:5px;
            width:148px;
            height:19px;
            
        }

#cover{
width: 190px;
background: #fff;
height: 150px;
position: absolute;
margin-left:27px;
margin-top:-20px;
border-radius: 50%;
}

/*心脏*/

#heart{

width:25px;

height:25px;

border-radius:50%;

position:relative;

/*向边框四周添加阴影效果*/

box-shadow:2px 5px 2px #ccc inset;

right:-115px;

top:40px;

z-index:111;

border:1px solid #ccc;

}

/*手臂*/

#left-arm,

#right-arm{

height: 270px;

width: 120px;

border-radius: 50%;

background: #fff;

margin: 0 auto;

position: relative;

top: -350px;

left: -100px;

transform: rotate(20deg);

z-index: -1;

}

#right-arm{

transform: rotate(-20deg);

left: 100px;

top: -620px;

}

/*手指头*/

#l-bigfinger,

#r-bigfinger{

height: 50px;

width: 20px;

border-radius: 50%;

background: #fff;

position: relative;

top: 250px;

left: 50px;

transform: rotate(-50deg);

}

#r-bigfinger{

left: 50px;

transform: rotate(50deg);

}

#l-smallfinger,

#r-smallfinger{

height: 35px;

width: 15px;

border-radius: 50%;

background: #fff;

position: relative;

top: 195px;

left: 66px;

transform: rotate(-40deg);

}

#r-smallfinger{

background: #fff;

transform: rotate(40deg);

top: 195px;

left: 37px;

}

/*大腿*/

#left-leg,

#right-leg{

height: 170px;

width: 90px;

border-radius: 40% 30% 10px 45%;

background: #fff;

position: relative;

top: -640px;

left: -45px;

transform: rotate(-1deg);

z-index: -2;

margin: 0 auto;

}

#right-leg{

background: #fff;

border-radius:30% 40% 45% 10px;

margin: 0 auto;

top: -810px;

left: 50px;

transform: rotate(1deg);

}
    </style>
</head>
<body>

    <img src="./image_source/img1.jpg" id="img1" class="hide"/>
    <img src="./image_source/img2.jpg" id="img2" class="hide"/>
    <img src="./image_source/img3.jpg" id="img3" class="hide"/>
    <img src="./image_source/img4.jpg" id="img4" class="hide"/>
    <img src="./image_source/img5.jpg" id="img5" class="hide"/>
    <img src="./image_source/img6.jpg" id="img6" class="hide"/>
    <img src="./image_source/img7.jpg" id="img7" class="hide"/>
    <img src="./image_source/img8.jpg" id="img8" class="hide"/>
    <img src="./image_source/img9.jpg" id="img9" class="hide"/>
    <img src="./image_source/img10.jpg" id="img10" class="hide"/>

<div id="container" style="border-style:; border-color: inherit; border-width: 1px; width:350px;height:643px;margin:0 auto;">
    <div id="theTip" style="height:90px;width:350px;border:;margin-left:;margin-top:;position:absolute;">
        <div id="message_box" style="height:60px;width:200px;border:;background-color:red;position:absolute;margin-top:20px;margin-left:170px;border-radius:0px 10px 0px 10px;background-color:white;opacity:0.7;">
            <p style="border:;margin-top:2px;padding-left:5px;padding-right:2px;">学生用户请登录，管理员请单击我的头= .=</p>
        </div>
        <div id="triangle" style="width:0px;height:0px;border-width:10px;border-bottom-width:0px;border-color:white transparent;border-style:solid;position:absolute;margin-left:180px;margin-top:80px;opacity:0.7;"></div>
    </div>
    <div id="baymax" onmousedown="Milan_StartMove(event)" onmouseup="Milan_StopMove(event)">
<!-- 定义头部，包括两个眼睛、嘴 -->

<div id="head" onclick="admin_login()">

<div id="eye" class="eye"></div>

<div id="eye2" class="eye"></div>

<div id="mouth"></div>
</div>

<!-- 定义躯干，包括心脏 -->

<div id="torso">

<div id="heart"></div>

</div>

<!-- 定义肚子腹部，包括 cover（和躯干的连接处） -->

<div id="belly">
<div id="cover"></div>
    <form id="form1" runat="server">          
    <table id="login">
        <tr>
            <td colspan="2" style="text-align:center;">用户登录</td>
        </tr>
        <tr>
            
            <td colspan="2" style="text-align:center;">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:30%;text-align:right;">用户名:</td>
            <td><asp:TextBox class="textbox" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:30%;text-align:right;">密码:</td>
            <td><asp:TextBox class="textbox" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <asp:Button ID="Button1" style="background-color:white;opacity:0.7;border-radius:5px;border-style:groove;font-weight:bold;text-shadow:1px 0.5px 0 white,2px 2px 4px black;box-shadow:0.5px 0px 0 white,2px 2px 4px black" runat="server" Text="登录" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</div>

<!-- 定义左臂，包括一大一小两个手指 -->

<div id="left-arm">

<div id="l-bigfinger"></div>

<div id="l-smallfinger"></div>

</div>

<!-- 定义右臂，同样包括一大一小两个手指 -->

<div id="right-arm">

<div id="r-bigfinger"></div>

<div id="r-smallfinger"></div>

</div>

<!-- 定义左腿 -->

<div id="left-leg"></div>

<!-- 定义右腿 -->

<div id="right-leg"></div>

</div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
        var int = self.setInterval("slide()", 4000)
        var show = 0;
        var offset_x;
        var offset_y;
        
        /*随机指定一个背景*/
        $(document).ready(specify_BGI());

        $(document).ready(function () {
            /*给大白添加音效*/
            var head = document.getElementById('head');
            head.addEventListener('mouseleave', delete_sound);
            head.addEventListener('mouseenter', anger_baymax);
            function anger_baymax(event) {
                var newAudio = document.createElement('audio');
                document.body.appendChild(newAudio);
                newAudio.id = 'sound';

                newAudio.autoplay = "autoplay";
                
                var source2 = document.createElement('source');
                
                newAudio.appendChild(source2);
                
                source2.src = "./sound_source/squash.mp3";

                /*大白提示管理员登录*/
                var message_box = document.getElementById("message_box");
                var triangle = document.getElementById("triangle");
                message_box.style.opacity = "0.7";
                triangle.style.opacity = "0.7";
                
            }
            function delete_sound(event) {
                var oldAudio = document.getElementById('sound');
                oldAudio.parentNode.removeChild(oldAudio);

                var message_box = document.getElementById("message_box");
                var triangle = document.getElementById("triangle");
                message_box.style.opacity = "0";
                triangle.style.opacity = "0";
            }
        });
        
            
                
        /*指定任意图片为第一个显示的背景*/
        function specify_BGI()
        {
            var first = get_random(1, 14);
            show = first;
            var imgfirst = document.getElementById('img' + first);
            imgfirst.className = "e1_in";
        }
        /*跳转到管理员登录*/
        function admin_login() {
            window.location.href = "./admin/Login.aspx";
        }
            /*PC-拖动登陆框*/
            function Milan_StartMove(oEvent) {
                var whichButton;
                if (document.all && oEvent.button == 1) whichButton = true;
                else { if (oEvent.button == 0) whichButton = true; }
                if (whichButton) {
                    var baymax = document.getElementById("baymax");
                    var theTip = document.getElementById("theTip");
                    offset_x = parseInt(oEvent.clientX - baymax.offsetLeft);
                    offset_y = parseInt(oEvent.clientY - baymax.offsetTop);
                    document.documentElement.onmousemove = function (mEvent) {
                        var eEvent;
                        if (document.all) eEvent = event;
                        else { eEvent = mEvent; }
                        var baymax = document.getElementById("baymax");
                        var theTip = document.getElementById("theTip");
                        var x = eEvent.clientX - offset_x;
                        var y = eEvent.clientY - offset_y;
                        baymax.style.left = (x) + "px";
                        baymax.style.top = (y) + "px";
                        theTip.style.left = (x) + "px";
                        theTip.style.top = (y)-90+ "px";
                    }
                }
            }
            function Milan_StopMove(oEvent) {
                document.documentElement.onmousemove = null;
            }

            /*控制背景切换*/
            function slide() {
                var next = get_random(1, 14);
                if (next == show)
                {
                    next += 1;
                }
                if (next == 14)
                {
                    next = 1;
                }
                var imgshow = document.getElementById('img' + show);
                var imgnext = document.getElementById('img' + next);
                imgshow.className = "e1_out";
                imgnext.className = "e1_in";
                //alert("show="+show+",next="+next);
                show = next;

            }
            /*得到一个随机数*/
            function get_random(min, max) {
                var seed = Math.random();
                var result = seed * (max - min);
                result += min;
                result = parseInt(result, 10);
                return result;
            }

            /*移动端-拖动登陆框*/
            // 获取节点
            var baymax = document.getElementById("baymax");
            var oW, oH;
            // 绑定touchstart事件
            baymax.addEventListener("touchstart", function (e) {
                console.log(e);
                var touches = e.touches[0];
                oW = touches.clientX - baymax.offsetLeft;
                oH = touches.clientY - baymax.offsetTop;
                //阻止页面的滑动默认事件
                document.addEventListener("touchmove", defaultEvent, false);
            }, false)

            baymax.addEventListener("touchmove", function (e) {
                var touches = e.touches[0];
                var oLeft = touches.clientX - oW;
                var oTop = touches.clientY - oH;
                if (oLeft < 0) {
                    oLeft = 0;
                } else if (oLeft > document.documentElement.clientWidth - baymax.offsetWidth) {
                    oLeft = (document.documentElement.clientWidth - baymax.offsetWidth);
                }
                baymax.style.left = oLeft + "px";
                baymax.style.top = oTop + "px";
            }, false);

            baymax.addEventListener("touchend", function () {
                document.removeEventListener("touchmove", defaultEvent, false);
            }, false);
            function defaultEvent(e) {
                e.preventDefault();
            }
</script>
</body>
</html>
