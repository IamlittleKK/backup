using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ModifyPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //获得输入的新旧密码与登录时保存的用户名
        string oldPassword = txtOldPassword.Text.Replace("'","");
        string newPassword = txtNewPassword.Text.Replace("'","");
        string stdXh = Session["stdXh"].ToString();
        //查询数据库，验证密码是否正确
        string sql = "select count(*) from stdInfo where stdXh=@stdXh and stdMm=@stdMm";
        SqlParameter[] param ={
                        new SqlParameter("@stdXh",SqlDbType.Char),
                        new SqlParameter("@stdMm",SqlDbType.VarChar)
                             };
        param[0].Value = stdXh;
        param[1].Value = oldPassword;
        int usercount = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param)));
        if (usercount <= 0)//如果查询不到记录，表示旧密码错误
        {
            labmsg.Text = "旧密码错误";
        }
        else
        { 
            //执行数据库操作修改密码
            string updatesql = "update stdInfo set stdMm=@stdMm where stdXh=@stdXh";
            SqlParameter[] updateparam ={
                        new SqlParameter("@stdMm",SqlDbType.VarChar),
                        new SqlParameter("stdXh",SqlDbType.Char)
                                 };
            updateparam[0].Value = newPassword;
            updateparam[1].Value = stdXh;
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, updatesql, updateparam) > 0)
            {
                labmsg.Text = "修改成功";
            }
            else
            {
                labmsg.Text = "操作错误";
            }
        }
    }

    /*protected void Button1_Click(object sender, EventArgs e)
    {
        //获得输入的新旧密码与登录时保存的用户名
        string oldPassword = txtOldPassword.Text.Replace("'", "");
        string newPassword = txtNewPassword.Text.Replace("'", "");
        string stdXh = Session["stdXh"].ToString();
        //查询数据库，验证密码是否正确
        string sql = "select count(*) from stdInfo where stdXh=@stdXh and stdMm=@stdMm";
        SqlParameter[] param ={
                        new SqlParameter("@stdXh",SqlDbType.Char),
                        new SqlParameter("@stdMm",SqlDbType.VarChar)
                             };
        param[0].Value = stdXh;
        param[1].Value = oldPassword;
        int usercount = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param)));
        if (usercount <= 0)//如果查询不到记录，表示旧密码错误
        {
            labmsg.Text = "旧密码错误";
        }
        else
        {
            //执行数据库操作修改密码
            string updatesql = "update stdInfo set stdMm=@stdMm where stdXh=@stdXh";
            SqlParameter[] updateparam ={
                        new SqlParameter("@stdMm",SqlDbType.VarChar),
                        new SqlParameter("stdXh",SqlDbType.Char)
                                 };
            updateparam[0].Value = newPassword;
            updateparam[1].Value = stdXh;
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, updatesql, updateparam) > 0)
            {
                labmsg.Text = "修改成功";
            }
            else
            {
                labmsg.Text = "操作错误";
            }
        }
    }*/
}