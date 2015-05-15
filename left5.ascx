<%@ Control Language="C#" AutoEventWireup="true" CodeFile="left5.ascx.cs" Inherits="left5" %>
<div class="content-box"> 
<div class="lefttop">友情链接</div>
<asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" Height="130px" Width="100%" ShowHeader="False">
    <Columns>
        <asp:TemplateColumn HeaderText="网址">
            <ItemTemplate>
                <a href='<%#DataBinder.Eval(Container.DataItem, "url") %>' target=_blank>
                    <%#DataBinder.Eval(Container.DataItem, "mc") %>
                </a>
            </ItemTemplate>
            <HeaderStyle Width="200px" />
        </asp:TemplateColumn>
    </Columns>
</asp:DataGrid>
</div>