<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CaseDetails.aspx.cs" Inherits="WebApplication13.CaseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       <style type="text/css">
    

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
    .groove {border-style: solid;
padding-top: 20px;
padding-left: 50px;
padding-right: 0px;
border-color: #d9d9d9;
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
      <div id="detailsPanel" runat="server" class="groove">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <div class="Button">

         </div>   
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:Button ID="Button1" runat="server" class="button button1" OnClick="Button1_Click" Text="Close" />
            <br />
            Details of case number: 
            <asp:Label ID="lpCaseID" runat="server" Text=""></asp:Label>
    <asp:DetailsView ID="DetailsView2" runat="server" Height="520px" Width="674px" CellPadding="3" DataSourceID="EntityDataSource3" GridLines="Vertical" AutoGenerateRows="False" DataKeyNames="Case_ID" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
            <asp:BoundField DataField="Case_Verdict" HeaderText="Case_Verdict" SortExpression="Case_Verdict" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" SortExpression="Requester_ID" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
            <br />
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="Evidence_ID" DataSourceID="EntityDataSource1" Height="50px" Width="125px">
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Evidences"  Where="it.Case_ID=@idparam">
             <WhereParameters>
            <asp:ControlParameter ControlID="lpCaseID" DefaultValue="1" Name="idparam" PropertyName="Text" DbType="Int32" />
        </WhereParameters>
                </asp:EntityDataSource>
          <br />
          <br />

        </div>
    <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" Where="it.Case_ID=@idparam">
        <WhereParameters>
            <asp:ControlParameter ControlID="lpCaseID" DefaultValue="1" Name="idparam" PropertyName="Text" DbType="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>

    <asp:Button ID="Button2" runat="server" Text="Evidence" />
            <br />
           <%-- <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities3" DefaultContainerName="Investigation_management_systemEntities3" EnableFlattening="False" EntitySetName="InvestigationCases" EntityTypeFilter=""  Where="it.Case_ID=@idparam">
                <WhereParameters>
                    <asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                </WhereParameters>
            </asp:EntityDataSource>--%>
  
<br />
     <%-- <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities3" DefaultContainerName="Investigation_management_systemEntities3" EnableFlattening="False" EntitySetName="InvestigationCases" Where="it.Case_ID=@idparam">
        <WhereParameters>
            <asp:ControlParameter ControlID="lpCaseID" DefaultValue="1" Name="idparam" PropertyName="Text" DbType="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>--%>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
        <Fields>
             <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
            <asp:BoundField DataField="Case_Verdict" HeaderText="Case_Verdict" SortExpression="Case_Verdict" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" SortExpression="Requester_ID" />
        </Fields>
        
    </asp:DetailsView>

</asp:Content>
