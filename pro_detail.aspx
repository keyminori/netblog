<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pro_detail.aspx.cs" Inherits="pro_detail" %>


<%@ Register Src="top3.ascx" TagName="top3" TagPrefix="uc3" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc2" %>

<%@ Register TagPrefix="uc1" TagName="hsgleft" Src="hsgleft.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hsgtop2" Src="hsgtop2.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
        </div>
        <div class="main">
        <div class="maintop content-box">
          <div class="tit"><strong>当前位置: </strong><a href="default.aspx"><strong> 首页 </strong></a><strong> &gt;&gt; 作品列表</strong></div></div>
          <div class="content-box">
          
<table id="xczw" align="center" border="0" cellpadding="0" cellspacing="0"
width="100%">
  <tbody>
    <tr>
      <td align="center" style="width: 175px; height: 200px">
        <img class="cover" border="0" height="146" src="uppic/<%=npic%>" style="width: 146px; height: 146px"/>
        <strong>
          <asp:Label ID="Label7" runat="server" Font-Bold="False" >
            Label
          </asp:Label>
        </strong>
        <asp:Label ID="Label4" runat="server" >
          Label
        </asp:Label>
      </td>
      <td align="left" valign="top" style="height: 200px">
        <p>
          <strong>
            作品名称:
          </strong>
          <asp:Label ID="Label1" runat="server" Width="104px">
            Label
          </asp:Label>
        </p>
        <p>
          <strong>
            作品类别:
          </strong>
        </p>
        <asp:Label ID="Label2" runat="server" Width="104px">
          Label
        </asp:Label>
        <p>
          <strong>
            发布时间:
          </strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colspan="2" valign="top" style="text-align: left; height:100px;">
        <strong>
          简介:
        </strong>
        <asp:Label ID="Label5" runat="server" Height="50px">
          Label
        </asp:Label>
      </td>
    </tr>
  </tbody>
</table>
<div style="padding:10px;" align="right">                         
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="prolist.aspx">返回</asp:HyperLink>   </div>       
          </div>
        </div>
      </div>
      
      
    </div>
<uc2:WebUserControl ID="WebUserControl1" runat="server" />
					

												
				


			</form>
			
</body>
</html>