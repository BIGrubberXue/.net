<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picture_3.aspx.cs" Inherits="book_data_picture_3" %>

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
            <asp:Image ID="Image1" runat="server" Height="448px" Width="448px"  ImageUrl="~/picture_keep/picture3.JPG" />
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
            </a>
        </div>

    </form>
</body>
</html>
