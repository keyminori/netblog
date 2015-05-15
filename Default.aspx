<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="left5.ascx" TagName="left5" TagPrefix="uc4" %>

<%@ Register Src="top3.ascx" TagName="top3" TagPrefix="uc3" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc2" %>

<%@ Register TagPrefix="uc1" TagName="hsgleft" Src="hsgleft.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hsgtop2" Src="hsgtop2.ascx" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head  runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <title>个人博客系统</title>
    <LINK href="images/CSS.css" type="text/css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script> 
</head>
<body>
  <form id="Form1" method="post" runat="server">
    <uc3:top3 ID="Top3_1" runat="server" />
    <uc1:hsgtop2 id="Hsgtop21" runat="server" OnLoad="Hsgtop21_Load">
    </uc1:hsgtop2>
    <div class="container">
      <div class="row">
        <div class="side">
          <uc1:hsgleft id="Hsgleft1" runat="server">
          </uc1:hsgleft>
          <uc4:left5 ID="Left5_1" runat="server" />
        </div>
        <div class="main">
          <div class="content-box">
            <div class="rightttop">
              <ul>
                <li>
                  站内导航
                </li>
              </ul>
            </div>
            <div class="photobox">
              <div class="photo">
                <a href="#" class="thumbnail">
                  <img src="img/photo.gif" alt="">
                </a>
              </div>
              <div class="photo">
                <a href="#" class="thumbnail">
                  <img src="img/photo.gif" alt="">
                </a>
              </div>
              <div class="photo">
                <a href="#" class="thumbnail">
                  <img src="img/photo.gif" alt="">
                </a>
              </div>
            </div>
          </div>
          <div class="content-box">
            <div class="rightttop">
              站内导航
            </div>
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False"
            Width="100%" Height="130px" ShowHeader="False">
              <columns>
                <asp:TemplateColumn>
                  <HeaderStyle Width="400px" />
                  <itemtemplate>
                    <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                      <%#DataBinder.Eval(Container.DataItem, "title") %>
                    </a>
                  </itemtemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="addtime">
                </asp:BoundColumn>
              </columns>
            </asp:DataGrid>
          </div>
        </div>
        
      </div>
      <uc2:WebUserControl ID="WebUserControl1" runat="server" />
    </div>
  </form>
</body>
</html>