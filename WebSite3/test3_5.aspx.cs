using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test3_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void move_list1_Click(object sender, EventArgs e)
    {
        ArrayList mid_item = new ArrayList();
        foreach (ListItem item in this.ListBox1.Items)//forEach() 方法用于调用数组的每个元素，并将元素传递给回调函数。
        {
            if (item.Selected)
            {
                mid_item.Add(item);
            }    
        }
        foreach (ListItem item in mid_item)
        {
            this.ListBox2.Items.Add(item);
            this.ListBox1.Items.Remove(item);
        }
    }
    protected void move_list2_Click(object sender, EventArgs e)
    {
        ArrayList mid_item = new ArrayList();
        foreach (ListItem item in this.ListBox2.Items)//forEach() 方法用于调用数组的每个元素，并将元素传递给回调函数。
        {         
            if (item.Selected)
            {
                mid_item.Add(item);
            }
        }
        foreach (ListItem item in mid_item)
        {
            this.ListBox1.Items.Add(item);
            this.ListBox2.Items.Remove(item);
        }
    }
}