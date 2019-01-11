 <%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="Clients_Add_Edit.aspx.cs" Inherits="CRMWebApp.Clients" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width; initial-scale=1.16;"/>
    <style type="text/css">
        .lable_top{
            vertical-align:top;
        }
        .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .modalPopup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 400px;
            height: 200px;
        }
        #InquiryForList input[type="checkbox"] {
                margin-right: 10px;
            }

        .auto-style1 {
            width: 120px;
        }
        .auto-style2 {
            width: 450px;
        }
        .auto-style3 {
            width: 50px;
        }
        .auto-style4 {
            width: 150px;
        }
        .auto-style5 {
            width: 406px;
            float:right;
        }
        .auto-style7 {
            width: 345px;
        }
        .auto-style10 {
            width: 98%
        }
        .auto-style12 {
            width: 297px;
        }
        .auto-style13 {
            width: 295px;
        }
        .auto-style14 {
            height: 157px;
        }
        .auto-style15 {
            width: 100%;
            height: 25px;
        }
        .auto-style16 {
            text-align: center;
            margin-left: 10px;
        }
        .auto-style17 {
            width: 88px;
        }
        </style>

   

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    

   <div style="width:1100px">
    <asp:LinkButton runat="server" ID="btn_new" class="btn btn-small btn-success" OnClick="Button1_Click">
        <i class="fa fa-save" aria-hidden="true" style="color:white"></i> Save
    </asp:LinkButton>
    <asp:LinkButton runat="server" ID="Btn_Follow_up" class="btn btn-small btn-success" OnClick="Btn_Follow_up_Click" Visible="False">
        <i class="glyphicon glyphicon-new-window" aria-hidden="true" style="color:white"></i> Follow-up
    </asp:LinkButton>
    <br />
    <br />
    <table cellpadding="0" cellspacing="0" class="w-100" border="0" style="ba;">
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1 lable_top" >
                            <asp:Label ID="Label1" runat="server" Text="Inquiry No. :" Font-Bold="True" ForeColor="Red" CssClass="text-sm-left" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="auto-style3"  >
                            <asp:TextBox ID="Tb_Series" runat="server" Width="100%" Height="100%" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="Tb_Inquiry_No" runat="server" Width="100%" Height="100%" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="80%" Width="64%" DataSourceID="UserNameDataSource" DataTextField="uid" DataValueField="uid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="UserNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uid] FROM [UserData]"></asp:SqlDataSource>

                        </td>
                        <td class="auto-style17 lable_top" align="right">
                            <asp:Label ID="Label2" runat="server" Text="Date :" Font-Bold="True" ForeColor="Red" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Tb_Date" runat="server" ReadOnly="True" Width="67%" Height="100%" CssClass="auto-style16"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label3" runat="server" Text="Contact Person :" Font-Bold="True" ForeColor="Red" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Tb_Contact_person" runat="server" Width="350px" Height="100%" AutoPostBack="True"></asp:TextBox>
                        </td>
                        <td class="auto-style1  lable_top">
                            <asp:Label ID="Label4" runat="server" Text="Mobile No. :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Tb_Mobile_no" runat="server" Width="350px" Height="100%" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label5" runat="server" Text="e-mail :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Tb_email" runat="server" Width="350px" Height="100%"></asp:TextBox>
                        </td>
                        <td class="auto-style1  lable_top">
                            <asp:Label ID="Label6" runat="server" Text="Land Line :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Tb_LandLine" runat="server" Width="350px" Height="100%" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label7" runat="server" Text="Company Name :" Font-Bold="True" ForeColor="Red" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Tb_Company_Name" runat="server" Height="100%" Width="920px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label8" runat="server" Text="Address :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Tb_Address" runat="server" Height="100%" Width="920px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label9" runat="server" Text="Area :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList_Area" runat="server" DataSourceID="AreaDataSource" DataTextField="Area" DataValueField="Area">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="AreaDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area] FROM [Area_Master]"></asp:SqlDataSource>
                            <asp:LinkButton runat="server" ID="btn_popup_area" class="btn-small">
                                       <i class="fa fa-plus" aria-hidden="true" style="color:green"></i>
                            </asp:LinkButton>
                        </td>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label10" runat="server" Text="City :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_City" runat="server" Width="276px" DataSourceID="CityDataSource" DataTextField="City" DataValueField="City">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="CityDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [City] FROM [City_Master]"></asp:SqlDataSource>
                            <asp:LinkButton runat="server" ID="btn_popup_city" class="btn-small">
                                       <i class="fa fa-plus" aria-hidden="true" style="color:green"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label11" runat="server" Text="State :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList_State" runat="server" DataSourceID="StateDataSource" DataTextField="State" DataValueField="State">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="StateDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [State] FROM [State_Matser]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label12" runat="server" Text="Pin Code :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td style="padding-top:10px">
                            <asp:TextBox ID="Tb_PinCode" runat="server" Width="276px" Height="100%" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
             
                <table border="0" style="width:95%">
                    <tr>
                        <td class="auto-style1 lable_top" style="vertical-align:middle">
                            <asp:Label ID="Label13" runat="server" Text="Remark :" Font-Bold="True" Font-Size="Small" CssClass="accordion"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="Tb_Remark" runat="server" Height="130px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                        </td>
                        <td class="auto-style12  table-bordered" >
                            <div style="border-bottom-style:solid; border-bottom-color: inherit; border-bottom-width: thin;" class="auto-style15">
                                <asp:Label ID="Label14" runat="server" Text="Inquiry For" Font-Bold="True" Font-Size="Small" ></asp:Label>
                                                            
                                <asp:LinkButton runat="server" ID="btn_popup_inquiry_for" class="btn-small" style="float:right">
                                       <i class="fa fa-plus" aria-hidden="true" style="color:green"></i>
                                </asp:LinkButton>
                            </div>
                            
                            <DIV id="InquiryForList" style="OVERFLOW-Y:scroll; height:100px;width:100%">                               
                                <asp:CheckBoxList ID="CheckBoxList_Inquiry_For" runat="server" DataSourceID="InquiryForDataSource" DataTextField="Inquiry_For" DataValueField="Inquiry_For" Width="100%" style="margin-right:50px" Font-Size="Small" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                                </asp:CheckBoxList>
                                <asp:SqlDataSource ID="InquiryForDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Inquiry_For] FROM [Inquiry_For_Master]"></asp:SqlDataSource>
                            </DIV>
                            
                        </td>
                        <td class="auto-style13  table-bordered lable_top">
                            <div style="border-bottom-style:solid; border-bottom-color: inherit; border-bottom-width: thin;" class="auto-style15">
                                <asp:Label ID="Label15" runat="server" Text="Inquiry Stage" Font-Bold="True" Font-Size="Small" ></asp:Label>
                                                            
                                <asp:LinkButton runat="server" ID="btn_popup_inquiry_stage" class="btn-small" style="float:right">
                                       <i class="fa fa-plus" aria-hidden="true" style="color:green"></i>
                                </asp:LinkButton>
                            </div>
                             <DIV id="InquiryForList" style="OVERFLOW-Y:scroll; height:100px;width:100%">                               
                                <asp:CheckBoxList ID="CheckBoxList_Inquiry_Stage" runat="server" DataSourceID="InquiryStageDataSource" DataTextField="Inquiry_Stage" DataValueField="Inquiry_Stage" Width="100%" style="margin-right:50px" Font-Size="Small" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList_Inquiry_Stage_SelectedIndexChanged">
                                </asp:CheckBoxList>
                                 <asp:SqlDataSource ID="InquiryStageDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Inquiry_Stage] FROM [Inquiry_Stage_Master]"></asp:SqlDataSource>
                            </DIV>
                        </td>
                    </tr>
                </table>
                       
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label16" runat="server" Text="Pass On To :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList_PassOnTo" runat="server" Width="223px" DataSourceID="UserNameDataSource" DataTextField="uid" DataValueField="uid">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style1 lable_top">
                            <asp:Label ID="Label17" runat="server" Text="Status :" Font-Bold="True" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_Status" runat="server" Width="276px" DataSourceID="StatusDataSource" DataTextField="Status" DataValueField="Status">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="StatusDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Status] FROM [Status]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    
                </table>
            </td>
        </tr>
        <tr>
            <td >
                <br />
                <DIV id="grid" style="width:95%">  
                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="Follow_upDataSource" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Sr_No" HeaderText="Sr_No" SortExpression="Sr_No" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" HtmlEncode="False" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" DataFormatString="{0:hh\:mm}" HtmlEncode="False" />
                        <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
                        <asp:BoundField DataField="Response" HeaderText="Response" SortExpression="Response" />
                        <asp:BoundField DataField="Next_Date" HeaderText="Next_Date" SortExpression="Next_Date"  DataFormatString="{0:d}" HtmlEncode="False" />
                        <asp:BoundField DataField="Next_Time" HeaderText="Next_Time" SortExpression="Next_Time" DataFormatString="{0:hh\:mm}" HtmlEncode="False"/>
                        <asp:BoundField DataField="Next_Action" HeaderText="Next_Action" SortExpression="Next_Action" />
                    </Columns>
                    <HeaderStyle BackColor="#EEEEEE" />
                </asp:GridView>
                <asp:SqlDataSource ID="Follow_upDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Sr_No], [Date], [Time], [Action], [Response], [Next_Date], [Next_Time], [Next_Action] FROM [Lead_Follow_up] WHERE ([Inquiry_No] = @Inquiry_No)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="" Name="Inquiry_No" QueryStringField="id" Type="Decimal" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                </DIV>
            </td>
        </tr>
    </table>
  
    </div>


    <%--PopUps--%>
    <!--City ModalPopupExtender -->
    <cc1:ModalPopupExtender ID="ModalPopupExtender_City" runat="server" PopupControlID="Panel_City" TargetControlID="btn_popup_city"
        CancelControlID="close3" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel_City" runat="server" CssClass="modalPopup" align="center" style = "display:none">

       <asp:LinkButton ID="close3" runat="server" class="btn-small" style="float:right">
            <i class="fa fa-times" aria-hidden="true" style="color:grey"></i>
       </asp:LinkButton>
       
        
       <table class="auto-style3" style="width:80%;margin-top:25px">
            <tr>
                <td align="center"><h4>Add City</h4></td>
            </tr>
            <tr>
                <td class="auto-style2" align="center">
                      <asp:TextBox ID="Tb_add_city" runat="server" Height="100%" Width="89%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                     <asp:Button ID="Btn_Add_City" runat="server" Text="Add"  CssClass="btn-success btn" Height="100%" Width="30%" OnClick="Btn_Add_City_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <!--Area ModalPopupExtender -->
    <cc1:ModalPopupExtender ID="ModalPopupExtender_Area" runat="server" PopupControlID="Panel_Area" TargetControlID="btn_popup_area"
        CancelControlID="close4" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel_Area" runat="server" CssClass="modalPopup" align="center" Style="display: none">

        <asp:LinkButton ID="close4" runat="server" class="btn-small" Style="float: right">
            <i class="fa fa-times" aria-hidden="true" style="color:grey"></i>
        </asp:LinkButton>


        <table class="auto-style3" style="width: 80%; margin-top: 25px">
            <tr>
                <td align="center">
                    <h4>Add Area</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="center">
                    <asp:TextBox ID="Tb_add_area" runat="server" Height="100%" Width="89%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Btn_Add_Area" runat="server" Text="Add" CssClass="btn-success btn" Height="100%" Width="30%" OnClick="Btn_Add_Area_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
 
 
    <!--Inquiry Stage ModalPopupExtender -->
    <cc1:ModalPopupExtender ID="ModalPopupExtender_InquiryStage" runat="server" PopupControlID="Panel_InquiryStage" TargetControlID="btn_popup_inquiry_stage"
        CancelControlID="close1" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel_InquiryStage" runat="server" CssClass="modalPopup" align="center" style = "display:none">

       <asp:LinkButton ID="close1" runat="server" class="btn-small" style="float:right">
            <i class="fa fa-times" aria-hidden="true" style="color:grey"></i>
       </asp:LinkButton>
       
        
       <table class="auto-style3" style="width:80%;margin-top:25px">
            <tr>
                <td align="center"><h4>Add Inquiry Stage Field</h4></td>
            </tr>
            <tr>
                <td class="auto-style2" align="center">
                      <asp:TextBox ID="Tb_Inquiry_Stage" runat="server" Height="100%" Width="89%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                     <asp:Button ID="Btn_Add_InquiryStage" runat="server" Text="Add"  CssClass="btn-success btn" Height="100%" Width="30%" OnClick="Btn_Add_InquiryStage_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>

 
    <!--Inquiry For ModalPopupExtender -->
    <cc1:ModalPopupExtender ID="ModalPopupExtender_InquiryFor" runat="server" PopupControlID="Panel_InquiryFor" TargetControlID="btn_popup_inquiry_for"
        CancelControlID="Close2" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel_InquiryFor" runat="server" CssClass="modalPopup" align="center" style = "display:none">
         <asp:LinkButton ID="Close2" runat="server" class="btn-small" style="float:right">
            <i class="fa fa-times" aria-hidden="true" style="color:grey"></i>
         </asp:LinkButton>

        <table class="auto-style3" style="width:80%;margin-top:25px">
            <tr>
                <td align="center"><h4>Add Inquiry For Field</h4></td>
            </tr>
            <tr>
                <td class="auto-style2" align="center">
                     <asp:TextBox ID="Tb_Inquiry_For" runat="server" Height="100%" Width="65%" placeholder="Enter new field"></asp:TextBox>
                     <asp:TextBox ID="Tb_Inquiry_Series" runat="server" Height="100%" Width="30%" placeholder="Series"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td align="center">
                     <asp:Button ID="Btn_Add_InquiryFor" runat="server" Text="Add"  CssClass="btn-success btn" Height="100%" Width="30%" OnClick="Btn_Add_InquiryFor_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <%--/PopUps--%>
  
</asp:Content>
