<%@ Page Language="C#" AutoEventWireup="true" CodeFile="b_book_list.aspx.cs" Inherits="book_data_b_book_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:300px;margin: 10px auto;">
            <asp:GridView ID="GridView1" runat="server" ></asp:GridView>
        </div>
        <div style="width:300px;margin: 10px auto;">
            <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
