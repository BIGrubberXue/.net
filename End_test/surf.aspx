<%@ Page Language="C#" AutoEventWireup="true" CodeFile="surf.aspx.cs" Inherits="surf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>书店主页</title>
    <style type="text/css">
        .auto-style1 {
            border-radius:15px; 
            border-width: 0;
            margin-left: 0px;
        }
    </style>
</head>
<script>
       
</script>
<body>
    <form id="form1" runat="server">
        <table>
        <tr>
        <td style="text-align:left" class="auto-style1">
            <asp:Button Text="登陆/注册" runat="server" id="login_registered"
                style="border-radius:15px; border-width: 0;"
                OnClick="login_registered_Click" Width="170px" Height="60px"/></td>
        <td style="text-align:right">
            <asp:Button Text="个人信息管理" runat="server" class="auto-style1" id="massage_btn" OnClick="massage_btn_Click" Height="60px" Width="170px"/>          
        </td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="购物车" onclick="Button4_Click" class="auto-style1"  Height="60px" Width="170px"/>
        </td>
        </tr>
        </table>
        <div style="width:300px;margin: 10px auto;">
            <asp:Button style="width:80px ;height:45px" ID="Button1" runat="server" Text="asp.net" class="auto-style1" Onclick="Button1_Click"/>
            &nbsp;
            <asp:Button style="width:80px;height:45px " ID="Button2" runat="server" Text="小说类" class="auto-style1" Onclick="Button2_Click"/>
            &nbsp;
            <asp:Button style="width:80px;height:45px " ID="Button3" runat="server" Text="辅导类" class="auto-style1" Onclick="Button3_Click"/>
        </div >
        <div style="width:33%;margin: 10px auto;display: inline-block;">
         <a>
             <asp:Imagebutton style="width:100%;height:auto" id="Image0" runat="server" onclick="Image0_Click"/>
             <p><span>详情点击图片</span></p>

         </a>
        </div>
        <div style="width:33%;margin: 10px auto;display: inline-block;">
            <a>
                <asp:Imagebutton style="width:100%;height:auto" id="Image1" runat="server" onclick="Image1_Click"/>
                <p><span>详情点击图片</span></p>
            </a>
        </div>
        <div style="width:33%;margin: 10px auto;display: inline-block;">
            <a>
                <asp:Imagebutton style="width:100%;height:auto" id="Image2" runat="server" onclick="Image2_Click"/>
                <p><span>详情点击图片</span></p>
            </a>
        </div>
        
    </form>
</body>
</html>
