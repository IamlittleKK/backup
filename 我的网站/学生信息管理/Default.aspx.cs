using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //获得登陆控件的各个属性值
        string stdXh = TextBox1.Text.Trim();
        string password = TextBox2.Text.Trim();
        //生成SQL语句和参数对象
        string sql = "select count(*) from stdInfo where stdXh=@stdXh and stdMm=@stdMm";
        SqlParameter[] param ={
            new SqlParameter("@stdXh",SqlDbType.Char),
            new SqlParameter("@stdMm",SqlDbType.VarChar)         
        };
        param[0].Value = stdXh;
        param[1].Value = password;
        //执行SQL语句
        int usercount = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param)));
        //判断登陆是否成功
        if (usercount > 0)
        {
            //如果登录成功，将学号保存在Session中，共后面成绩查询页面读取
            Session["stdXh"] = stdXh;
            Response.Redirect("./showSource.aspx");
        }
        else
            Label1.Text = "您的登录不成功，请重试！";
    }

    /*protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //获得登陆控件的各个属性值
        string stdXh = Login1.UserName;
        string password = Login1.Password;
        //生成SQL语句和参数对象
        string sql = "select count(*) from stdInfo where stdXh=@stdXh and stdMm=@stdMm";
        SqlParameter[] param ={
            new SqlParameter("@stdXh",SqlDbType.Char),
            new SqlParameter("@stdMm",SqlDbType.VarChar)         
        };
        param[0].Value = stdXh;
        param[1].Value = password;
        //执行SQL语句
        int usercount = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param)));
        //判断登陆是否成功
        if (usercount > 0)
        {
            e.Authenticated = true;//设置登录判断变量
            //如果登录成功，将学号保存在Session中，共后面成绩查询页面读取
            Session["stdXh"] = stdXh;
        }
        else
            e.Authenticated = false;//设置登录判断变量
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin/Login.aspx");
    }*/
}