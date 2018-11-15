<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picture_2.aspx.cs" Inherits="book_data_picture_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <a>
        <div style="width:33%;display: inline-block;Float:left">
            <asp:Image ID="Image1" runat="server" Height="448px" Width="448px"  ImageUrl="~/picture_keep/picture2.JPG" />
        </div>
        </a>
        <div style="width:44%; height:285px; margin-left:10px; display:inline-block">
            <a>
                <p style="width: 667px; height: 71px"><span style="font-size:40px">ASP.NET项目开发全程实录（第3版）（配光盘）（软件项目开发全程实录)</span>
                </p>
                <p style="font-size:30px;font-family: SimSun; width: 599px;">（20小时视频，10套完整项目开发案例，<br/>模块库、题库、素材库登录本书网站，<br/>
                    网站、QQ等技术支持，让学习畅通无阻）
                </p>
            </a>
        </div>
        <div style="background-color:grey;width:627px; margin-left: 455px;">
            <a>
                <p style="font-size:20px">网站价格: </p>
                <p style="font-size:25px;color:red">¥60</p>
            </a>

        </div>
        <div>
            <a>
                <asp:Button Text="订购此书" runat="server" OnClick="button1_Click" ID="button1" 
                style="background-color:yellow;border-radius:15px; border-width: 0;width:150px;height:70px;"/>
                 <asp:Button Text="评论次数" runat="server" OnClick="button2_Click" ID="button2" 
                style="border-radius:15px; border-width: 0;width:150px;height:70px;"/>
            </a>
        </div>

    </form>
</body>
</html>