using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_data_picture_0 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack){
            Response.Clear();
        }
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("b_book.aspx?book_id=0");
        }
        else {
            Response.Write("<script>alert('请先进行注册')</script>");
        }

    }

    protected void button2_Click(object sender, EventArgs e)
    {   
        if (Session["username"] != null)
        {
            Response.Redirect("book_id_com.aspx?book_id=0");
        }
        else
        {
            Response.Write("<script>alert('请先进行注册')</script>");
        }
    }
}