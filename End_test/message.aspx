<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<<<<<<< HEAD
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/button_broder.css" rel="stylesheet" />
</head>
<body class="main">
    <form id="form1" runat="server">
        <table>
            <tr><td>Username:</td></tr>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr><td>sex:</td></tr>
=======
    <style type="text/css">
        .auto-style1 {
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr><td class="auto-style1">Username:</td></tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr><td class="auto-style1">sex:</td></tr>
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
            <tr>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"  >        
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Not_reveal</asp:ListItem>
                </asp:RadioButtonList>
            </tr>          
<<<<<<< HEAD
            <tr><td>现住址:</td></tr>
               <tr>     
                 <td>    
=======
            <tr><td class="auto-style1">现住址:</td></tr>
               <tr>     
                 <td class="auto-style1">    
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
                 <asp:DropDownList id="drop1" runat="server" AutoPostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">    
	             <asp:ListItem>辽宁</asp:ListItem>    
	             <asp:ListItem>广东</asp:ListItem>    
                 <asp:ListItem>浙江</asp:ListItem>    
                 </asp:DropDownList>    
                 <asp:DropDownList id="drop2" runat="server">    
                 <asp:ListItem></asp:ListItem>    
                 </asp:DropDownList>    
                 </td>    
<<<<<<< HEAD
              </tr>
            <br />
            <tr><td>message:</td></tr>
            <tr>
                <td>
                <asp:label id="change_msg" runat="server"/>
=======
              </tr>    
            <tr><td class="auto-style1">message:</td></tr>
            <tr>
                <td class="auto-style1">
                <asp:label id="change_msg" runat="server" />
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
                </td>
            </tr> 
        </table>
        <br/>
        <asp:TextBox runat="server" ID="change_msg1" />
<<<<<<< HEAD
        <asp:Button Text="修改信息" id="change_msg_btn" runat="server" OnClick="change_msg_Click" class="auto-style1"/>
=======
        <asp:Button Text="修改信息" id="change_msg_btn" runat="server" OnClick="change_msg_Click" />
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
    </form>
</body>
</html>
