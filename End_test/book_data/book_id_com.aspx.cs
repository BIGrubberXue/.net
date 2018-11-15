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
        Response.Clear();
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str = "select * from book_com where book_id = '"+Request.QueryString["book_id"]+"'";    //SQL语句将前台中TextBox中的存到数据库的字段中       
        SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
        Response.Write("--------------------------------------<br/>");
        while (dr.Read())
        {
            string msg = dr["com"].ToString();
            Response.Write("username:<br/>"+dr["username"].ToString()+ "<br/>");
            Response.Write("message:<br/>" + msg+ "<br/>");
            Response.Write("--------------------------------------<br/>");
        }
        con.Close();
    }

    protected void mesg_c_Click(object sender, EventArgs e)
    {
        //string str = "update book_com Set com ='" + mesg_ch.Text.Trim() + "' Where username='" + Session["username"].ToString() + "'";    //SQL语句将前台中TextBox中的存到数据库的字段中
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str_num = "select count(*) from book_com";    //SQL语句将前台中TextBox中的存到数据库的字段中    
        SqlCommand cmd = new SqlCommand(str_num, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        int num_keep = (int)cmd.ExecuteScalar();
        num_keep++;
        string str = "insert into book_com values('"+ num_keep + "','" + Request.QueryString["book_id"] + "','"+mesg_ch.Text.Trim()+"','"+ Session["username"]+ "');";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataReader dr = cmd1.ExecuteReader();//从数据库中读取数据
        if(dr.Read())
        {
            Response.Write("<script>alert('评论成功')</script>");
        }
        con.Close(); //关闭数据库链接 
        Response.Redirect(Request.Url.ToString());
    }

}