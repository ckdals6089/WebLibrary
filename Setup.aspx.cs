using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Theme"] != null)
        {
            Master.Page.Theme = (String)Session["Theme"];
        }
        else
        {
            Session["Theme"] = "Theme1";
            Master.Page.Theme = (string)Session["Theme"];
        }
    }

    protected void btndark_Click(object sender, EventArgs e)
    {
        if (Session["Theme"] != null)
        {
            Session["Theme"] = "Theme2";
            Server.Transfer(Request.Path);
        }
    }

    protected void btnOriginal_Click(object sender, EventArgs e)
    {
        if (Session["Theme"] != null)
        {
            Session["Theme"] = "Theme1";
            Server.Transfer(Request.Path);
        }
    }
}