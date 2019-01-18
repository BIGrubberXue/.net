<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_3.aspx.cs" Inherits="test3_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <script runat="server">   
        
</script>
<form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="下一张" />&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上一张" />&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"  Visible="false"></asp:TextBox>
        
  
       
</form>
    </body>
</html>
