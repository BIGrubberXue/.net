<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3_2.aspx.cs" Inherits="test3_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
        <script language="c#" runat="server">
            protected void Submit1_ServerClick(object sender, EventArgs e)
            {  
                float a = Convert.ToInt32(A.Value);
                float b = Convert.ToInt32(B.Value);
                math math=new math();
                Message.Text=math.Add(a, b).ToString();
            }
            protected void Submit2_ServerClick(object sender, EventArgs e)
            {
                float a = Convert.ToInt32(A.Value);
                float b = Convert.ToInt32(B.Value);
                math math=new math();
                Message.Text=math.Sub(a, b).ToString();
            }
            protected void Submit3_ServerClick(object sender, EventArgs e)
            {
                float a = Convert.ToInt32(A.Value);
                float b = Convert.ToInt32(B.Value);
                math math=new math();
                Message.Text=math.Mul(a, b).ToString();
            }
            protected void Submit4_ServerClick(object sender, EventArgs e)
            {
                float a = Convert.ToInt32(A.Value);
                float b = Convert.ToInt32(B.Value);            
                math math=new math();
                Message.Text=math.Divi(a, b).ToString();
            }
        </script>
        <body>
           <form id="form1">
            <div>
                <font id=Cau >用ASP+写得简易计算器</font>
                <form runat="server" runat="server">
                <input id="A" type="text" runat="server"/>
                <input id="B" type="text" runat="server"/>
                <input id="Submit1" type="submit" value="加" onserverclick="Submit1_ServerClick"  runat="server" />
                <input id="Submit2" type="submit" value="减" onserverclick="Submit2_ServerClick"  runat="server" />
                <input id="Submit3" type="submit" value="乘" onserverclick="Submit3_ServerClick"  runat="server" />
                <input id="Submit4" type="submit" value="除" onserverclick="Submit4_ServerClick"  runat="server" />
                </form>
                Result:<asp:label id="Message"  runat="server"/>

        </div>
    </form>
</body>
</html>
