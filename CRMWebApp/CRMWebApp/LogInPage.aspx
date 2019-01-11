<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="CRMWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            height: 26px;
            width: 812px;
        }
        .auto-style9 {
            height: 26px;
            width: 812px;
        }
        .auto-style10 {
            height: 26px;
            width: 564px;
        }
        .auto-style11 {
            height: 26px;
            width: 564px;
        }
        .middle 
        {
            position: absolute;
            top: 50%;
            left: 50%;
            -moz-transform: translateX(-50%) translateY(-50%);
            -webkit-transform: translateX(-50%) translateY(-50%);
            transform: translateX(-50%) translateY(-50%);
        }
        </style>
</head>
<body>
   
     <nav class="navbar navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="LogInPage.aspx">CRM</a>

    </nav>

    <form id="form1" runat="server" >

        <div class="middle" style="width: 30%; ">

            <center>
                <asp:Label ID="Label3" runat="server" Text="Invalid Username or Password" CssClass="text-error" Visible="False" Font-Size="10pt"></asp:Label>
            </center>
           
            <table class="auto-style1 table-condensed"  style="border-right-style: none" border="0">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" Text="UserName :" Height="100%" CssClass="text-sm-left" Width="100%" Font-Bold="False" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your username..." Height="100%" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text="Password :" CssClass="text-sm-left" Height="100%" Width="100%" Font-Bold="False" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your password..." TextMode="Password" Height="100%" Width="100%"></asp:TextBox>
                    </td>
                </tr>
        
                <tr>
                    <td class="auto-style10" >
                        <asp:Button ID="btn_login" runat="server" Text="Log In"  CssClass="btn btn-success btn-large special" OnClick="btn_login_Click" Width="100%" Height="100%" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btn_register" runat="server" Text="Register"  CssClass="btn btn-success btn-large special"  OnClick="btn_register_Click" Width="100%" Height="100%" />               
                    </td>
                </tr>
        
            </table>   
        </div>
      
    </form>

    <script src="js/bootstrap.js"></script>
    
        
</body>
</html>
