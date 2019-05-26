<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Others.aspx.cs" Inherits="TechCompare19.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 180px;
            height: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Height="230px" RepeatColumns="5" RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
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
                                CommandArgument='<%# Eval("Product_Name") %>'
                                CommandName="Compare" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Products] WHERE ([Category] = @Category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Other" Name="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
