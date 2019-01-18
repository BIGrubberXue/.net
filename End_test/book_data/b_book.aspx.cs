using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_data_b_book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
<<<<<<< HEAD
        int[] price = { 101, 117, 48, 67, 136, 64, 31, 20, 102 };
        Response.Clear();
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        string num = TextBox2.Text.Trim();
        if (IsNumberic(num))
        {
            //打开数据库连接
            con.Open();
            int price_num =int.Parse(Request.QueryString["book_id"]);
            string str = "insert into b_book values('" + Request.QueryString["book_id"] + "','" +TextBox2.Text.Trim()+"','"+price[price_num] + "','" + Session["username"] + "','"+TextBox1.Text.Trim()+"');";
            SqlCommand cmd1 = new SqlCommand(str, con);
            SqlDataReader dr = cmd1.ExecuteReader();//从数据库中读取数据
            Response.Write("<script>alert('成功订购此书')</script>");
            con.Close();
            Response.Redirect("../surf.aspx");
        }
        else
        {
            Response.Write("<script>alert('数量输入有误')</script>");
        }
=======
        int[] price = { 140, 140, 140, 67, 136, 64, 31, 20, 102 };
        Response.Clear();
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str_num = "select count(*) from b_book";    //SQL语句将前台中TextBox中的存到数据库的字段中    
        SqlCommand cmd = new SqlCommand(str_num, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        int num_keep = (int)cmd.ExecuteScalar();
        num_keep++;
        int price_num =int.Parse(Request.QueryString["book_id"]);
        string str = "insert into b_book values('" + num_keep + "','" + Request.QueryString["book_id"] + "','" +TextBox2.Text.Trim()+"','"+price[price_num] + "','" + Session["username"] + "','"+TextBox1.Text.Trim()+"');";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataReader dr = cmd1.ExecuteReader();//从数据库中读取数据
        Response.Write("<script>alert('成功订购此书')</script>");
        con.Close();
        Response.Redirect("../surf.aspx");
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("b_book_list.aspx");
    }
<<<<<<< HEAD
    private bool IsNumberic(string Text)
    {
        try
        {
            int var1 = Convert.ToInt32(Text);
            return true;
        }
        catch
        {
            return false;
        }
    }

=======
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
}