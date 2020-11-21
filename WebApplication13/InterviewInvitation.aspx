<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InterviewInvitation.aspx.cs" Inherits="WebApplication13.InterviewInvitation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Interview_Invitation_ID" DataSourceID="EntityDataSource1">
        <Fields>
            <asp:BoundField DataField="Interview_Invitation_ID" HeaderText="Interview_Invitation_ID" ReadOnly="True" SortExpression="Interview_Invitation_ID" />
            <asp:BoundField DataField="Interview_Invitation_Date" HeaderText="Interview_Invitation_Date" SortExpression="Interview_Invitation_Date" />
            <asp:BoundField DataField="Interview_Invitation_Time" HeaderText="Interview_Invitation_Time" SortExpression="Interview_Invitation_Time" />
            <asp:BoundField DataField="Interview_Invitation_Location" HeaderText="Interview_Invitation_Location" SortExpression="Interview_Invitation_Location" />
            <asp:BoundField DataField="Interview_Invitation_Date_Sent" HeaderText="Interview_Invitation_Date_Sent" SortExpression="Interview_Invitation_Date_Sent" />
            <asp:BoundField DataField="Interview_Invitation_Acceptance" HeaderText="Interview_Invitation_Acceptance" SortExpression="Interview_Invitation_Acceptance" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Interview_Invitation_Invitee" HeaderText="Interview_Invitation_Invitee" SortExpression="Interview_Invitation_Invitee" />
            <asp:BoundField DataField="Interview_Invitation_Details" HeaderText="Interview_Invitation_Details" SortExpression="Interview_Invitation_Details" />
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" SortExpression="Case_ID" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Interview_Invite">
    </asp:EntityDataSource>
</asp:Content>

