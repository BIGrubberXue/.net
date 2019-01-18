<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picture_3.aspx.cs" Inherits="book_data_picture_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<<<<<<< HEAD
    <link href="../css/self-style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="width:100%; margin: 10px auto">
        <a>
        <div style="width:40%;display:inline-block;Float:left;height:475px">
            <asp:Image ID="Image1" runat="server" Height="448px" Width="448px"  ImageUrl="~/picture_keep/picture3.JPG" style="margin-left: 47px" />
=======
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <a>
        <div style="width:33%;display: inline-block;Float:left">
            <asp:Image ID="Image1" runat="server" Height="448px" Width="448px"  ImageUrl="~/picture_keep/picture3.JPG" />
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
        </div>
        </a>
        <div style="width:44%; height:285px; margin-left:10px; display:inline-block">
            <a>
                <p style="width: 667px; height: 71px"><span style="font-size:40px"> C#入门经典第7版</span>
                </p>
                <p style="font-size:30px;font-family: SimSun; width: 599px;">WORX经典红皮书，<br/>
                    屡获殊荣的C#名著和超级畅销书<br/>长期位居C#开发类零售榜首,<br/>更新至C# 6.0 源代码免费提供下载，<br/>引领无数读者进入IT开发殿堂
                </p>
            </a>
        </div>
<<<<<<< HEAD
       <div style="height:auto">
            <table class="self-style3"><tr><td class="self-style1"><span class="self-style4">网站价格:</span></td>
                </tr>
                <tr><td class="self-style5"></td><td class="self-style2"><span class="self-style5">¥67</span></td></tr>
            </table>
            
        </div>
        <br/>
        <br/>
        <div style="width:100%; margin: 0px 0px 0px 35%">
            <a>
                <asp:Button Text="订购此书" runat="server" OnClick="button1_Click" ID="button1" 
                style="background-color:yellow;border-radius:15px; border-width: 0;width:150px;height:70px; margin-left: 0px;"/>
                 <asp:Button Text="评论次数" runat="server" OnClick="button2_Click" ID="button2" 
                style="border-radius:15px; border-width: 0;width:150px;height:70px;"/>
                <asp:Button Text="返回浏览" runat="server" OnClick= "button3_Click" ID="button3" 
                style="border-radius:15px; border-width: 0;width:150px;height:70px;"/>
=======
        <div style="background-color:grey;width:627px; margin-left: 455px;">
            <a>
                <p style="font-size:20px">网站价格: </p>
                <p style="font-size:25px;color:red">¥67</p>
            </a>

        </div>
        <div>
            <a>
                <asp:Button Text="订购此书" runat="server" OnClick="button1_Click" ID="button1" 
                style="background-color:yellow;border-radius:15px; border-width: 0;width:150px;height:70px;"/>
                 <asp:Button Text="评论次数" runat="server" OnClick="button2_Click" ID="button2" 
                style="border-radius:15px; border-width: 0;width:150px;height:70px;"/>
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
            </a>
        </div>

    </form>
</body>
</html>
