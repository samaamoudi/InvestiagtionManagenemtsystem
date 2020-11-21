<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication13.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" Visible="true" />
             <asp:BoundField DataField="Case_Type1" HeaderText="Case_Type" Visible="true" />
             <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" Visible="true" />
             <asp:BoundField DataField="Case_Status1" HeaderText="Case_Status" Visible="true" />
             <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" Visible="true" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:gridview runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1">
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
        </Columns>
    </asp:gridview>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1"
        Select="it.[Case_ID], it.[Case_Type], it.[Case_Start_Date], it.[Requester_ID], it.[Case_Status]">
    </asp:EntityDataSource>



    
    <asp:gridview runat="server" DataSourceID="EntityDataSource2"></asp:gridview>
    <asp:entitydatasource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4"
        EnableFlattening="False" CommandText="select it.[case type], c.[Case_Start_Date], c.[Requester_ID],c. [Case_ID] from Investigation_management_systemEntities4
        as it inner join Investigation_management_systemEntities4.InvestigationCase1 as c on it.[Case_Type]=c.[case type]">
    </asp:entitydatasource>
</asp:Content>
<%--select it.[Case_ID],it.[Case_Type], it.[Case_Start_Date], it.[Requester_ID],c. [case type] from Investigation_management_systemEntities4
        as it inner join Investigation_management_systemEntities4.CaseType as c on it.[Case_Type]=c.[case type]"--%>