<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="Lead_Follow_up.aspx.cs" Inherits="CRMWebApp.Lead_Follow_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="temp/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:LinkButton runat="server" ID="btn_add" class="btn btn-small btn-success" OnClick="btn_add_Click">
        <i class="fa fa-plus" aria-hidden="true" style="color:white"></i> Add
    </asp:LinkButton>

    <table class="w-100">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Follow-up on" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Next Follow-up" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >         
                <div class="row">
                    <div class='col-sm-6'>
                        <div class="form-group">
                            <div class='input-group date ' id='datetimepicker1'>       
                                <asp:TextBox Class="form-control" ID="Tb_DateTime" runat="server" Height="100%"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar""></span>
                                </span>
                            </div>
                        </div>
                    </div>        
                </div>     
            </td>
            <td>
                <div class="row">
                    <div class='col-sm-6'>
                        <div class="form-group">
                            <div class='input-group date ' id='datetimepicker2'>       
                                <asp:TextBox Class="form-control" ID="Tb_NextDateTime" runat="server" Height="100%"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar""></span>
                                </span>
                            </div>
                        </div>
                    </div>        
                </div> 
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Action Taken" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Take Action" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList_Action" runat="server" Width="279px" DataSourceID="ActionDataSource" DataTextField="Action" DataValueField="Action">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ActionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Action] FROM [Action_Master]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_NextAction" runat="server" Width="279px" DataSourceID="ActionDataSource" DataTextField="Action" DataValueField="Action">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="padding-top:15px">
                <asp:Label ID="Label5" runat="server" Text="Response" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td style="padding-top:15px">
                <asp:Label ID="Label6" runat="server" Text="What Todo" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Tb_Response" runat="server" TextMode="MultiLine" Height="200px" Width="342px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="Tb_What_Todo" runat="server" TextMode="MultiLine" Height="200px" Width="342px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <script src="jquery/jquery-1.8.3.min.js"></script>
    <script src="temp/js/bootstrap-datetimepicker.min.js"></script>
    <script src="temp/js/moment.js"></script>
    <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
        });
         $(function () {
                $('#datetimepicker2').datetimepicker();
            });
        </script>
</asp:Content>
