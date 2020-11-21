<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EvidenceEmp.aspx.cs" Inherits="WebApplication13.EvidenceEmp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Evidence_ID" DataSourceID="EntityDataSource1">
        <Fields>
            <asp:BoundField DataField="Evidence_ID" HeaderText="Evidence_ID" ReadOnly="True" SortExpression="Evidence_ID" />
            <asp:BoundField DataField="Evidence_Type" HeaderText="Evidence_Type" SortExpression="Evidence_Type" />
            <asp:BoundField DataField="Evidence_Date" HeaderText="Evidence_Date" SortExpression="Evidence_Date" />
            <asp:BoundField DataField="Evidence_Details" HeaderText="Evidence_Details" SortExpression="Evidence_Details" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" SortExpression="Requester_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" SortExpression="Case_ID" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Evidences">
    </asp:EntityDataSource>
</asp:Content>
