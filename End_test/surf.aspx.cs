using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class surf : System.Web.UI.Page
{
    public String[] pic = {"picture_keep/picture0.jpg","picture_keep/picture1.jpg","picture_keep/picture2.jpg", "picture_keep/picture3.jpg", "picture_keep/picture4.jpg",
      "picture_keep/picture5.jpg", "picture_keep/picture6.jpg", "picture_keep/picture7.jpg", "picture_keep/picture8.jpg"};
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
<<<<<<< HEAD
            if (Session["Username"] != null)
            {
                string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection con = new SqlConnection(conn);
                //打开数据库连接
                con.Open();
                string str = "select * from user_data where username='" + Session["Username"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
                SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
                dr.Read();
                int sex_num = int.Parse(dr["sex"].ToString());
                string sex;
                if (sex_num == 0)
                {
                    sex = "先生";
                }
                else
                {
                    sex = "小姐";
                }
                Response.Write("欢迎您，" + Session["Username"] + "" + sex);
                login_registered.Visible = false;
                exit_btn.Visible = true;
            }
            else {
                login_registered.Visible = true;
                exit_btn.Visible = false;
            }
            Image0.ImageUrl = pic[0];
            Image1.ImageUrl = pic[1];
            Image2.ImageUrl = pic[2];
=======
        if(Session["Username"] != null)
        {
            string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            //打开数据库连接
            con.Open();
            string str = "select * from user_data where username='" + Session["Username"].ToString()+ "'";
            SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
            SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
            dr.Read();
            int sex_num = int.Parse(dr["sex"].ToString());
            string sex;
            if (sex_num==0) {
                sex = "先生";
            }
            else {
                sex = "小姐";
            }
            Response.Write("欢迎您，"+ Session["Username"]+""+sex);
            login_registered.Visible = false  ;
        }
        
        Image0.ImageUrl = pic[0];
        Image1.ImageUrl = pic[1];
        Image2.ImageUrl = pic[2];
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Image0.ImageUrl = pic[0];
        Image1.ImageUrl = pic[1];
        Image2.ImageUrl = pic[2];
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Image0.ImageUrl = pic[3];
        Image1.ImageUrl = pic[4];
        Image2.ImageUrl = pic[5];
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Image0.ImageUrl = pic[6];
        Image1.ImageUrl = pic[7];
        Image2.ImageUrl = pic[8];
    }

    protected void Image0_Click(object sender, ImageClickEventArgs e)
    {
        if (Image0.ImageUrl == pic[0]) { Response.Redirect("book_data/picture_0.aspx"); }
        if (Image0.ImageUrl == pic[3]) { Response.Redirect("book_data/picture_3.aspx"); }
        if (Image0.ImageUrl == pic[6]) { Response.Redirect("book_data/picture_6.aspx"); }

    }

    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        if (Image1.ImageUrl == pic[1]) { Response.Redirect("book_data/picture_1.aspx"); }
        if (Image1.ImageUrl == pic[4]) { Response.Redirect("book_data/picture_4.aspx"); }
        if (Image1.ImageUrl == pic[7]) { Response.Redirect("book_data/picture_7.aspx"); }
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        if (Image2.ImageUrl == pic[2]) { Response.Redirect("book_data/picture_2.aspx"); }
        if (Image2.ImageUrl == pic[5]) { Response.Redirect("book_data/picture_5.aspx"); }
        if (Image2.ImageUrl == pic[8]) { Response.Redirect("book_data/picture_8.aspx"); }
    }

    protected void massage_btn_Click(object sender, EventArgs e)
    {
        if(Session["Username"] == null)
        {
            Response.Write("<script>alert('未登陆账号')</script>");
        }
        else
        {
            Response.Redirect("message.aspx?id="+ Session["Username"].ToString()+"");
        }
    }

    protected void login_registered_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
<<<<<<< HEAD
        if (Session["Username"] == null)
        {
            Response.Write("<script>alert('未登陆账号')</script>");
        }
        else
        {
            Response.Redirect("book_data/b_book_list.aspx");
        }
       
    }

    protected void Imagebutton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_0.aspx");
    }

    protected void Imagebutton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_1.aspx");
    }

    protected void Imagebutton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_2.aspx");
    }

    protected void Imagebutton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_3.aspx");
    }

    protected void Imagebutton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_4.aspx");
    }

    protected void Imagebutton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_5.aspx");
    }

    protected void Imagebutton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_6.aspx");
    }

    protected void Imagebutton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_7.aspx");
    }

    protected void Imagebutton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("book_data/picture_8.aspx");
    }

    protected void exit_btn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect(Request.Url.ToString());
=======
        Response.Redirect("book_data/b_book_list.aspx");
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
    }
}