<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="EmployeeHP.aspx.cs" Inherits="WebApplication13.EmployeeHP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <style type="text/css">
    .rounded_corners
    {
        border: 1px solid #A1DCF2;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        overflow: hidden;
    }
    .rounded_corners td, .rounded_corners th
    {
        border: 1px solid #A1DCF2;
        font-family: Arial;
        font-size: 10pt;
        text-align: center;
    }
    .rounded_corners table table td
    {
        border-style: none;
    }
</style>   
   
<%--     <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
     <asp:Button ID="SearchButton" runat="server" Text="Search" />
     
    <asp:QueryExtender ID="QueryExtender2" runat="server" TargetControlID="EntityDataSource1">
         <asp:SearchExpression SearchType="Contains" DataFields="Case_Status">
            <asp:ControlParameter ControlID="SearchTextBox" />
        </asp:SearchExpression>
    </asp:QueryExtender>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AutoGenerateColumns="False" DataKeyNames="Case_Status,Case_ID,Case_Start_Date,Case_Details,Employee_ID,Case_Handler_ID,Requester_ID">
        <Columns>
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
            <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" ReadOnly="True" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
            <asp:BoundField DataField="Case_Verdict" HeaderText="Case_Verdict" SortExpression="Case_Verdict" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" ReadOnly="True" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" ReadOnly="True" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="View_3"></asp:EntityDataSource>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Case_Handler_ID,Requester_ID,Case_Status,Case_Type,Case_Verdict" DataSourceID="EntityDataSource2">
                <Columns>
                    <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
                    <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
                    <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
                    <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" ReadOnly="True" SortExpression="Case_Details" />
                    <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
                    <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" ReadOnly="True" SortExpression="Employee_ID" />
                    <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" ReadOnly="True" SortExpression="Case_Handler_ID" />
                    <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
                    <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
                    <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
                    <asp:BoundField DataField="Case_Verdict" HeaderText="Case_Verdict" ReadOnly="True" SortExpression="Case_Verdict" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="View_4"></asp:EntityDataSource>
--%>
             <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
     <asp:Button ID="SearchButton" runat="server" Text="Search" />

            <asp:QueryExtender ID="QueryExtender2" runat="server" TargetControlID="EntityDataSource1">
         <asp:SearchExpression SearchType="Contains" DataFields="Case_Status">
            <asp:ControlParameter ControlID="SearchTextBox" />
        </asp:SearchExpression>
    </asp:QueryExtender>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="View_5" ></asp:EntityDataSource>
    <br />
   <br />
   <div class="rounded_corners" style="width: 1000px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Case_Type,Case_Status,Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Handler_ID" DataSourceID="EntityDataSource1"   HeaderStyle-BackColor="#3AC0F2"
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Height="208px" style="width: 1000px">
                <Columns>
                    <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
                    <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
                    <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
                    <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
                    <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
                </Columns>
            </asp:GridView>
            </div>
</asp:Content>
