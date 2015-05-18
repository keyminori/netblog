﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newslist.aspx.cs" Inherits="newslist" %>

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
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <title>个人博客系统</title>
    <LINK href="images/CSS.css" type="text/css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script> 
</head>
<body>
<form id="Form1" method="post" runat="server">		
				
<uc3:top3 ID="Top3_1" runat="server" />

<uc1:hsgtop2 id="Hsgtop21" runat="server"></uc1:hsgtop2>                                                              
<div class="container">
      <div class="row">
        <div class="side">
          <uc1:hsgleft id="Hsgleft1" runat="server">
          </uc1:hsgleft>
          <uc4:left5 ID="Left5_1" runat="server" />
        </div>
        <div class="main">
        <div class="maintop content-box">
          <div class="tit"><strong>当前位置: </strong><a href="default.aspx"><strong> 首页 </strong></a><strong> &gt;&gt; 日志详细</strong></div></div>
          <div class="content-box">
                                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" Height="130px"
                                    Width="100%">
                                    <Columns>

                                        <asp:TemplateColumn HeaderText="标题">
                                            <ItemTemplate>
                                                <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                    <%#DataBinder.Eval(Container.DataItem, "title") %>
                                                </a>
                                            </ItemTemplate>
                                            <HeaderStyle Width="200px" />
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="发布时间">
                                            <HeaderStyle Width="40%" />
                                        </asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>

          </div>
        </div>
      </div>
      
      
    </div>
<uc2:WebUserControl ID="WebUserControl1" runat="server" />
</form>
			
</body>
</html>