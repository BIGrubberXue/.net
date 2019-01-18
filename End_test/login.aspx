<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<<<<<<< HEAD
    <style type="text/css">
        .auto-style1 {
            width: 385px;
        }
    </style>
=======
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 300px;margin: 0px auto;">
           <a style="text-align:center;font-size:30px ">username</a>
           <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="221px"></asp:TextBox>
        </div>
        <div style="width:300px;margin: 0px auto">  
             <a style="text-align:center;font-size:30px ">passward</a>
            <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="221px" TextMode= "Password"></asp:TextBox>
        </div>
        <br/>
<<<<<<< HEAD
        <div style="margin: 0px auto;" class="auto-style1">  
=======
        <div style="width:300px ;margin: 0px auto;">  
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
            <asp:Button Text="登陆" runat="server" ID="login_btn" style="border-radius:15px;border-width:0;width:100px;height:50px;"
                OnClick="login_btn_Click"/> 
            <a>&nbsp;</a>
            <asp:Button Text="注册" runat="server" id="register"  style="border-radius:15px;border-width:0;width:100px;height:50px;"
               OnClick="register_Click"/>
<<<<<<< HEAD
            <a>&nbsp;</a>
            <asp:Button Text="返回" runat="server" id="return_btn"  style="border-radius:15px;border-width:0;width:100px;height:50px;"
               OnClick= "return_btn_Click"/>
       </div>   
        <div style="margin: 0px auto;" class="auto-style1">
            <a href=""/>

        </div>
=======
       </div>       
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
    </form>
</body>
</html>
