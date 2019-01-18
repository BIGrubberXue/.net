<%@ Page Language="C#" AutoEventWireup="true" CodeFile="root_login.aspx.cs" Inherits="root_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 300px;margin: 0px auto;">
           <a style="text-align:center;font-size:30px ">username: root</a>
           
        </div>
        <div style="width:300px;margin: 0px auto">  
             <a style="text-align:center;font-size:30px ">passward</a>
            <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="221px" TextMode= "Password"></asp:TextBox>
        </div>
        <br/>
        <div style="margin: 0px auto;" class="auto-style1">  
            <asp:Button Text="root登陆" runat="server" ID="login_btn" style="border-radius:15px;border-width:0;width:100px;height:50px;"
                OnClick="login_btn_Click"/> 
            <a>&nbsp;</a>
            <asp:Button Text="返回" runat="server" id="return_btn"  style="border-radius:15px;border-width:0;width:100px;height:50px;"
               OnClick= "return_btn_Click"/>
       </div>   
    </form>
</body>
</html>
