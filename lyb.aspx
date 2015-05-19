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
           
<table width="100%" border="0" cellspacing="5" id="info">
                            <tbody>
                                <tr>
                                    <td width="80" align="right">
                                            你的姓名:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="username" runat="server" Style="">
                                      </asp:TextBox>
                                  </td>
                                    <td width="80">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="username" ErrorMessage="*必填">
                                            </asp:RequiredFieldValidator>
                                    </td>
                                    <td rowspan="5"><asp:TextBox ID="lybody" runat="server" Height="190px" MaxLength="500"
                                    Style="margin-top:5px;" TextMode="MultiLine" Width="98%"> </asp:TextBox></td>
                              </tr>
                                <tr>
                                    <td width="80" align="right">
                                            性 别:
                                    </td>
                                    <td>
                                      <asp:RadioButton ID="Radboy" runat="server" Checked="True" GroupName="sex"
                                        Style="" Text="男" />
                                        &nbsp;
                                        <asp:RadioButton ID="Radgril" runat="server" GroupName="sex" Style=""
                                        Text="女" />
                                  </td>
                                    <td width="80">&nbsp;
                                      
                                    </td>
                              </tr>
                                <tr>
                                    <td width="80" align="right">
                                            电子邮箱:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="email" runat="server" Style="">
                                      </asp:TextBox>
                                  </td>
                                    <td width="80">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                            ControlToValidate="email" ErrorMessage="格式不对" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                            </asp:RegularExpressionValidator>
                                    </td>
                              </tr>
                                <tr>
                                    <td width="80" align="right">
                                            个人主页:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="homepage" runat="server" Style="">
                                      </asp:TextBox>
                                  </td>
                                    <td width="80">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="homepage"
                                                                            ErrorMessage="格式不对" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator>
                                    </td>
                              </tr>
                                <tr>
                                    <td width="80" align="right">
                                            QQ号码:
                                    </td>
                                    <td>
                                            <asp:TextBox ID="qq" runat="server">

                                      </asp:TextBox>
                                  </td>
                                    <td width="80">
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="qq"
                                                                            ErrorMessage="格式不对" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                    </td>
                              </tr>
                                <tr>
                                    <td width="80" align="right">&nbsp;
                                        
                                    </td>
                                    <td>
                                      <asp:Button ID="addly" runat="server" OnClick="addly_Click" CssClass="button small gray"
                                            Text="添加留言" Width="77px" />
                                  </td>
                                    <td width="80">
                                        <asp:CheckBox ID="ishde" runat="server" Text="悄悄话" />
                                    </td>
                                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="lybody" ErrorMessage="内容不能为空"> </asp:RequiredFieldValidator>
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 留 言 内 容
<asp:Label ID="Label1" runat="server" Width="131px"> </asp:Label></td>
                              </tr>
                            </tbody>
                        </table>
            
            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="">
                <!--DWLayoutTable-->
                <tr>
                    <td align="center" style="" valign="middle">
                        留 言 列 表 &nbsp; &nbsp;
                        <asp:HyperLink ID="admin_go" runat="server" NavigateUrl="login.aspx">
                            管理登陆
                        </asp:HyperLink>
                    </td>
                </tr>
            </table>
           
            <asp:Repeater ID="rpt1" runat="server">
                <ItemTemplate>
                    <table width="100%" border="0" cellspacing="5">
                        <tbody>
                            <tr>
                              <td width="90" rowspan="2">
                                  
                                <%#"<img width='70'height='70' src=img/" + Eval("Face") + ".gif border=0>"%></td>
                                <td>
                                    留言于:
                                    <%#Eval( "adddate")%>
                                        &nbsp;
                                        <%# show_admin(Convert.ToInt32(Eval( "id"))) %>
                              </td>
                          </tr>
                            <tr>
                                <td>
                                    <%# showbody(Convert.ToBoolean(Eval( "IsHidden")),Eval( "body").ToString())%>
                                        <%# showrely((bool)Eval( "isrely"),Eval( "rebody").ToString()) %>
                                </td>
                            </tr>
                            <tr>
                                <td width="90">
                                    <span style="height: 25px">
                                        姓名:
                                        <%#Eval( "username")%>
                                    </span>
                                </td>
                                <td>
                                    <span style="height: 25px">
                                        邮 箱:
                                        <%#Eval( "email")%>&nbsp; &nbsp; QQ:
                                            <%#Eval( "qq")%>
                                                &nbsp; &nbsp; 主页:
                                                <%#Eval( "homepage")%>
                                  </span>
                              </td>
                          </tr>
                        </tbody>
                    </table>
              </ItemTemplate>
            </asp:Repeater>
            
            <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="Table">
                <tr>
                    <td align="center" style="">
                        共
                        <font face="宋体">
                            <b>
                                <asp:Label ID="lbTotalPage" runat="server">
                                    1
                                </asp:Label>
                            </b>
                        </font>
                        页 &nbsp; | &nbsp;
                        <asp:HyperLink ID="hlkFirstPage" runat="server">
                            首页
                        </asp:HyperLink>
                        &nbsp; | &nbsp;
                        <asp:HyperLink ID="hlkPrevPage" runat="server">
                            上一页
                        </asp:HyperLink>
                        &nbsp; | &nbsp;
                        <asp:HyperLink ID="hlkNextPage" runat="server">
                            下一页
                        </asp:HyperLink>
                        &nbsp; | &nbsp;
                        <asp:HyperLink ID="hlkLastPage" runat="server">
                            末页
                        </asp:HyperLink>
                        &nbsp; | &nbsp; 第
                        <font face="宋体">
                            <b>
                                <asp:Label ID="lbCurrentPage" runat="server">
                                    1
                                </asp:Label>
                            </b>
                        </font>
                        页
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