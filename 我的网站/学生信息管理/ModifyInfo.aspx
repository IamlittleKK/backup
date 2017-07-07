<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyInfo.aspx.cs" Inherits="ModifyInfo" %>

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
                /*border:4px solid;*/
                position:absolute;
                height:500px;
                width:500px;
                left:50%;
                margin-left:-250px;
        }
        #form1 {
                /*border:3px solid;*/
                position:relative;
                margin:25px auto;
                width:450px;
                height:450px;
        }
        #txtConfigPassword {
                /*border:2px solid;*/
                position:relative;
                margin:0 auto;
                width:400px;
                height:450px;
        }
            #txtConfigPassword p {
                    /*border:1px solid;*/
                    position:relative;
                    margin:0 auto;
                    /*background-color:red;*/
                    width:70px;
                    padding-left:5px;
            }
            #txtConfigPassword #DetailsView1 {
                    /*border:1px solid;*/
                    /*background-color:yellow;*/
                    height:200px;
                    width:350px;
                    margin:0 auto;
            }
            #txtConfigPassword #wrap_formview1 {
                    position:relative;
                    margin:0 auto;
                    width:362px;
                    height:170px;
                    /*border:1px solid;*/
            }
                #txtConfigPassword #wrap_formview1 #FormView1 {
                        /*border:1px solid;*/
                        /*background-color:green;*/
                        height:170px;
                        width:250px;
                        position:absolute;
                        left:50%;
                        margin-left:-125px;
                        padding:0 0;
                        
                       
                }
                    #formvew1_content {
                                /*border:1px solid;*/
                                width:200px;
                                height:150px;
                                position:relative;
                                margin:0 auto;
                        }
                         #txtConfigPassword #wrap_formview1 #FormView1 #wrap_link {
                                    /*border:1px solid;*/
                                    width:90px;
                                    margin:10px auto;
                                    position:relative;
                                    top:37px;
                                    padding-left:15px;
                                }
        .linkbutton {
                text-decoration-line:none;
                color:white;
        }
    </style>
