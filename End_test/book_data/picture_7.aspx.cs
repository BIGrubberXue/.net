using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_data_picture_7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Clear();
        }
    }


    protected void button1_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("b_book.aspx?book_id=7");
        }
        else
        {
            Response.Write("<script>alert('请先进行注册')</script>");
        }
        
    }

    protected void button2_Click(object sender, EventArgs e)
    {
<<<<<<< HEAD
        Response.Redirect("book_id_com.aspx?book_id=7");
        
    }

    protected void button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../surf.aspx");
=======
        if (Session["username"] != null)
        {
            Response.Redirect("book_id_com.aspx?book_id=7");
        }
        else
        {
            Response.Write("<script>alert('请先进行注册')</script>");
        }
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
    }
}