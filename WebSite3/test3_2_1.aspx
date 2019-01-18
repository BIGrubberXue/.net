<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_2_1.aspx.cs" Inherits="test3_2_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
   
<body>
    
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Height="57px" Width="254px"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Height="44px" Text="1" Width="46px" OnClick="Button1_Click"/>
&nbsp;
            <asp:Button ID="Button2" runat="server" Height="44px" Text="2" Width="46px" OnClick="Button2_Click"/>
&nbsp;
            <asp:Button ID="Button3" runat="server" Height="44px" Text="3" Width="46px" OnClick="Button3_Click"/>
&nbsp;
            <asp:Button ID="Button10" runat="server" Height="44px" Text="+" Width="46px" OnClick="Button_add_Click"/>
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Height="44px" Text="4" Width="46px" OnClick="Button4_Click"/>
&nbsp;
            <asp:Button ID="Button5" runat="server" Height="44px" Text="5" Width="46px" OnClick="Button5_Click"/>
&nbsp;
            <asp:Button ID="Button6" runat="server" Height="44px" Text="6" Width="46px" OnClick="Button6_Click"/>
&nbsp;
            <asp:Button ID="Button11" runat="server" Height="44px" Text="-" Width="46px" OnClick="Button_sub_Click"/>
        </p>
        <p>
            <asp:Button ID="Button7" runat="server" Height="44px" Text="7" Width="46px" OnClick="Button7_Click"/>
&nbsp;
            <asp:Button ID="Button8" runat="server" Height="44px" Text="8" Width="46px" OnClick="Button8_Click"/>
&nbsp;
            <asp:Button ID="Button9" runat="server" Height="44px" Text="9" Width="46px" OnClick="Button9_Click"/>
&nbsp;
            <asp:Button ID="Button12" runat="server" Height="44px" Text="*" Width="46px" OnClick="Button_mul_Click"/>
        </p>
        <p>
            <asp:Button ID="Button0" runat="server" Height="44px" Text="0" Width="111px" OnClick="Button0_Click"/>
&nbsp;
            <asp:Button ID="Button13" runat="server" Height="44px" Text="=" Width="46px" OnClick="Button_sum_Click"/>
&nbsp;
            <asp:Button ID="Button14" runat="server" Height="44px" Text="/" Width="46px" Onclick="Button_divi_Click"/>
        </p>
        <asp:TextBox ID="TextBox2" runat="server"  Visible="false"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"  Visible="false"></asp:TextBox>
    </form>
</body>
</html>
