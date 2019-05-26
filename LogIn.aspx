<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TechCompare19.WebForm10" %>
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
    <h1>LogIn</h1>
        <p>Username:</p>
        <asp:TextBox ID="Username" class="TextBox" runat="server"></asp:TextBox>
        <p>Password:</p>
        <asp:TextBox ID="Password" class="TextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="LogIn" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" /><br /><br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p><a href="Signup1.aspx">create account</a> </p>
    </div>
</asp:Content>
