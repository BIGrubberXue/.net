﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picture_5.aspx.cs" Inherits="book_data_picture_5" %>

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
            <asp:Image ID="Image1" runat="server" Height="448px" Width="448px"  ImageUrl="~/picture_keep/picture5.JPG" style="margin-left: 47px" />
=======
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <a>
        <div style="width:33%;display: inline-block;Float:left">
            <asp:Image ID="Image1" runat="server" Height="448px" Width="448px"  ImageUrl="~/picture_keep/picture5.JPG" />
>>>>>>> 0e4ab70293e60bf39dace0390b1f92eebb580049
        </div>
        </a>
        <div style="width:44%; height:285px; margin-left:10px; display:inline-block">
            <a>
                <p style="width: 667px; height: 71px"><span style="font-size:40px"> C#开发实例大全（提高卷）</span>
                </p>
                <p style="font-size:30px;font-family: SimSun; width: 599px;">600经典实例及源码分析 21个应用方向 <br/>
                    两卷共1200例 46个方向  各种实例一应俱全<br/> 供学习、速查、实践练习的超全参考手册<br/> c#开发实战1200例 c#范例大全 之全新升级
                </p>
            </a>
        </div>
<<<<<<< HEAD
         <div style="height:auto">
            <table class="self-style3"><tr><td class="self-style1"><span class="self-style4">网站价格:</span></td>
                </tr>
                <tr><td class="self-style5"></td><td class="self-style2"><span class="self-style5">¥64</span></td></tr>
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
                <p style="font-size:25px;color:red">¥64</p>
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
