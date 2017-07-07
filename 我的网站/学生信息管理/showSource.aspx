<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showSource.aspx.cs" Inherits="showSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
	       margin: 0;
	       overflow: hidden;
	       background:;
           font-weight:bold;
           text-shadow:1px 1px 0 black,2px 2px 4px white;
           color:white;
	       }

        #container{
            border:;
            position:absolute;
            width:70%;
            left:50%;
            margin-left:-35%;
            margin-top:20px;
            
        }
        #form1 {
            width:90%;
            height:580px;
            border-color:skyblue;
            border:;
            margin:10px auto;
        }

        #nav {
            border:;
            width:87%;
            height:6%;
            margin-left:auto;
            margin-right:auto;
        }
            #nav ul {
                margin-left:0;
                margin-top:5px;
                background-color:;
                list-style-type:none;
                width:100%;
            }
                #nav ul li {
                    float:left;                    
                }       
        .hyperlink {
            border:;
            background-color:;
            text-decoration:none;
            font-weight :bold;
            color:white;
            
        }
        .transform_li {
            margin-left:40px;
            background-color:;
            border:;
            border-radius:5px;
            transition-property:all;
            transition-duration:0.5s;
            padding-left:5px;
            padding-right:5px;
            
        }
           .transform_li:hover  {
                -webkit-transform:scale(1.8,1.8); 
                -ms-transform:scale(1.8,1.8);             
            }
           .transform_li:active  {
                -webkit-transform:scale(1.2,1.2);  
                -ms-transform:scale(1.8,1.8);        
            }
        #GridView1 {
            margin-left: 1px;
            margin-top:5px;
            Height:85%;
            Width:100%;
            background-color:;
        }
    </style>
</head>
<body>
    <div id="container">
    <form id="form1" runat="server">        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [achievement] WHERE ([stdXh] = @stdXh2)">
            <SelectParameters>
                <asp:SessionParameter Name="stdXh2" SessionField="stdXh" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <div id="nav">
            <ul>
                <li>
                    
                    <asp:Label ID="labUser" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                </li>
                <li class="transform_li">
                    <asp:HyperLink class="hyperlink" ID="HyperLink1" runat="server" NavigateUrl="~/ModifyInfo.aspx">修改个人信息</asp:HyperLink>
                </li>
                <li class="transform_li">
                    <asp:HyperLink class="hyperlink" ID="HyperLink2" runat="server" NavigateUrl="~/ModifyPwd.aspx">修改密码</asp:HyperLink>
                </li>
            </ul>  
        </div>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="aeid" DataSourceID="SqlDataSource1" BorderStyle="None" GridLines="None" Font-Bold="True">
            <Columns>
                <asp:BoundField DataField="stdXh" HeaderText="学号" SortExpression="stdXh" />
                <asp:BoundField DataField="aeKcmc" HeaderText="课程名称" SortExpression="aeKcmc" />
                <asp:BoundField DataField="aeKssj" HeaderText="考试时间" SortExpression="aeKssj" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="aeKscs" HeaderText="考试次数" SortExpression="aeKscs" />
                <asp:BoundField DataField="aeKscj" HeaderText="考试成绩" SortExpression="aeKscj" />
            </Columns>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" BorderStyle="None" />
        </asp:GridView>
        
    </form>
    </div>

    <div id='jsi-particle-container' style='width:100%; height:100vh;background-color:#000;'>				
	</div>    
    
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>  
  <script src="./js/cool.js"></script> 
</body>
</html>
