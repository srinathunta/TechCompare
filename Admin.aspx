<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TechCompare19.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .container
    {
        text-align:center;
        }
    p
    {
        font-size:medium;
        font-weight:bold;
        }
     p a
     {
         text-decoration:none;
         
         }
     p a:hover
     {
         text-decoration:underline;
         }
     .TextBox
     {
         height:30px;
         width:200px;
         border-color:black;
         border-width:thin;
         margin:2px;
         padding:2px;
         }
     #Button1
     {
         height:30px;
         Width:80px;
         background-color:White;
         color:Black;
         margin:5px;
         padding:2px;
         }
     #Button2
     {
         height:30px;
         Width:80px;
         background-color:White;
         color:Black;
         margin:5px;
         padding:2px;
         }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <h1>Add products</h1>
        <p>Product Name:</p>
        <asp:TextBox ID="prodname" class="TextBox" runat="server"></asp:TextBox>
        <p>Image:</p>
        <asp:TextBox ID="image" class="TextBox" runat="server"></asp:TextBox><br />
        <p>Category:</p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        Height="25px" Width="100px">
            <asp:ListItem>Mobile</asp:ListItem>
            <asp:ListItem>TV</asp:ListItem>
            <asp:ListItem>Camera</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
            
    </div>
</asp:Content>
