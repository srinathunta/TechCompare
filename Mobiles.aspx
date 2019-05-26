<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Mobiles.aspx.cs" Inherits="TechCompare19.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>Mobiles:</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" BorderColor="Black" 
            BorderWidth="0px" CellPadding="2" CellSpacing="5" DataSourceID="SqlDataSource1" 
            Height="179px" RepeatColumns="5" RepeatDirection="Horizontal" Width="418px" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
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
                <asp:Parameter DefaultValue="Mobile" Name="Category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
