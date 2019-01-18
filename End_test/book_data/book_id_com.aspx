<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_id_com.aspx.cs" Inherits="book_data_book_id_com" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/main.css" rel="stylesheet" />
    <link href="../css/button_broder.css" rel="stylesheet" />
    <link href="../css/self-style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox runat="server" id="mesg_ch" Height="127px" Width="564px"/>      
        <asp:Button ID="mesg_c" runat="server" Text="提交评论" onclick="mesg_c_Click" CssClass="auto-style1" Height="57px" Width="134px"/>
        <asp:Button ID="return" runat="server" Text="返回" OnClick="return_Click" CssClass="auto-style1" Height="57px" Width="134px"/>
    </form>
</body>

</html>
