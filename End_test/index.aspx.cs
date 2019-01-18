using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_button_click(object sender, EventArgs e)
    {
        Server.Transfer("login.aspx",true);
    }
    protected void registered_button_click(object sender, EventArgs e)
    {
        Server.Transfer("registered.aspx",true);
    }
    protected void surf_button_click(object sender, EventArgs e)
    {
        Server.Transfer("surf.aspx",true);
    }
}