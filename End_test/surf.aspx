<%@ Page Language="C#" AutoEventWireup="true" CodeFile="surf.aspx.cs" Inherits="surf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>书店主页</title>
    <link href="css/button_broder.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
</head>
<body >
    <form id="form1" runat="server" >
        <table><tr><td>
                    <p>
                        <asp:Button Text="登陆/注册" runat="server" id="login_registered"
                        class="auto-style1" OnClick="login_registered_Click" Width="170px" Height="60px"/>
                        <asp:Button id="massage_btn" Text="个人信息管理" runat="server" class="auto-style1" OnClick="massage_btn_Click" Height="60px" Width="170px"/>             
                        <asp:Button ID="Button4" runat="server" Text="购物车" onclick="Button4_Click"  class="auto-style1"  Height="60px" Width="170px"/>
                        <asp:Button ID="exit_btn" Text="退出" runat="server" CssClass="auto-style1" OnClick= "exit_btn_Click" Width="170px" Height="60px"/>
                    </p>
        </td></tr></table>   
        <div style="width:400px; margin: 10px auto;">
            <asp:Button style="width:100px ;height:55px" ID="Button1" runat="server" Text="asp.net" class="auto-style2" Onclick="Button1_Click"/>
            &nbsp;
            <asp:Button style="width:100px;height:55px " ID="Button2" runat="server" Text="C#" class="auto-style2" Onclick="Button2_Click"/>
            &nbsp;
            <asp:Button style="width:100px;height:55px " ID="Button3" runat="server" Text="sql" class="auto-style2" Onclick="Button3_Click"/>
        </div >

        <div style="width:75%; margin: 0px auto;">
            <div style="width:33%;margin: 0px auto;display: inline-block;">
                <a>
                    <asp:Imagebutton style="width:80%;height:auto" id="Image0" runat="server" onclick="Image0_Click" />       
                    <p><span>详情点击图片</span></p>
                </a>
            </div>
            <div style="width:33%;margin: 0px auto;display: inline-block;">
                <a>
                    <asp:Imagebutton style="width:80%;height:auto" id="Image1" runat="server" onclick="Image1_Click" />
                    <p><span>详情点击图片</span></p>
                </a>
            </div>
            <div style="width:33%;margin: 0px auto;display: inline-block;">
                <a>
                    <asp:Imagebutton style="width:80%;height:auto" id="Image2" runat="server" onclick="Image2_Click"/>
                    <p><span>详情点击图片</span></p>
                </a>
            </div>
        </div>

        <section id="two" class="wrapper style2 alt">
        <div class="inner">
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton1" runat="server" onclick= "Imagebutton1_Click" ImageUrl="picture_keep/picture0.jpg" />
                </div>
                <div  class="content">   
                    <p>ASP.NET开发实例大全（基础卷）</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton2" runat="server" onclick= "Imagebutton2_Click" ImageUrl="picture_keep/picture1.jpg"/>
                </div>
                <div  class="content">   
                     <p>精通ASP.NET 4.5(第5版)</p>
                </div>
            </div>

            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton3" runat="server" onclick= "Imagebutton3_Click" ImageUrl="picture_keep/picture2.jpg"/>
                </div>
                <div  class="content"> 
                     <p>ASP.NET项目开发全程实录（第3版）</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton4" runat="server" onclick= "Imagebutton4_Click" ImageUrl="picture_keep/picture3.jpg"/>
                </div>
                <div  class="content">   
                     <p> C#入门经典第7版</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton5" runat="server" onclick= "Imagebutton5_Click" ImageUrl="picture_keep/picture4.jpg"/>
                </div>
                <div  class="content">   
                     <p>C#高级编程(第10版)</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton6" runat="server" onclick= "Imagebutton6_Click" ImageUrl="picture_keep/picture5.jpg"/>
                </div>
                <div  class="content">   
                     <p> C#开发实例大全（提高卷）</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton7" runat="server" onclick= "Imagebutton7_Click" ImageUrl="picture_keep/picture6.jpg"/>
                </div>
                <div  class="content">
                     <p>SQL入门经典(第5版)</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton8" runat="server" onclick= "Imagebutton8_Click" ImageUrl="picture_keep/picture7.jpg"/>
                </div>
                <div  class="content">  
                     <p> SQL必知必会(第4版)</p>
                </div>
            </div>
            <div style="width:70%; margin: 0px auto;" class="spotlight">
                 <div class="image">
                    <asp:Imagebutton style="width:80%;height:auto" id="Imagebutton9" runat="server" onclick= "Imagebutton9_Click" ImageUrl="picture_keep/picture8.jpg"/>
                </div>
                <div  class="content">   
                     <p> SQL经典实例</p>
                </div>
            </div>
        </div>
        </section> 
    </form>
</body>
</html>
