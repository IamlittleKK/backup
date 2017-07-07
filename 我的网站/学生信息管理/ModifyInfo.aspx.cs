using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ModifyInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //加载页面时判断用户是否登录
        if (Session["stdXh"] == null || Session["stdXh"].ToString().Length == 0)
        { Response.Redirect("Default.aspx"); }
    }
    //修改事件，修改变更请求
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        e.Cancel = true;//取消修改事件发到系统框架
        //获得输入信息，并组成SQL语句
        string bgqq = ((TextBox)FormView1.FindControl("stdBgqqTextBox")).Text;
        string stdXh = Session["stdXh"].ToString();
        string sql = "update stdInfo set stdBgqq=@bgqq where stdXh=@stdXh";
        SqlParameter[] param ={
                new SqlParameter("@bgqq",SqlDbType.NVarChar),new SqlParameter("@stdXh",SqlDbType.Char)
                };
        param[0].Value = bgqq;
        param[1].Value = stdXh;
        //执行SQL语句，修改数据库
        sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param);
        //重新加载本页面，刷新数据
        Response.Redirect("ModifyInfo.aspx?stdXh="+stdXh);
    }
    /*protected void LinkButton1_Click1(object sender, EventArgs e)
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
        }*/
    
}