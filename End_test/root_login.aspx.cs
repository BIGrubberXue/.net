using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class root_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        //打开数据库连接
        con.Open();
        string str = "select * from user_data where username='root' and password='" + TextBox2.Text.Trim() + "'";    //SQL语句将前台中TextBox中的存到数据库的字段中       
        SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
        if (dr.Read())//判断SQL执行登录是否成功，成功执行下面语句
        {
            Response.Redirect("root_show.aspx");//成功后页面跳转
        }
        else　　//不成功提示登录失败
        {
            Response.Write("<script>alert('密码错误！')</script>");
        }
        con.Close(); //关闭数据库链接     
    }

    protected void return_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("surf.aspx");
    }
}