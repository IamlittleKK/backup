using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_modifyAdminPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断用户是否登录
        if (Session["adminuser"] == null || Session["adminuser"].ToString().Length == 0)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void modiPass_Click(object sender, EventArgs e)
    {
        //获得输入的新旧密码以及登录时保存的用户名
        string adminuser = Session["adminuser"].ToString();
        string oldPassword = txtOldPass.Text.Replace("'","");
        string newPassword = txtNewPass.Text.Replace("'","");
        //查询数据库，判断旧密码是否正确
        string sql = "select count(*) from administrator where adminuser=@adminuser and adminpass=@adminpass";
        SqlParameter[] param ={
                                  new SqlParameter("@adminuser",SqlDbType.VarChar),
                                  new SqlParameter("@adminpass",SqlDbType.VarChar)
                             };
        param[0].Value = adminuser;
        param[1].Value = oldPassword;
        int usercount = (int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param));
        if (usercount <= 0)
        {
            labMsg.Text = "旧密码错误";
        }
        else
        { 
            //执行数据库操作修改密码
            string updatesql = "update administrator set adminpass=@adminpass where adminuser=@adminuser";
            SqlParameter[] updateparam ={
                                           new SqlParameter("@adminuser",SqlDbType.Char),
                                           new SqlParameter("@adminpass",SqlDbType.VarChar)
                                       };
            updateparam[0].Value = adminuser;
            updateparam[1].Value = newPassword;
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, updatesql, updateparam) > 0)
            {
                labMsg.Text = "修改成功";
            }
            else
            {
                labMsg.Text = "操作失误";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //获得输入的新旧密码以及登录时保存的用户名
        string adminuser = Session["adminuser"].ToString();
        string oldPassword = txtOldPass.Text.Replace("'", "");
        string newPassword = txtNewPass.Text.Replace("'", "");
        //查询数据库，判断旧密码是否正确
        string sql = "select count(*) from administrator where adminuser=@adminuser and adminpass=@adminpass";
        SqlParameter[] param ={
                                  new SqlParameter("@adminuser",SqlDbType.VarChar),
                                  new SqlParameter("@adminpass",SqlDbType.VarChar)
                             };
        param[0].Value = adminuser;
        param[1].Value = oldPassword;
        int usercount = (int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param));
        if (usercount <= 0)
        {
            labMsg.Text = "旧密码错误";
        }
        else
        {
            //执行数据库操作修改密码
            string updatesql = "update administrator set adminpass=@adminpass where adminuser=@adminuser";
            SqlParameter[] updateparam ={
                                           new SqlParameter("@adminuser",SqlDbType.Char),
                                           new SqlParameter("@adminpass",SqlDbType.VarChar)
                                       };
            updateparam[0].Value = adminuser;
            updateparam[1].Value = newPassword;
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, updatesql, updateparam) > 0)
            {
                labMsg.Text = "修改成功";
            }
            else
            {
                labMsg.Text = "操作失误";
            }
        }
    }
}