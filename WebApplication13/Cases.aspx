<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Cases.aspx.cs" Inherits="WebApplication13.Cases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

        <style type="text/css">
    .rounded_corners
    {
        border: 1px solid grey;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        overflow: hidden;
    }
    .rounded_corners td, .rounded_corners th
    {
        
        font-family: Arial;
        font-size: 10pt;
        text-align: center;
    }
    .rounded_corners table table td
    {
        border-style: none;
    }

    .button {
   
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width:100px;
}


.button1 {border-radius: 8px;
           background-color: darkred; 

}

.button3 {border-radius: 8px;
           background-color: grey; 

}

 .button1:hover {
                background-color: #a43526;
                color: white;
            }
            .button3:hover {
                background-color: #a43526;
                color: white;
            }
            .auto-style1 {
                border: 1px solid #A1DCF2;
                -webkit-border-radius: 8px;
                -moz-border-radius: 8px;
                border-radius: 8px;
                overflow: hidden;
                width: 420px;
            }
        </style> 

    <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource2" Height="270px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1136px">
        <EditRowStyle Font-Overline="True" />
    </asp:GridView>--%>
   <%-- <br />
    <br />
     <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
     <asp:Button ID="SearchButton" runat="server" Text="Search" />
    <br /><br />
    <asp:EntityDataSource ID="EntityDataSource2" runat="server"
        ConnectionString="name=Investigation_management_systemEntities4" 
        DefaultContainerName="Investigation_management_systemEntities4" 
        EnableFlattening="False" EntitySetName="InvestigationCase1" Include=""></asp:EntityDataSource>--%>
  

   <%-- <asp:QueryExtender ID="SearchQueryExtender" runat="server" 
        TargetControlID="SearchEntityDataSource" >
        <asp:SearchExpression SearchType="StartsWith" DataFields="Title">
            <asp:ControlParameter ControlID="SearchTextBox" />
        </asp:SearchExpression>
        <asp:OrderByExpression DataField="Department.Name" Direction="Ascending">
            <asp:ThenBy DataField="Title" Direction="Ascending" />            
        </asp:OrderByExpression>
    </asp:QueryExtender--%>

    <%--<asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource2">
         <asp:SearchExpression SearchType="Contains" DataFields="Case_Duration">
            <asp:ControlParameter ControlID="SearchTextBox" />
        </asp:SearchExpression>
    </asp:QueryExtender>

    <asp:GridView ID="GridView2" runat="server" DataKeyNames="Case_ID" DataSourceID="EntityDataSource2">
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" SortExpression="Requester_ID" />
            <asp:TemplateField HeaderText="Case Verdict">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Case_Verdicts.Case_Verdict1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>--%>

    <h3 style=" color: #051e80 ">Investigation Cases </h3>
       <asp:TextBox ID="SearchTextBox" runat="server" class="input" Width="418px"></asp:TextBox>
     &nbsp;&nbsp;
     <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="button button1" Height="56px" Width="339px" />

            <asp:QueryExtender ID="QueryExtender2" runat="server" TargetControlID="EntityDataSource1">
         <asp:SearchExpression SearchType="Contains" DataFields="Case_Status">
            <asp:ControlParameter ControlID="SearchTextBox" />
        </asp:SearchExpression>
    </asp:QueryExtender>
<%--    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" Select="it.[Case_ID], it.[Case_Type], it.[Case_Start_Date], it.[Requester_ID]"></asp:EntityDataSource>--%>

                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="View_5" ></asp:EntityDataSource>

<%--</div>--%>
        <br />
        <br />
     <div class="rounded_corners" style="width: 1000px">    
    <asp:GridView ID="GridView2" runat="server" HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" 
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px" AutoGenerateColumns="False" DataSourceID="EntityDataSource1" Width="791px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="Case_Type,Case_Status,Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Handler_ID" >
<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
                <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
                <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
                <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
                <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="button button3" SelectText="Details" ShowSelectButton="True" />
            </Columns>

<HeaderStyle BackColor="DarkGray" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="Gainsboro"></RowStyle>
        </asp:GridView>
         </div>
        <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource2">
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
        </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" Select="it.[Case_ID], it.[Case_Start_Date], it.[Case_Type], it.[Case_Status], it.[Requester_ID]">
        </asp:EntityDataSource>
<br />
</asp:Content>
