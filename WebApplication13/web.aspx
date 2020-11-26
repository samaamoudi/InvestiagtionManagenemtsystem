<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="web.aspx.cs" Inherits="WebApplication13.web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False"  EnableUpdate="True" EntitySetName="InvestigationCase1"></asp:EntityDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="244px" AutoGenerateEditButton="True" AutoGenerateRows="False" DataKeyNames="Case_ID" DataSourceID="EntityDataSource1" onitemeinserting="DetailsView1_ItemInsterting" AllowPaging="True" AutoGenerateInsertButton="True">
        <Fields>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" ReadOnly="True" SortExpression="Case_End_Date" />
            <asp:TemplateField HeaderText="Case_Status" SortExpression="Case_Status">
                <EditItemTemplate>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status"></asp:EntityDataSource>

    <asp:DropDownList ID="statusdeopdowllist" runat="server" DataSourceID="EntityDataSource2" DataTextField="Case_Status1" DataValueField="Case_Status_ID" OnInit="Casestatusdropdownlist_Init"></asp:DropDownList>

             <%--       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Case_Status") %>'></asp:TextBox>--%>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status"></asp:EntityDataSource>

    <asp:DropDownList ID="statusdeopdowllist" runat="server" DataSourceID="EntityDataSource2" DataTextField="Case_Status1" DataValueField="Case_Status_ID" OnInit="Casestatusdropdownlist_Init"></asp:DropDownList>

                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" ReadOnly="True" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" ReadOnly="True" SortExpression="Case_Duration" />
            <asp:BoundField DataField="Case_Verdict" HeaderText="Case_Verdict" ReadOnly="True" SortExpression="Case_Verdict" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" ReadOnly="True" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" ReadOnly="True" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
