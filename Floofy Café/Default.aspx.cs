using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "以獨家進口的義大利Parrottacaffe咖啡豆萃取的咖啡，製作的手工特製提拉米蘇，口感溼潤綿密，香氣豐富立體，值得推薦，每份200元。";
        string text = "<font size=5><MARQUEE>" + str + "</MARQUEE></font>";
        Literal1.Text = text;
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.inside.com.tw/2013/09/03/8-things-ive-learned-as-a-web-engineer");
    }
}