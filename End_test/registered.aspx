<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registered.aspx.cs" Inherits="registered" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/self-style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 366px; margin: 0px auto;">
            <a style="text-align:center;font-size:30px ">username:</a><br/>
                <div class="content"><asp:TextBox ID="uname" runat="server" Height="27px" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="用户名不能为空" ControlToValidate="uname" />
                </div>
            </div>
        <div style="width:366px; margin: 0px auto">  
           <a style="text-align:center;font-size:30px ">passward:</a><br/>
           <asp:TextBox ID="pwd1" runat="server" Height="27px" Width="221px" TextMode= "Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="密码不能为空" ControlToValidate="pwd1"/>
        </div>
        <div style="width:366px; margin: 0px auto">
           <a style="text-align:center;font-size:30px ">Confirm the password:</a>
           <asp:TextBox ID="pwd2" runat="server" Height="27px" Width="221px" TextMode= "Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="确认密码不能为空" ControlToValidate="pwd2"/>
           <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="与密码不一致" ControlToValidate="pwd2" ControlToCompare="pwd1" />
        </div>
        <div style="text-align:center">
            <asp:Button style="border-radius:15px;border-width:0;width:200px;height:50px;" ID="submit" runat="server" Text="提交" OnClick="submit_Click" />
            <asp:Button style="border-radius:15px;border-width:0;width:200px;height:50px;" ID="return" runat="server" Text="返回" OnClick="return_Click" CausesValidation="false"/>
        </div>  
    </form>
</body>
</html>
