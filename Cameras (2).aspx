<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Cameras.aspx.cs" Inherits="TechCompare19.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 231px;
            width: 190px;
        }
        .style2
        {
            height: 23px;
            text-align: center;
        }
        .style3
        {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="2" CellSpacing="10" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style3" style="text-align: center">
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" 
                            CommandArgument='&#039;<%# Eval("Product_Name") %>&#039;' CommandName="Compare" 
                            Text="Button" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Products] WHERE ([Category] = @Category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Camera" Name="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
