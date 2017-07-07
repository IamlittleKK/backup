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
        
            string cid = Request.Params["cid"];//接收分类参数
            if (cid != null)
            {
                //如果是按分类查询，则根据分类重新生成查询语句，读取该分类的所有文章数据
                SqlDataSource1.SelectCommand = "SELECT articles.id,articles.class,articles.title," + "articles.pushTime,articles.keyWords,";
                SqlDataSource1.SelectCommand += "articles.[content],articles.clockCount,articleClass.cname" + "FROM articles,articleClass";
                SqlDataSource1.SelectCommand += "where articles.class=articleClass.cid and articleClass.cid=" + cid + "ORDER BY articles.id DESC";
            }
       
    }
}