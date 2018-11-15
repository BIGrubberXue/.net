<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <tr>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"  >        
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Not_reveal</asp:ListItem>
                </asp:RadioButtonList>
            </tr>          
            <tr><td class="auto-style1">现住址:</td></tr>
               <tr>     
                 <td class="auto-style1">    
                 <asp:DropDownList id="drop1" runat="server" AutoPostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">    
	             <asp:ListItem>辽宁</asp:ListItem>    
	             <asp:ListItem>广东</asp:ListItem>    
                 <asp:ListItem>浙江</asp:ListItem>    
                 </asp:DropDownList>    
                 <asp:DropDownList id="drop2" runat="server">    
                 <asp:ListItem></asp:ListItem>    
                 </asp:DropDownList>    
                 </td>    
              </tr>    
            <tr><td class="auto-style1">message:</td></tr>
            <tr>
                <td class="auto-style1">
                <asp:label id="change_msg" runat="server" />
                </td>
            </tr> 
        </table>
        <br/>
        <asp:TextBox runat="server" ID="change_msg1" />
        <asp:Button Text="修改信息" id="change_msg_btn" runat="server" OnClick="change_msg_Click" />
    </form>
</body>
</html>
