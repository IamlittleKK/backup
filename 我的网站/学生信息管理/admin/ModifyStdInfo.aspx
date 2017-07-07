<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyStdInfo.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <style type="text/css">
        #FormView1 {
            border:;
            margin:0 auto;
        }       
    </style>
</head>
<body>
    <div id="container">
    <form id="form1" runat="server">
    <div style="height: 311px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [stdXh], [stdSfzhm], [stdXm], [stdRxsj], [stdSzbj], [stdSfby], [stdJtdz], [stdBgqq], [stdLxdh] FROM [stdInfo] WHERE ([stdXh] = @stdXh)" DeleteCommand="DELETE FROM [stdInfo] WHERE [stdXh] = @stdXh" InsertCommand="INSERT INTO [stdInfo] ([stdXh], [stdSfzhm], [stdXm], [stdRxsj], [stdSzbj], [stdSfby], [stdJtdz], [stdBgqq], [stdLxdh]) VALUES (@stdXh, @stdSfzhm, @stdXm, @stdRxsj, @stdSzbj, @stdSfby, @stdJtdz, @stdBgqq, @stdLxdh)" UpdateCommand="UPDATE [stdInfo] SET [stdSfzhm] = @stdSfzhm, [stdXm] = @stdXm, [stdRxsj] = @stdRxsj, [stdSzbj] = @stdSzbj, [stdSfby] = @stdSfby, [stdJtdz] = @stdJtdz, [stdBgqq] = @stdBgqq, [stdLxdh] = @stdLxdh WHERE [stdXh] = @stdXh">
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
                <asp:Parameter Name="stdBgqq" Type="String" />
                <asp:Parameter Name="stdLxdh" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="stdXh" QueryStringField="stdXh" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="stdSfzhm" Type="String" />
                <asp:Parameter Name="stdXm" Type="String" />
                <asp:Parameter Name="stdRxsj" Type="DateTime" />
                <asp:Parameter Name="stdSzbj" Type="String" />
                <asp:Parameter Name="stdSfby" Type="Boolean" />
                <asp:Parameter Name="stdJtdz" Type="String" />
                <asp:Parameter Name="stdBgqq" Type="String" />
                <asp:Parameter Name="stdLxdh" Type="String" />
                <asp:Parameter Name="stdXh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="stdXh" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdated="FormView1_ItemUpdated" Width="393px">
            <EditItemTemplate>
                <asp:Table style="margin:0 auto;" ID="layout" runat="server">
                    <asp:TableRow>
                        <asp:TableCell style="text-align:center;" ColumnSpan="2">
                            学号:<asp:Label ID="stdXhLabel1" runat="server" Text='<%# Eval("stdXh") %>' />
                        </asp:TableCell>                       
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            身份证号码:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:TextBox CssClass="textbox" ID="stdSfzhmTextBox" runat="server" Text='<%# Bind("stdSfzhm") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            姓名:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:TextBox CssClass="textbox" ID="stdXmTextBox" runat="server" Text='<%# Bind("stdXm") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            入学时间:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:TextBox CssClass="textbox" ID="stdRxsjTextBox" runat="server" Text='<%# Bind("stdRxsj") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            所在班级:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:TextBox CssClass="textbox" ID="stdSzbjTextBox" runat="server" Text='<%# Bind("stdSzbj") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            是否毕业:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:CheckBox ID="stdSfbyCheckBox" runat="server" Checked='<%# Bind("stdSfby") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            家庭住址:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:TextBox CssClass="textbox" ID="stdJtdzTextBox" runat="server" Text='<%# Bind("stdJtdz") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            变更请求:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:TextBox CssClass="textbox" ID="stdBgqqTextBox" runat="server" Text='<%# Bind("stdBgqq") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            联系电话:
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_1">
                            <asp:TextBox CssClass="textbox" ID="stdLxdhTextBox" runat="server" Text='<%# Bind("stdLxdh") %>' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="colum_1">
                            <asp:Button CssClass="button" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />                           
                        </asp:TableCell>
                        <asp:TableCell CssClass="colum_2">
                            <asp:Button CssClass="button" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />                           
                        </asp:TableCell>
                    </asp:TableRow>                  
                </asp:Table>                                                                                                                                                                                                            
            </EditItemTemplate>
            <InsertItemTemplate>
                stdXh:
                <asp:TextBox ID="stdXhTextBox" runat="server" Text='<%# Bind("stdXh") %>' />
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
                stdBgqq:
                <asp:TextBox ID="stdBgqqTextBox" runat="server" Text='<%# Bind("stdBgqq") %>' />
                <br />
                stdLxdh:
                <asp:TextBox ID="stdLxdhTextBox" runat="server" Text='<%# Bind("stdLxdh") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                学号:
                <asp:Label ID="stdXhLabel" runat="server" Text='<%# Eval("stdXh") %>' />
                <br />
                身份证号码:
                <asp:Label ID="stdSfzhmLabel" runat="server" Text='<%# Bind("stdSfzhm") %>' />
                <br />
                姓名:
                <asp:Label ID="stdXmLabel" runat="server" Text='<%# Bind("stdXm") %>' />
                <br />
                入学时间:
                <asp:Label ID="stdRxsjLabel" runat="server" Text='<%# Bind("stdRxsj") %>' />
                <br />
                所在班级:
                <asp:Label ID="stdSzbjLabel" runat="server" Text='<%# Bind("stdSzbj") %>' />
                <br />
                是否毕业:
                <asp:CheckBox ID="stdSfbyCheckBox" runat="server" Checked='<%# Bind("stdSfby") %>' Enabled="false" />
                <br />
                家庭住址:
                <asp:Label ID="stdJtdzLabel" runat="server" Text='<%# Bind("stdJtdz") %>' />
                <br />
                变更请求:
                <asp:Label ID="stdBgqqLabel" runat="server" Text='<%# Bind("stdBgqq") %>' />
                <br />
                联系电话:
                <asp:Label ID="stdLxdhLabel" runat="server" Text='<%# Bind("stdLxdh") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
    </div>

    <canvas id="mycanvas">
    </canvas>
    <div id="jsi-particle-container" class="container"></div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../js/show.js"></script>
</body>
</html>
