using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_achievement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断用户是否登录
        if (Session["adminuser"] == null || Session["adminuser"].ToString().Length == 0)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //获得各个输入控件的值保存在变量中

        string stdXh = ddlXtdXh.SelectedValue;
        string aeid = txtaeid.SelectedValue;
        string aeKcmc = txtaeid.SelectedItem.Text;
        string aeKssj = txtAeKssj.Text;
        string aeKscs = txtAeKscs.Text;
        string aeKscj = txtAeKscj.Text;
        //查询输入学号指定课程、指定参数的考试成绩是否已经录入
        //Response.Write("学号是"+stdXh+"课程编号是"+aeid+"课程名称是"+aeKcmc+"考试时间是"+aeKssj+"考试次数是"+aeKscs+"考试成绩是"+aeKscj);
        string sql = "select count(*) from achievement where stdXh=@stdXh and aeid=@aeid and aeKscs =@aeKscs";
        SqlParameter[] param ={
                                  new SqlParameter("@stdXh",SqlDbType.Char),
                                  new SqlParameter("@aeid",SqlDbType.Int),
                                  new SqlParameter("@aeKscs",SqlDbType.Int)
                             };
        param[0].Value = stdXh;
        param[1].Value = aeid;
        param[2].Value = aeKscs;
        int aetcout = (int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param));
        if (aetcout <= 0)//插入成绩
        {
            string insertsql = "insert into achievement(aeid,stdXh,aeKcmc,aeKssj,aeKscs,aeKscj) values(@aeid,@stdXh,@aeKcmc,@aeKssj,@aeKscs,@aeKscj)";
            //准备插入参数
            SqlParameter[] insertparam ={
                                            new SqlParameter("@aeid",SqlDbType.Int),
                                            new SqlParameter("@stdXh",SqlDbType.Char),
                                            new SqlParameter("@aekcmc",SqlDbType.NVarChar),
                                            new SqlParameter("@aeKssj",SqlDbType.DateTime),
                                            new SqlParameter("@aeKscs",SqlDbType.Int),
                                            new SqlParameter("@aeKscj",SqlDbType.Float)
                                       };
            insertparam[0].Value = aeid;
            insertparam[1].Value=stdXh;
            insertparam[2].Value=aeKcmc;
            insertparam[3].Value=aeKssj;
            insertparam[4].Value = aeKscs;
            insertparam[5].Value = aeKscj;
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, insertsql, insertparam) > 0)//执行插入语句
            {
                labMsg.Text = "添加成绩成功";
            }
            else
            {
                labMsg.Text = "操作错误";
            }
        }
        else
        {
            labMsg.Text = "学号为【" + stdXh + "】学生【" + aeKcmc + "】课程第" + aeKscs + "次考试成绩已经录入";
        }
    }
}