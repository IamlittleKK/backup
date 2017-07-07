using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断用户是否登录
        if (Session["adminuser"] == null || Session["adminuser"].ToString().Length == 0)
        {
            Response.Redirect("login.aspx");
        }
    }
}