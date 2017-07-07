using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //获得登录控件的各个属性值
        string adminuser = Login1.UserName;
        string adminpass = Login1.Password;
        //生成SQL语句和参数对象
        string sql = "select count(*) from administrator where adminuser=@adminuser and adminpass=@adminpass";
        SqlParameter[] param ={
                                 new SqlParameter("@adminuser",SqlDbType.Char),
                                 new SqlParameter("@adminpass",SqlDbType.VarChar)
                             };
        param[0].Value = adminuser;
        param[1].Value = adminpass;
        //执行SQL语句
        int usercout=((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction,CommandType.Text,sql,param)));
        //判断登陆是否成功
        if (usercout > 0)
        {
            e.Authenticated = true;
            Session["adminuser"] = adminuser;
        }
        else
        {
            e.Authenticated = false;
        }
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        //获得登录控件的各个属性值
        string adminuser = TextBox1.Text.Trim();
        string adminpass = TextBox2.Text.Trim();
        //生成SQL语句和参数对象
        string sql = "select count(*) from administrator where adminuser=@adminuser and adminpass=@adminpass";
        SqlParameter[] param ={
                                 new SqlParameter("@adminuser",SqlDbType.Char),
                                 new SqlParameter("@adminpass",SqlDbType.VarChar)
                             };
        param[0].Value = adminuser;
        param[1].Value = adminpass;
        //执行SQL语句
        int usercout = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param)));
        //判断登陆是否成功
        if (usercout > 0)
        {
            Session["adminuser"] = adminuser;
            Response.Redirect("./Default.aspx");
        }
        else
        {
            Label1.Text = "您的登录不成功，请重试！";
        }
    }
}