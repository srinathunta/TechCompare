<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup1.aspx.cs" Inherits="TechCompare19.Signup1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="Stylesheet" type="text/css" href="StyleSheet1.css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.footer').css('margin-top', $(document).height() - ($('.content').height() + $('.footer').height()) - 50);
        });
        
</script>
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
</head>
<body>
    <form id="Form1" runat="server">
    <div class="header">
	<div class="nav">
        	<div class="logo">
               		TechCompare
            	</div>
                
            	
            	
	</div>
        

    </div>
    <div class="container">
        <h1>SignUp</h1>
        <p>First Name:</p>
        <asp:TextBox ID="fname" class="TextBox" runat="server"></asp:TextBox>
        <p>Last Name:</p>
        <asp:TextBox ID="lname" class="TextBox" runat="server"></asp:TextBox>
        
        <p>Phone:</p>
        <asp:TextBox ID="phone" class="TextBox" runat="server"></asp:TextBox>
        <p>UserName:</p>
        <asp:TextBox ID="uname" class="TextBox" runat="server"></asp:TextBox>
        <p>Password:</p>
        <asp:TextBox ID="pass" class="TextBox" runat="server"></asp:TextBox><br />
        <p>Confirm Password:</p>
        <asp:TextBox ID="cpass" class="TextBox" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server"></asp:Label><br />
            
        <asp:Button ID="Button1" runat="server" Text="SignUp" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
