<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_4.aspx.cs" Inherits="test3_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>大连海事大学</p>
    <p>.net体系与编程</p>
    <form id="form1" runat="server">
    <h3>颜色选择:</h3>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
        AutoPostBack="True">        
        <asp:ListItem>red</asp:ListItem>
        <asp:ListItem>blue</asp:ListItem>
        <asp:ListItem>black</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
        AutoPostBack="True">
        <asp:ListItem>red</asp:ListItem>
        <asp:ListItem>blue</asp:ListItem>
        <asp:ListItem>black</asp:ListItem>
    </asp:CheckBoxList>
    </form>
    <script type="text/javascript">
        //var  变量集合
        var para = document.getElementsByTagName("p");//getElementsByTagName() 方法可返回带有指定标签名的对象的集合。
        for (var i = 0; i < para.length; i++) {
            para[i].setAttribute("style", "color:<% =bgcolor%>");//setAttribute()对属性节点的值做出修改
        }
    </script>
</body>
</html>
