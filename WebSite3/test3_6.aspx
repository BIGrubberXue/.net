<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_6.aspx.cs" Inherits="test3_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList id="drop1" runat="server" AutoPostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
	    <asp:ListItem>娱乐</asp:ListItem>
	    <asp:ListItem>科技</asp:ListItem>	
        </asp:DropDownList>
        <asp:DropDownList id="drop2" runat="server">
        <asp:ListItem>请选择前项</asp:ListItem>
        </asp:DropDownList>
        <asp:Button id="button1" runat="server" OnClick="Button_Click" Text="浏览"/>	     
    </form>
</body>
</html>
