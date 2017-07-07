using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showSource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //加载页面时判断用户是否登录
        if (Session["stdXh"] == null || Session["stdXh"].ToString().Length == 0)
        { Response.Redirect("Default.aspx"); }
        //如果已经登陆显示提示信息
        labUser.Text = "学号为<b><font color=red>[" + Session["stdXh"].ToString() + "]</font></b>的学生的所有考试成绩";
    }
}