<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lyb.aspx.cs" Inherits="lyb" %>

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
    <LINK href="images/buttons.css" type="text/css" rel="stylesheet">
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
        </div>
        <div class="main">
        <div class="maintop content-box">
          <div class="tit"><strong>当前位置: </strong><a href="default.aspx"><strong> 首页 </strong></a><strong> &gt;&gt; 作品列表</strong></div></div>
          <div class="content-box">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr>
                                        <td style="width: 100%; height: 527px" valign="top">
                                            <div align="center">
                                                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                    <!--DWLayoutTable-->
                                                    <tr>
                                                        <td rowspan="2" style="width: 57%" valign="top">
                                                            <table bgcolor="#c6eec8" border="0" cellpadding="0" cellspacing="1" style="width: 100%">
                                                                <!--DWLayoutTable-->
                                                                <tr>
                                                                    <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                        你的姓名:</td>
                                                                    <td align="left" bgcolor="#ffffff" colspan="2" valign="top">
                                                                        <asp:TextBox ID="username" runat="server" Style="border-right: #339900 1px solid;
                                                                            border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"></asp:TextBox>&nbsp;</td>
                                                                    <td bgcolor="#ffffff" style="width: 57px" valign="top">
                                                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                                                            ErrorMessage="*必填"></asp:RequiredFieldValidator></td>
                                                                </tr>
                                                                <tr style="color: #000000">
                                                                    <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                        性 别:</td>
                                                                    <td align="left" bgcolor="#ffffff" style="width: 110px" valign="middle">
                                                                        <asp:RadioButton ID="Radboy" runat="server" Checked="True" GroupName="sex" Style="border-right:  1px solid;
                                                                            border-top:  1px solid; font: menu; border-left:  1px solid; border-bottom:  1px solid"
                                                                            Text="男" />&nbsp;
                                                                        <asp:RadioButton ID="Radgril" runat="server" GroupName="sex" Style="border-right:  1px solid;
                                                                            border-top:  1px solid; font: icon; border-left:  1px solid; border-bottom:  1px solid"
                                                                            Text="女" /></td>
                                                                    <td bgcolor="#ffffff" colspan="2" style="color: #000000" valign="top"><!--DWLayoutEmptyCell-->&nbsp;
                                                                        
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                        电子邮箱:</td>
                                                                    <td align="left" bgcolor="#ffffff" colspan="2" valign="middle">
                                                                        <asp:TextBox ID="email" runat="server" Style="border-right: #339900 1px solid; border-top: #339900 1px solid;
                                                                            font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"></asp:TextBox>&nbsp;</td>
                                                                    <td bgcolor="#ffffff" style="width: 57px" valign="top">
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
                                                                            ErrorMessage="格式不对" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                        个人主页:</td>
                                                                    <td align="left" bgcolor="#ffffff" colspan="2" valign="top">
                                                                        <asp:TextBox ID="homepage" runat="server" Style="border-right: #339900 1px solid;
                                                                            border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"></asp:TextBox>&nbsp;</td>
                                                                    <td bgcolor="#ffffff" style="width: 57px" valign="top">
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="homepage"
                                                                            ErrorMessage="格式不对" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                        QQ号码:</td>
                                                                    <td align="left" bgcolor="#ffffff" style="width: 110px" valign="top">
                                                                        <asp:TextBox ID="qq" runat="server" Style="border-right: #339900 1px solid; border-top: #339900 1px solid;
                                                                            font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"
                                                                            Width="102px"></asp:TextBox></td>
                                                                    <td bgcolor="#ffffff" colspan="2" valign="top">
                                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="qq"
                                                                            ErrorMessage="格式不对" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#ffffff" height="27" style="width: 56px" valign="top">
                                                                        
                                                                        <span style="font-family: Times New Roman">&nbsp;</span></td>
                                                                    <td align="center" bgcolor="#ffffff" style="width: 110px; font-family: Times New Roman"
                                                                        valign="middle">
                                                                        &nbsp;<asp:Button ID="addly" runat="server" OnClick="addly_Click"  CssClass="button small gray" Text="添加留言" Width="77px" /></td>
                                                                    <td align="left" bgcolor="#ffffff" colspan="2" valign="middle">
                                                                        &nbsp;<asp:CheckBox ID="ishde" runat="server" Text="悄悄话" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td bgcolor="#ffffff" height="0" style="width: 56px; height: 24px">
                                                                    </td>
                                                                    <td bgcolor="#ffffff" style="width: 110px; height: 24px">
                                                                    </td>
                                                                    <td style="width: 6px; height: 24px">
                                                                    </td>
                                                                    <td bgcolor="#ffffff" style="width: 57px; height: 24px">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td style="width: 467px; height: 101px" valign="top">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="96%">
                                                                <!--DWLayoutTable-->
                                                                <tr>
                                                                    <td align="left" style="width: 100%; height: 97px" valign="top">
                                                                        <span style="font-family: Times New Roman">&nbsp;</span><asp:TextBox ID="lybody"
                                                                            runat="server" Height="91px" MaxLength="500" Style="border-right: #339900 1px solid;
                                                                            border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"
                                                                            TextMode="MultiLine" Width="95%"></asp:TextBox></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="27" style="width: 467px" valign="top">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <!--DWLayoutTable-->
                                                                <tr>
                                                                    <td height="26" width="457">
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lybody"
                                                                            ErrorMessage="内容不能为空"></asp:RequiredFieldValidator>
                                                                        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 留 言 内 容<asp:Label ID="Label1" runat="server"
                                                                            Width="131px"></asp:Label></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div align="center">
                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 520px">
                                                    <!--DWLayoutTable-->
                                                    <tr>
                                                        <td align="center" height="18" style="width: 775px" valign="middle">
                                                            留 言 列 表 &nbsp; &nbsp;
                                                            <asp:HyperLink ID="admin_go" runat="server" NavigateUrl="login.aspx">管理登陆</asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div align="center">
                                                <asp:Repeater ID="rpt1" runat="server">
                                                    <ItemTemplate>
                                                        <table bgcolor="" border="0" cellpadding="0" cellspacing="1" class="tb" width="100%">
                                                            <!--DWLayoutTable-->
                                                            <tr>
                                                                <td bgcolor="#FFFFFF" rowspan="3" valign="top" width="11"><!--DWLayoutEmptyCell-->&nbsp;
                                                                    
                                                                    </td>
                                                                <td align="center" bgcolor="#FFFFFF" rowspan="2" valign="middle" width="85">
                                                                    <%#"<img width='70'height='70' src=img/" + Eval("Face") + ".gif border=0>"%>
                                                                </td>
                                                                <td align="left" bgcolor="#FFFFFF" height="20" valign="middle" width="528">
                                                                    &nbsp; &nbsp; 留言于:<%#Eval("adddate")%>
                                                                </td>
                                                                <td align="center" bgcolor="#FFFFFF" valign="middle" width="136">
                                                                    &nbsp;
                                                                    <%# show_admin(Convert.ToInt32(Eval("id"))) %>
                                                                </td>
                                                                <td bgcolor="#FFFFFF" rowspan="3" style="width: 10px" valign="top" width="12"><!--DWLayoutEmptyCell-->&nbsp;
                                                                    
                                                                    </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" bgcolor="#FFFFFF" colspan="2" height="78" valign="top">
                                                                    &nbsp;&nbsp;<%# showbody(Convert.ToBoolean(Eval("IsHidden")),Eval("body").ToString())%>
                                                                    <%# showrely((bool)Eval("isrely"),Eval("rebody").ToString()) %>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" bgcolor="#FFFFFF" style="height: 25px" valign="middle">
                                                                    姓名:<%#Eval("username")%></td>
                                                                <td align="left" bgcolor="#FFFFFF" colspan="2" style="height: 25px" valign="middle">
                                                                    &nbsp; &nbsp; 邮 箱:<%#Eval("email")%>>&nbsp; &nbsp; QQ:<%#Eval("qq")%>&nbsp; &nbsp;
                                                                    主页:<%#Eval("homepage")%></td>
                                                            </tr>
                                                        </table>
                                                        <br>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="100%">
                                                    <tr>
                                                        <td align="center" style="width: 775px; height: 18px">
                                                            共 <font face="宋体"><b>
                                                                <asp:Label ID="lbTotalPage" runat="server">1</asp:Label></b></font> 页 &nbsp;
                                                            | &nbsp;
                                                            <asp:HyperLink ID="hlkFirstPage" runat="server">首页</asp:HyperLink>
                                                            &nbsp; | &nbsp;
                                                            <asp:HyperLink ID="hlkPrevPage" runat="server">上一页</asp:HyperLink>
                                                            &nbsp; | &nbsp;
                                                            <asp:HyperLink ID="hlkNextPage" runat="server">下一页</asp:HyperLink>
                                                            &nbsp; | &nbsp;
                                                            <asp:HyperLink ID="hlkLastPage" runat="server">末页</asp:HyperLink>
                                                            &nbsp; | &nbsp; 第 <font face="宋体"><b>
                                                                <asp:Label ID="lbCurrentPage" runat="server">1</asp:Label></b></font> 页
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
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