<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_5.aspx.cs" Inherits="test3_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    //实现两个ListBox列表中元素的移动，例如，选择列表1中的“项目1”元素，单击“移动”按钮，列表1中的元素“项目1”会移动到列表2中去。
    <form id="form1" runat="server">
        <asp:ListBox ID="ListBox1" Rows="5" SelectionMode="Multiple" Font-Size="24px" runat="server">
        <asp:listItem>表1-项目1</asp:listItem>
        <asp:listItem>表1-项目2</asp:listItem>
        <asp:listItem>表1-项目3</asp:listItem>
        <asp:listItem>表1-项目4</asp:listItem>
        </asp:ListBox>
        <asp:ListBox ID="ListBox2" Rows="5" SelectionMode="Multiple" Font-Size="24px" runat="server">
        <asp:listItem>表2-项目1</asp:listItem>
        <asp:listItem>表2-项目2</asp:listItem>
        <asp:listItem>表2-项目3</asp:listItem>
        <asp:listItem>表2-项目4</asp:listItem>
        </asp:ListBox>
        <asp:Button ID="move_list1" OnClick="move_list1_Click" runat="server" Text="左移"/>
        <asp:Button ID="move_list2" OnClick="move_list2_Click" runat="server" Text="右移"/>
    </form>

</body>
</html>
