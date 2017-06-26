using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class coffee_list_album : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ShowPhoto();
        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        try
        {
            lblErr.Text = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("Pictures") + "\\" + FileUpload1.FileName);
            }
            ShowPhoto();
        }
        catch (Exception ex)
        {
            lblErr.Text = ex.Message;
        }
    }
    void ShowPhoto()
    {
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath("Pictures"));
        FileInfo[] fInfo = dir.GetFiles();
        lblShow.Text = "";
        int n = 0;
        foreach (FileInfo result in fInfo)
        {
            n++;
            lblShow.Text += "<a href=Pictures/" + result.Name + " target=_blank><img scr=Pictures/" + result.Name + " width=90 height=60 border=0></a> ";
            if (n % 4 == 0)
            {
                lblShow.Text += "<p>";
            }
        }
    }

    
}