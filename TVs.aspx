<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="TVs.aspx.cs" Inherits="TechCompare19.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 167px;
            height: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="DataList1" runat="server" BorderColor="Black" BorderWidth="0px" 
        CellPadding="2" CellSpacing="10" DataSourceID="SqlDataSource2" GridLines="Both" 
        RepeatColumns="5" RepeatDirection="Horizontal" 
        onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Text="Compare" 
                                CommandArgument='&#039;<%# Eval("Product_Name") %>&#039;' 
                                CommandName="Compare" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Products] WHERE ([Category] = @Category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="TV" Name="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
