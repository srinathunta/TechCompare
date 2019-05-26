<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TechCompare19.WebForm1" %>
<%@ MasterType VirtualPath="~/Main1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Trending:</h1>
    <asp:DataList ID="DataList1" runat="server" BorderColor="Black" 
        BorderWidth="2px" CellPadding="2" CellSpacing="5" DataSourceID="SqlDataSource1" 
        Height="178px" onselectedindexchanged="DataList1_SelectedIndexChanged" 
        RepeatColumns="5" RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="153px" 
                            ImageUrl='<%# Eval("images") %>' Width="132px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Height="26px" Text="Compare" 
                            Width="167px" CommandArgument='<%# Eval("Product_Name") %>' 
                            CommandName="Compare"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [trending]"></asp:SqlDataSource>
</asp:Content>
