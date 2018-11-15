using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test3_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string name = Text1.Value;
            string sex = Text2.Value;
            string age = Text3.Value;
            string post_code = Text4.Value;
            string address = Text5.Value;
            string introduction = Text6.Value;
            Response.Write("姓名：" + name + "<br/>");
            Response.Write("性别：" + sex + "<br/>");
            Response.Write("年龄：" + age + "<br/>");
            Response.Write("邮编：" + post_code + "<br/>");
            Response.Write("地址：" + address + "<br/>");
            Response.Write("自我介绍：" + introduction + "<br/>");
        }
    }
}