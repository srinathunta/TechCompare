<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="TechCompare19.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .image {
            width: 296px;
            height: 287px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="up">
        <div class="image">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <div class="table">
        <asp:Table ID="Table1" runat="server" BorderColor="#FFFF66" CellPadding="5" 
            CellSpacing="5" TabIndex="1" Width="910px">
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell1" runat="server">Website</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server">Product name</asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server">Price</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell4" runat="server">Amazon</asp:TableCell>
                <asp:TableCell ID="apname" runat="server"></asp:TableCell>
                <asp:TableCell ID="apprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server" class="GOTObutton">
                        <asp:Button ID="Amazon" runat="server" Text="GO" OnClick="Amazon_Click" /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell ID="TableCell6" runat="server">Flipkart</asp:TableCell>
                <asp:TableCell ID="flname" runat="server"></asp:TableCell>
                <asp:TableCell ID="fpprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server" class="GOTObutton">
                        <asp:Button ID="Flipkart" runat="server" Text="GO" OnClick="Flipkart_Click"/></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow4" runat="server">
                <asp:TableCell ID="TableCell8" runat="server">Shopclues</asp:TableCell>
                <asp:TableCell ID="spname" runat="server"></asp:TableCell>
                <asp:TableCell ID="spprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell9" runat="server" class="GOTObutton">
                        <asp:Button ID="Shopclues" runat="server" Text="GO" OnClick="Shopclues_Click"/></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow5" runat="server">
                <asp:TableCell ID="TableCell10" runat="server">Snapdeal</asp:TableCell>
                <asp:TableCell ID="SDname" runat="server"></asp:TableCell>
                <asp:TableCell ID="SDprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell11" runat="server" class="GOTObutton">
                        <asp:Button ID="Snapdeal" runat="server" Text="GO" OnClick="Snapdeal_Click"/></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow6" runat="server">
                <asp:TableCell ID="TableCell12" runat="server">Croma</asp:TableCell>
                <asp:TableCell ID="cmname" runat="server"></asp:TableCell>
                <asp:TableCell ID="cmprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell13" runat="server" class="GOTObutton">
                        <asp:Button ID="Croma" runat="server" Text="GO" OnClick="Croma_Click"/></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow7" runat="server">
                <asp:TableCell ID="TableCell14" runat="server">infibeam</asp:TableCell>
                <asp:TableCell ID="IBname" runat="server"></asp:TableCell>
                <asp:TableCell ID="IBprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell15" runat="server" class="GOTObutton">
                        <asp:Button ID="Infibeam" runat="server" Text="GO" OnClick="infibeam_Click"/></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow8" runat="server">
                <asp:TableCell ID="TableCell16" runat="server">GadgetsNow</asp:TableCell>
                <asp:TableCell ID="GNname" runat="server"></asp:TableCell>
                <asp:TableCell ID="GNprice" runat="server"></asp:TableCell>
                <asp:TableCell ID="TableCell17" runat="server" class="GOTObutton">
                        <asp:Button ID="GadgetsNow" runat="server" Text="GO" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
