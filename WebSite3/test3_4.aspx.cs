using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test3_4 : System.Web.UI.Page
{

    public string bgcolor = "red";
    public void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && RadioButtonList1.SelectedValue != "")
        {
            bgcolor = RadioButtonList1.SelectedValue;
        }
    }
    public void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bgcolor = RadioButtonList1.SelectedValue;
    }
    public void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bgcolor = CheckBoxList1.SelectedValue;
    }
}