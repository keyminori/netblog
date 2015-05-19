<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prolist2.aspx.cs" Inherits="prolist2" %>

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
          <div class="tit"><strong>当前位置: </strong><a href="default.aspx"><strong> 首页 </strong></a><strong> &gt;&gt; 相册查看</strong></div></div>
          <div class="content-box">
              <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" PageSize="4" Width="100%">
                                    <PagerStyle Mode="NumericPages" />
                                    <Columns>
                                        <asp:TemplateColumn HeaderText="序号">
                                            <ItemTemplate>
                                                <%#Container.ItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="相册编号">
                                        
                                        <ItemTemplate>
                                                                
                                                                    <%#DataBinder.Eval(Container.DataItem, "bianhao") %>
                                                               
                                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="mingcheng" HeaderText="相册名称"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="发布时间"></asp:BoundColumn>
                                 
                                        <asp:TemplateColumn HeaderText="照片">
                                            <ItemTemplate>
                                                <a  id="imgbox" href='uppic/<%#DataBinder.Eval(Container.DataItem, "pic") %>' target="_blank"><img height="50" src='uppic/<%#DataBinder.Eval(Container.DataItem, "pic") %>' width="50" /></a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                      
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