using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test3_3 : System.Web.UI.Page
{
    public String[] pic = {"picture/1.jpg","picture/2.jpg" };
    public class Pic_page
    {
        private int page_num=0;
        public void set_page(int page_num)
        {
            this.page_num = page_num;
        }
        public int get_page()
        {
            return page_num;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Pic_page page = new Pic_page();
        Image1.ImageUrl = pic[page.get_page()];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Pic_page page = new Pic_page();
        int mid;
        if (page.get_page() != 3)
        {
            mid = page.get_page() + 1;
            page.set_page(mid);
            Image1.ImageUrl = pic[page.get_page()];
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Pic_page page = new Pic_page();
        int mid;
        if (page.get_page() != 0)
        {
            mid = page.get_page() - 1;
            page.set_page(mid);
            Image1.ImageUrl = pic[page.get_page()];
        }
    }
}