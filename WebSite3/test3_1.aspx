<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_1.aspx.cs" Inherits="test3_1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>  
</head>

<body style="height: 488px">
    <div>
    <script runat="server">
        
</script></div>
<form id="form1" runat="server">
        姓名：<input id="Text1" type="text" runat="server" /><br />
        性别：<input id="Text2" type="text" runat="server" /><br />
        年龄：<input id="Text3" type="text" runat="server" /><br />
        邮编：<input id="Text4" type="text" runat="server" /><br />
        地址：<input id="Text5" type="text" runat="server" /><br />
        自我介绍：<input id="Text6" type="text" runat="server" /><br />
        <br />
        <input id="Submit1" type="submit" value="提交" onserverclick="Submit1_ServerClick"  runat="server" />        
</form>
</body>