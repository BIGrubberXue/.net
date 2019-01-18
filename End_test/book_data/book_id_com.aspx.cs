using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_data_book_id_com : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            if (Session["username"] == null)
            {
                mesg_c.Visible = false;
                mesg_ch.Visible = false;
            }
            Response.Clear();
            string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            //打开数据库连接
            con.Open();
            string str = "select * from book_com where book_id = '"+Request.QueryString["book_id"]+"'";    //SQL语句将前台中TextBox中的存到数据库的字段中       
            SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
            SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
            Response.Write("<section id=\"two\" class=\"wrapper style2 alt\">");
            while(dr.Read())
            {
                string msg = dr["com"].ToString();
                string username = dr["username"].ToString();
                Response.Write("<div class=\"inner\"><div style=\"width:50 %; margin: 0px auto; \" class=\"spotlight\">");
                Response.Write(" <div class=\"content\" style=\"color:white;background-color:aquamarine\"");
                Response.Write(" <p> 用户名: "+ username + "</p>");
                Response.Write(" </div>");
                Response.Write(" <div class=\"content\">");
                Response.Write(" <p> 留言: " + msg + "</p>");
                Response.Write(" </div>");
                Response.Write("</div></div>");
            }
            Response.Write("</section>");
            con.Close();
        }
    }

    protected void mesg_c_Click(object sender, EventArgs e)
    {
        //string str = "update book_com Set com ='" + mesg_ch.Text.Trim() + "' Where username='" + Session["username"].ToString() + "'";    //SQL语句将前台中TextBox中的存到数据库的字段中
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str = "insert into book_com values('" + Request.QueryString["book_id"] + "','"+mesg_ch.Text.Trim()+"','"+ Session["username"]+ "');";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataReader dr = cmd1.ExecuteReader();//从数据库中读取数据
        if(dr.Read())
        {
            Response.Write("<script>alert('评论成功')</script>");
        }
        con.Close(); //关闭数据库链接 
        Response.Redirect(Request.Url.ToString());
    }


    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("picture_"+ Request.QueryString["book_id"] + ".aspx");
    }
}