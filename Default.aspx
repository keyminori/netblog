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
				

<uc1:hsgtop2 id="Hsgtop21" runat="server" OnLoad="Hsgtop21_Load"></uc1:hsgtop2>
<div class="container">
<div class="row">
<div class="side">
<uc1:hsgleft id="Hsgleft1" runat="server"></uc1:hsgleft>
<uc4:left5 ID="Left5_1" runat="server" />
</div>
<div class="main">
<div class="content-box"> 
<div class="rightttop">站内导航 </div>
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
    <div class="rightttop">站内导航 </div>
<asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False"
Width="100%" Height="130px" ShowHeader="False"  >
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
</div>
<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#cccccc" cellSpacing="0" cellPadding="0"
					width="778" border="1" frame="vsides" align="center">
					
						<TR>
							<TD vAlign="top" style="width: 781px; height: 780px">

								<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" style="height: 691px">
									<TBODY>
										<TR>
											<TD width="571" height="576" align="left" vAlign="top" bgColor="#f2f2f2" style="height: 2px">
										  </TD>
						</TR>
		
						<TR>
							<TD style="HEIGHT: 494px" vAlign="top"><TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
									<TBODY>
										<TR>
											<TD align="left" width="40%" height="193">
												<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#cccccc" height="181" cellSpacing="0"
													cellPadding="0" width="227" border="1">
													<TBODY>
														<TR>
															<TD vAlign="middle" align="center"><IMG height="181" src="mage/005.jpg" width="227"></TD>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
											<TD vAlign="top" align="right" width="60%">
												<TABLE style="WIDTH: 337px; HEIGHT: 190px" cellSpacing="0" cellPadding="0" width="337"
													border="0">
													<TBODY>
														
														<TR>
															<TD vAlign="top" align="left" height="149"><FONT face="宋体">
																	<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
																		<TR>
																			<TD align="left" width="82%" background="images/bian-bian.gif" height="35"><FONT face="宋体" color="#ffffff">最新日志</FONT></TD>
																			<TD width="18%" background="images/bian-bian.gif"><A href="http://www.zjqypx.com/manage.asp?bcgid=49"></A></TD>
																		</TR>
																	</TABLE>
																	
																</FONT></TD>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>

								<TABLE style="HEIGHT: 276px" cellSpacing="0" cellPadding="0" width="100%"
									border="0">
									<TBODY>
										<TR>
											<TD vAlign="top" width="48%" style="height: 231px">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TBODY>
														<TR>
															<TD align="left" width="82%" background="images/bian-bian.gif" height="35"><FONT face="宋体"><span style="color: #ffffff">我的博客简介</span></FONT></TD>
															<TD width="18%" background="images/bian-bian.gif"><A href="http://www.zjqypx.com/manage.asp?bcgid=49"></A></TD>
														</TR>
													</TBODY>
												</TABLE>
                                                &nbsp; &nbsp; 欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写<br />
                                                &nbsp; &nbsp; &nbsp; 欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写<br />
                                                &nbsp; &nbsp;&nbsp; 欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写欢迎大家光临我的寒舍，愿我们一起....其他你自己写.......</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				
				<DIV align="center">
					<TABLE style="BORDER-COLLAPSE: collapse" borderColor="#cccccc" cellSpacing="0" cellPadding="0"
						width="778" border="0" frame="vsides">
						<TBODY>
							<TR>
								<TD align="left" width="10%" background="images/down-bg.gif" style="height: 42px"><IMG height="35" src="images/down-left.gif" width="1"></TD>
								<TD vAlign="bottom" align="center" width="80%" background="images/down-bg.gif" style="height: 42px">
								</TD>
								<TD align="right" width="10%" background="images/down-bg.gif" style="height: 42px"><IMG height="35" src="images/down-left.gif" width="1"></TD>
							</TR>
						</TBODY>
					</TABLE>
				</DIV>
                                <uc2:WebUserControl ID="WebUserControl1" runat="server" />
				
</form>
			
</body>
</html>