</head>
<body>
    <div id='effect' style='position:absolute; width:100%; height:100vh;background-color:#000;'>				
	</div>
    <div id="container">
    <form id="form1" runat="server">
    <div id="txtConfigPassword">
         <p>跳转成功</p>     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [stdInfo] WHERE ([stdXh] = @stdXh)">
            <SelectParameters>
                <asp:SessionParameter Name="stdXh" SessionField="stdXh" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" style="box-shadow:1px 1px 0 black,2px 2px 4px white;" runat="server" AutoGenerateRows="False" DataKeyNames="stdXh" DataSourceID="SqlDataSource1" BorderStyle="None">
            <Fields>
                <asp:BoundField DataField="stdXh" HeaderText="学号" ReadOnly="True" SortExpression="stdXh" />
                <asp:BoundField DataField="stdMm" HeaderText="密码" SortExpression="stdMm" />
                <asp:BoundField DataField="stdSfzhm" HeaderText="身份证号" SortExpression="stdSfzhm" />
                <asp:BoundField DataField="stdXm" HeaderText="姓名" SortExpression="stdXm" />
                <asp:BoundField DataField="stdRxsj" HeaderText="入学时间" SortExpression="stdRxsj" />
                <asp:BoundField DataField="stdSzbj" HeaderText="所在班级" SortExpression="stdSzbj" />
                <asp:CheckBoxField DataField="stdSfby" HeaderText="是否毕业" SortExpression="stdSfby" />
                <asp:BoundField DataField="stdJtdz" HeaderText="家庭住址" SortExpression="stdJtdz" />
                <asp:BoundField DataField="stdLxdh" HeaderText="联系电话" SortExpression="stdLxdh" />
                <asp:BoundField DataField="stdBgqq" HeaderText="变更请求" SortExpression="stdBgqq" />
            </Fields>
            <RowStyle BorderStyle="None" />
        </asp:DetailsView>

        <div id="wrap_formview1">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="stdXh" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating" >
            <EditItemTemplate>
                <div id="formvew1_content">
                <p>变更请求</p>  
                <asp:TextBox ID="stdBgqqTextBox" style="width:170px;position:absolute;left:50%;margin-left:-85px;background-color:black;color:white;font-weight:bold;text-shadow:1px 1px 0 black,2px 2px 4px white;border-style:groove;box-shadow:1px 1px 0 black,2px 2px 4px white;opacity:1;" runat="server" Text='<%# Bind("stdBgqq") %>' TextMode="MultiLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="stdBgqqTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                <div id="wrap_link">
                <asp:LinkButton class="linkbutton" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                <asp:LinkButton class="linkbutton" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </div>
                    </div>
            </EditItemTemplate>
            <InsertItemTemplate>
                stdXh:
                <asp:TextBox ID="stdXhTextBox" runat="server" Text='<%# Bind("stdXh") %>' />
                <br />
                stdMm:
                <asp:TextBox ID="stdMmTextBox" runat="server" Text='<%# Bind("stdMm") %>' />
                <br />
                stdSfzhm:
                <asp:TextBox ID="stdSfzhmTextBox" runat="server" Text='<%# Bind("stdSfzhm") %>' />
                <br />
                stdXm:
                <asp:TextBox ID="stdXmTextBox" runat="server" Text='<%# Bind("stdXm") %>' />
                <br />
                stdRxsj:
                <asp:TextBox ID="stdRxsjTextBox" runat="server" Text='<%# Bind("stdRxsj") %>' />
                <br />
                stdSzbj:
                <asp:TextBox ID="stdSzbjTextBox" runat="server" Text='<%# Bind("stdSzbj") %>' />
                <br />
                stdSfby:
                <asp:CheckBox ID="stdSfbyCheckBox" runat="server" Checked='<%# Bind("stdSfby") %>' />
                <br />
                stdJtdz:
                <asp:TextBox ID="stdJtdzTextBox" runat="server" Text='<%# Bind("stdJtdz") %>' />
                <br />
                stdLxdh:
                <asp:TextBox ID="stdLxdhTextBox" runat="server" Text='<%# Bind("stdLxdh") %>' />
                <br />
                stdBgqq:
                <asp:TextBox ID="stdBgqqTextBox" runat="server" Text='<%# Bind("stdBgqq") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                stdXh:
                <asp:Label ID="stdXhLabel" runat="server" Text='<%# Eval("stdXh") %>' />
                <br />
                stdMm:
                <asp:Label ID="stdMmLabel" runat="server" Text='<%# Bind("stdMm") %>' />
                <br />
                stdSfzhm:
                <asp:Label ID="stdSfzhmLabel" runat="server" Text='<%# Bind("stdSfzhm") %>' />
                <br />
                stdXm:
                <asp:Label ID="stdXmLabel" runat="server" Text='<%# Bind("stdXm") %>' />
                <br />
                stdRxsj:
                <asp:Label ID="stdRxsjLabel" runat="server" Text='<%# Bind("stdRxsj") %>' />
                <br />
                stdSzbj:
                <asp:Label ID="stdSzbjLabel" runat="server" Text='<%# Bind("stdSzbj") %>' />
                <br />
                stdSfby:
                <asp:CheckBox ID="stdSfbyCheckBox" runat="server" Checked='<%# Bind("stdSfby") %>' Enabled="false" />
                <br />
                stdJtdz:
                <asp:Label ID="stdJtdzLabel" runat="server" Text='<%# Bind("stdJtdz") %>' />
                <br />
                stdLxdh:
                <asp:Label ID="stdLxdhLabel" runat="server" Text='<%# Bind("stdLxdh") %>' />
                <br />
                stdBgqq:
                <asp:Label ID="stdBgqqLabel" runat="server" Text='<%# Bind("stdBgqq") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        </div>
    
    </div>
    </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>  
    <script src="./js/time_travel.js"></script> 
</body>
</html>
