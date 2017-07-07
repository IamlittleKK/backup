using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_addStuInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断用户是否登录
        if (Session["adminuser"] == null || Session["adminuser"].ToString().Length == 0)
        {
            Response.Redirect("login.aspx");
        }
    }
    /*protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //获得FormView控件中各个属性控件的值
        string StdXh = ((TextBox)FormView1.FindControl("txtStdXh")).Text;
        string StdMm = ((TextBox)FormView1.FindControl("txtStdMm")).Text;
        string StdSfzhm = ((TextBox)FormView1.FindControl("txtStdSfzhm")).Text;
        string StdXm = ((TextBox)FormView1.FindControl("txtStdXm")).Text;
        string StdRxsj = ((TextBox)FormView1.FindControl("txtStdRxsj")).Text;
        string StdSzbj = ((TextBox)FormView1.FindControl("txtStdSzbj")).Text;
        string StdJtdz = ((TextBox)FormView1.FindControl("txtStdJtdz")).Text;
        string StdLxdh = ((TextBox)FormView1.FindControl("txtStdLxdh")).Text;
        if (StdXh.Length != 12)//验证学号是否符合格式
        {
            labMsg.Text = "学号必须为12位数字字符串！";
        }
        else
        {
            //查询学好是否存在
            string sql = "select count(*) from stdInfo where stdXh=@stdXh";
            SqlParameter[] param ={
                                     new SqlParameter("@stdXh",SqlDbType.Char)
                                 };
            param[0].Value = StdXh;
            int usercout = (int)sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param);
            if (usercout == 0)
            {
                //添加学生记录
                string insertsql = "insert into stdInfo(stdXh,stdMm,stdSfzhm,stdXm,stdRxsj,stdSzbj,stdSfby,stdJtdz,stdLxdh)";
                insertsql += "values(@stdXh,@stdMm,@stdSfzhm,@stdXm,@stdRxsj,@stdSzbj,0,@stdJtdz,@stdLxdh)";
                SqlParameter[] insertparam ={
                                                new SqlParameter("@stdXh",SqlDbType.Char),
                                                new SqlParameter("@stdMm",SqlDbType.Char),
                                                new SqlParameter("@stdSfzhm",SqlDbType.Char),
                                                new SqlParameter("@stdXm",SqlDbType.NVarChar),
                                                new SqlParameter("@stdRxsj",SqlDbType.DateTime),
                                                new SqlParameter("@stdSzbj",SqlDbType.Char),
                                                new SqlParameter("@stdJtdz",SqlDbType.NVarChar),
                                                new SqlParameter("@stdLxdh",SqlDbType.Char)
                            
                                           };
                insertparam[0].Value = StdXh;
                insertparam[1].Value = StdMm;
                insertparam[2].Value = StdSfzhm;
                insertparam[3].Value = StdXm;
                insertparam[4].Value = StdRxsj;
                insertparam[5].Value = StdSzbj;
                insertparam[6].Value = StdJtdz;
                insertparam[7].Value = StdLxdh;
                //执行添加语句
                if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, insertsql, insertparam) > 0)
                { labMsg.Text = "添加成功"; }
                else
                { labMsg.Text = "操作错误"; }
            }
            else
            { labMsg.Text = "学号已存在"; }
        }
    }*/
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //获得FormView控件中各个属性控件的值
        string StdXh = txtStdXh.Text;
        string StdMm = txtStdMm.Text;
        string StdSfzhm = txtStdSfzhm.Text;
        string StdXm = txtStdXm.Text;
        string StdRxsj = txtStdRxsj.Text;
        string StdSzbj = txtStdSzbj.Text;
        string StdJtdz = txtStdJtdz.Text;
        string StdLxdh = txtStdLxdh.Text;
        if (StdXh.Length != 12)//验证学号是否符合格式
        {
            labMsg.Text = "学号必须为12位数字字符串！";
        }
        else
        {
            //查询学好是否存在
            string sql = "select count(*) from stdInfo where stdXh=@stdXh";
            SqlParameter[] param ={
                                     new SqlParameter("@stdXh",SqlDbType.Char)
                                 };
            param[0].Value = StdXh;
            int usercout = (int)sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param);
            if (usercout == 0)
            {
                //添加学生记录
                string insertsql = "insert into stdInfo(stdXh,stdMm,stdSfzhm,stdXm,stdRxsj,stdSzbj,stdSfby,stdJtdz,stdLxdh)";
                insertsql += "values(@stdXh,@stdMm,@stdSfzhm,@stdXm,@stdRxsj,@stdSzbj,0,@stdJtdz,@stdLxdh)";
                SqlParameter[] insertparam ={
                                                new SqlParameter("@stdXh",SqlDbType.Char),
                                                new SqlParameter("@stdMm",SqlDbType.Char),
                                                new SqlParameter("@stdSfzhm",SqlDbType.Char),
                                                new SqlParameter("@stdXm",SqlDbType.NVarChar),
                                                new SqlParameter("@stdRxsj",SqlDbType.DateTime),
                                                new SqlParameter("@stdSzbj",SqlDbType.Char),
                                                new SqlParameter("@stdJtdz",SqlDbType.NVarChar),
                                                new SqlParameter("@stdLxdh",SqlDbType.Char)
                            
                                           };
                insertparam[0].Value = StdXh;
                insertparam[1].Value = StdMm;
                insertparam[2].Value = StdSfzhm;
                insertparam[3].Value = StdXm;
                insertparam[4].Value = StdRxsj;
                insertparam[5].Value = StdSzbj;
                insertparam[6].Value = StdJtdz;
                insertparam[7].Value = StdLxdh;
                //执行添加语句
                if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, insertsql, insertparam) > 0)
                { labMsg.Text = "添加成功"; }
                else
                { labMsg.Text = "操作错误"; }
            }
            else
            { labMsg.Text = "学号已存在"; }
        }
    }
}