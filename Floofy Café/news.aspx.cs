using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text=="admin")
        {
            if (TextBox2.Text == "admin")
            {
                MultiView1.ActiveViewIndex = 2;
            }
            else lblShow.Text = "帳號密碼錯誤";
        }
        else lblShow.Text = "帳號密碼錯誤";
    }
    protected void btnLoginout_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Redirect("news.aspx");
    }
}