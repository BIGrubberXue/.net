using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = Request.QueryString["id"];
            string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            //打开数据库连接
            con.Open();
            string str = "select * from user_data where username='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
            SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
            if (dr.Read())
            {
                string str_address = dr["address"].ToString();
                string[] s = str_address.Split(new Char[] { '-' });
                int sex_num = int.Parse(dr["sex"].ToString());
                if (sex_num == 0)
                {
                    /* for (int i = 0; i < this.RadioButtonList1.Items.Count; i++)
                     {
                         if (this.RadioButtonList1.Items[i].Text == "Male")
                         {
                             this.RadioButtonList1.Items[i].Selected = true;
                         }
                         Response.Write(i);
                     }
                     */
                    this.RadioButtonList1.Items[0].Selected = true;
                }
                else if (sex_num == 1)
                {
                    this.RadioButtonList1.Items[1].Selected = true;
                }
                else if (sex_num == 2)
                {
                    this.RadioButtonList1.Items[2].Selected = true;
                }
                change_msg.Text = dr["message"].ToString();
                if (s[0] == "辽宁")
                {
                    drop1.Items[0].Selected = true;
                    drop2.Items.Clear();
                    drop2.Items.Add(s[1]);
                }
                else if (s[0] == "广东")
                {
                    drop1.Items[1].Selected = true;
                    drop2.Items.Clear();
                    drop2.Items.Add(s[1]);
                }
                else
                {
                    drop1.Items[2].Selected = true;
                    drop2.Items.Clear();
                    drop2.Items.Add(s[1]);
                }
            }
            con.Close(); //关闭数据库链接   
        }

    }
    protected void change_msg_Click(object sender, EventArgs e)
    {
        int sex_all;
        string sex_str = RadioButtonList1.SelectedValue;
        if (sex_str == "Male")
        {
            sex_all = 0;
        }
        else if (sex_str == "Female")
        {
            sex_all = 1;
        }
        else
        {
            sex_all = 2;
        }
        string address = "" + drop1.SelectedItem.Text.Trim() + "-" + drop2.SelectedItem.Text.Trim() + "";
        string new_msg = change_msg1.Text;
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string str = "update user_data set message ='" + new_msg.Trim() + "',address='" + address + "',sex='" + sex_all + "' Where username='" + Request.QueryString["id"] + "'";
        SqlCommand cmd = new SqlCommand(str, con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        try
        {
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception)
        {
            Response.Write("<script>alert('更改出错')</script>");
        }
        Response.Redirect("surf.aspx");
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //drop1.SelectedValue;//用这句获取1的取值。
        //drop2.DataSource = 数据源;
        //drop2.DataTextField = "提供显示出来的文字的字段名";
        //drop2.DataValueField = "提供隐藏的Value的字段名";
        if (drop1.SelectedItem.Text == "辽宁")
        {
            drop2.Items.Clear();
            drop2.Items.Add("沈阳");
            drop2.Items.Add("大连");
        }
        if (drop1.SelectedItem.Text == "广东")
        {
            drop2.Items.Clear();
            drop2.Items.Add("广州");
            drop2.Items.Add("深圳");
        }
        if (drop1.SelectedItem.Text == "浙江")
        {
            drop2.Items.Clear();
            drop2.Items.Add("杭州");
            drop2.Items.Add("宁波");
        }
    }

}