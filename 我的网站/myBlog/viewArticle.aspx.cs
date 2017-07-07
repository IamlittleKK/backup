using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //根据用户输入和文章编号，生成插入文章的SQL语句
        string sql = "insert into review(aid,remen,retitle,recontent,reip) values(" + Request.Params["id"] + ",'"+txtReMan.Text+"','"+txtReTitle.Text+"','"+txtRecontent.Text+"','" + Request.UserHostAddress + "')";
    }
}