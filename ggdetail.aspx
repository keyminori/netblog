<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ggdetail.aspx.cs" Inherits="ggdetail" %>

<%@ Register Src="left5.ascx" TagName="left5" TagPrefix="uc4" %>

<%@ Register Src="top3.ascx" TagName="top3" TagPrefix="uc3" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc2" %>

<%@ Register TagPrefix="uc1" TagName="hsgleft" Src="hsgleft.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hsgtop2" Src="hsgtop2.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>个人博客系统站</title>
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
<table width="100%" border="0" id="zengwen">
  <tr>
    <td align="center"><h2><strong><%=ntitle %>&nbsp;</strong></h2></td>
  </tr>
  <tr>
    <td valign="top" style="height:280px;"><%=ncontent %>&nbsp;</td>
  </tr>
  <tr>
    <td heigh="38" align="center">&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="newslist.aspx?lb=1">返回</asp:HyperLink></td>
  </tr>
</table>
          </div>
        </div>
      </div>
      
      
    </div>
<uc2:WebUserControl ID="WebUserControl1" runat="server" />

			</form>
			
</body>
</html>