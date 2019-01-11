<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="CRMWebApp.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <link href="bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
         .middle 
        {
            position: absolute;
            top: 50%;
            left: 50%;
            -moz-transform: translateX(-50%) translateY(-50%);
            -webkit-transform: translateX(-50%) translateY(-50%);
            transform: translateX(-50%) translateY(-50%);
        }
         .auto-style1 {
            height: 26px;
            width: 400px
        }
        .auto-style2 {
            height: 26px;
            width: 500px;
        }
         .auto-style3 {
            height: 26px;
            width: 20px;
        }
       
        .auto-style4 {
            position: absolute;
            top: 50%;
            left: 56%;
            -moz-transform: translateX(-50%) translateY(-50%);
            -webkit-transform: translateX(-50%) translateY(-50%);
            transform: translateX(-50%) translateY(-50%);
            width: 45%;
        }
       
    </style>
</head>
<body>

    <nav class="navbar navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="LogInPage.aspx">CRM</a>

    </nav>

    <form id="form1" runat="server">
        <div class="auto-style4">

            <table class="table-condensed">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_name" runat="server" Text="Name :" Height="100%" CssClass="text-left" Width="100%" Font-Bold="False" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="100%" placeholder="Enter your Name..."></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is Required" ForeColor="Red" SetFocusOnError="True" Font-Size="12pt" ToolTip="Name is Required">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_uname" runat="server" Text="User Name :" Height="100%" CssClass="text-left" Width="100%" Font-Bold="False" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" Height="100%" Width="100%" placeholder="Choose your User ID..."></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User Name is Required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBox2" Font-Size="12pt" ToolTip="User Name is Required">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_email" runat="server" Text="Email ID :" Height="100%" CssClass="text-left" Width="100%" Font-Bold="False" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Height="100%" Width="100%" placeholder="Enter your Email ID..."></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email ID is Required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBox3" Font-Size="12pt" ToolTip="Email ID is Required">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email ID" Font-Size="12pt" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ToolTip="Invalid Email ID">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_password" runat="server" Text="Password :" Height="100%" CssClass="text-left" Width="100%" Font-Bold="False" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Height="100%" Width="100%" TextMode="Password" placeholder="Enter new Password..."></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is Required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBox4" Font-Size="12pt" ToolTip="Password is Required">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_con_pass" runat="server" Text="Confirm Password :" Height="100%" CssClass="text-left" Width="100%" Font-Bold="False" Font-Size="16pt" Font-Italic="False"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server" Height="100%" Width="100%" TextMode="Password" placeholder="Enter Password again..."></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password &amp; Confirm Password does not match" ForeColor="Red" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Font-Size="12pt" ToolTip="Password &amp; Confirm Password does not match">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2" >
                        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btn btn-large btn-success" OnClick="Button1_Click" Height="100%" Width="100%" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
