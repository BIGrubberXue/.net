using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registered : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void return_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("index.aspx");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str = "insert into user_data values('"+uname.Text.Trim()+"','"+pwd1.Text.Trim()+"','')";    //SQL语句将前台中TextBox中的存到数据库的字段中          
        string test_str = "select username from user_data where username='"+uname.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        SqlCommand cmd_test= new SqlCommand(test_str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        SqlDataReader dr = cmd_test.ExecuteReader();//从数据库中读取数据
        if (dr.Read())
        {
            Response.Write("<script>alert('用户名已注册')</script>");
        }
        else
        {
            cmd.ExecuteNonQuery(); //在数据库中执行语句
            Session["username"] = uname.Text.Trim(); //将用户名保存到SESSION中
            Response.Redirect("surf.aspx");//成功后页面跳转
        }
        con.Close();
        
    }
}
