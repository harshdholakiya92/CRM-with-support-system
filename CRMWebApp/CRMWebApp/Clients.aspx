<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="CRMWebApp.Clients1" EnableEventValidation = "false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:LinkButton runat="server" ID="btn_new" class="btn btn-small btn-success" OnClick="btn_new_Click">
        <i class="fa fa-plus" aria-hidden="true" style="color:white"></i> New
    </asp:LinkButton>
    <asp:LinkButton runat="server" ID="btn_edit" class="btn btn-small btn-success" OnClick="btn_edit_Click">
        <i class="fa fa-pen" aria-hidden="true" style="color:white"></i> Edit
    </asp:LinkButton>
    <asp:LinkButton runat="server" ID="btn_Follow_up" class="btn btn-small btn-success" OnClick="btn_Follow_up_Click">
        <i class="glyphicon glyphicon-new-window" aria-hidden="true" style="color:white"></i> Follow-up
    </asp:LinkButton>
    <asp:LinkButton runat="server" ID="btn_refresh" class="btn btn-small btn-success" OnClick="btn_refresh_Click">
        <i class="fa fa-sync-alt" aria-hidden="true" style="color:white"></i> Refresh
    </asp:LinkButton>
   
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Inquiry_No" DataSourceID="ClientsDataSource" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="150px" Width="95%">
        <Columns>
            <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
            <asp:BoundField DataField="Inquiry_No" HeaderText="Inquiry_No" SortExpression="Inquiry_No" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Contact_Person" HeaderText="Contact_Person" SortExpression="Contact_Person" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <HeaderStyle BackColor="#EEEEEE" />
    </asp:GridView>
    <asp:SqlDataSource ID="ClientsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Inquiry_No], [Mobile_No], [Contact_Person], [Status], [City], [Series], [email], [Remark] FROM [ClientData]"></asp:SqlDataSource>
</asp:Content>
