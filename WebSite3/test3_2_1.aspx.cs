using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test3_2_1 : System.Web.UI.Page
{
    String input_num;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button1.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button2.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button3.Text;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button4.Text;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button5.Text;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button6.Text;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button7.Text;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button8.Text;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button9.Text;
    }
    protected void Button0_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text + Button0.Text;
    }
    protected void Button_add_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
        TextBox3.Text = "1";
        TextBox1.Text = "";
    }
    protected void Button_sub_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
        TextBox3.Text = "2";
        TextBox1.Text = "";
    }
    protected void Button_mul_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
        TextBox3.Text = "3";
        TextBox1.Text = "";
    }
    protected void Button_divi_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
        TextBox3.Text = "4";
        TextBox1.Text = "";
    }
    protected void Button_sum_Click(object sender, EventArgs e)
    {
        float a = Convert.ToSingle(TextBox2.Text);
        int Oper = int.Parse(TextBox3.Text);
        float b=Convert.ToSingle(TextBox1.Text);
        float sum=0;
        switch (Oper)
        {
            case 1:
                sum = a + b;
                break;
            case 2:
                sum = a - b;
                break;
            case 3:
                sum = a * b;
                break;
            case 4:
                sum = a / b;
                break;
        }
        TextBox1.Text = sum.ToString();
        TextBox3.Text = "0"; TextBox2.Text = "0";
    } 
}