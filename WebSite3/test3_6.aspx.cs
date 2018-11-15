using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test3_6 : System.Web.UI.Page
{
    public string web_href;
    //使用两个下拉列表框实现级联变化过程。一个DropDownList显示网站类型，另一个DropDownList显示具体的网站，
    //显示网站的下拉列表框会根据显示网站类型的下拉列表框中所选值的不同而显示不同的网站。
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    //drop1.SelectedValue;//用这句获取1的取值。
    //drop2.DataSource = 数据源;
    //drop2.DataTextField = "提供显示出来的文字的字段名";
    //drop2.DataValueField = "提供隐藏的Value的字段名";
    if (drop1.SelectedItem.Text=="娱乐"){
        drop2.Items.Clear();
        drop2.Items.Add("优酷");
        drop2.Items.Add("爱奇艺");
        }
    if(drop1.SelectedItem.Text=="科技"){
        drop2.Items.Clear();
        drop2.Items.Add("GITHUB");
        drop2.Items.Add("CSND");
        }    
    }
    protected void Button_Click(object sender, EventArgs e){
    if(drop2.SelectedItem.Text=="爱奇艺"){
        web_href= "http://www.aqiyi.com";
        }
    if(drop2.SelectedItem.Text=="优酷"){
        web_href= "http://www.youku.com";
        }
    if(drop2.SelectedItem.Text=="GITHUB"){
        web_href= "http://www.github.com";
        }    
    if (drop2.SelectedItem.Text == "CSND"){
            web_href = "https://www.csdn.net/";
        }
    Response.Redirect(web_href, false);
    }

}