using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class book_data_b_book_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str = "select book_id 书本序号 ,quantity 数量,price 单价 ,address 地址 from b_book where username='" + Session["Username"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
        GridView1.DataSource = dr;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../surf.aspx");
    }
}