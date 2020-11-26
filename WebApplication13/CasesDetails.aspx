<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CasesDetails.aspx.cs" Inherits="WebApplication13.CasesDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>
 <style type="text/css">
        .auto-style1 {
            height: 856px;
            overflow: auto;
        }
                     
    
    .select {
  width: 30%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}

  
.input {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

.input:focus {
  border: 2px solid #051e80;
}

.text{
color: #6d6d6d;
}
.groove {border-style: solid;
padding-top: 20px;
padding-left: 50px;
padding-right: 0px;
border-color: #d9d9d9;
}

.button {
 
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width: 20%;
  
}
.button2 {border-radius: 4px;
           background-color: #c93b2b; 
}
.button2:hover {
  background-color: #a43526;
  color: white;
}

.button3 {border-radius: 4px;
           background-color: grey; 

}

.button3:hover {
  background-color: #a43526;
  color: white;
}
      


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <%--     <div id="detailsPanel" style="border-style: inset; border-color: inherit; border-width: medium; background-color: white; padding: 10px; " runat="server" class="auto-style1">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:Button ID="Button1" runat="server" BackColor="#0066FF" BorderColor="Black" ForeColor="White" OnClick="Button1_Click" Text="Close" />
            <br />
            Details of case number: 
            <asp:Label ID="lpCaseID" runat="server" Text=""></asp:Label>
    <asp:DetailsView ID="DetailsView" runat="server" Height="50px" Width="359px" CellPadding="4" DataSourceID="EntityDataSource3" ForeColor="#333333" GridLines="None" AutoGenerateRows="False" DataKeyNames="Case_ID" >
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date"  ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
            <asp:TemplateField HeaderText="Case_Status" SortExpression="Case_Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Case_Status1" DataValueField="Case_Status_ID"></asp:DropDownList>
                     <asp:ListItem Enabled="true" Text="Select Status" value="-1"></asp:ListItem>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Case_Status") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Case_Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Case_Details" HeaderText="Case_Details"  ReadOnly="True" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
            <asp:TemplateField HeaderText="Case_Verdiacte" SortExpression="Case_Verdiacte">
                <EditItemTemplate>--%>
                   <%-- <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Case_Verdiacte") %>'></asp:TextBox>--%>
                    <%--       <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EntityDataSource5" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID">
       </asp:DropDownList>
                     <asp:ListItem Enabled="true" Text="Select Case Verdict" value="-1"></asp:ListItem>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Case_Verdiacte") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Case_Verdiacte") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID"  ReadOnly="True" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID"  ReadOnly="True" SortExpression="Requester_ID" />
            <asp:BoundField HeaderText="Interview" ReadOnly="True" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>

           <br />

           <asp:Button ID="Button2" runat="server" Text="Relocate" />
           <asp:Button ID="Button3" runat="server" Text="Request Information" CssClass="auto-style2" OnClick="Button3_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button4" runat="server" Text="Interview Invitation" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button5" runat="server" Text="Save Changes" />

        </div>--%>
            <br />
           <%-- <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities3" DefaultContainerName="Investigation_management_systemEntities3" EnableFlattening="False" EntitySetName="InvestigationCases" EntityTypeFilter=""  Where="it.Case_ID=@idparam">
                <WhereParameters>
                    <asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                </WhereParameters>
            </asp:EntityDataSource>--%>
 <%--   <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities3" DefaultContainerName="Investigation_management_systemEntities3" EnableFlattening="False" EntitySetName="InvestigationCases" Where="it.Case_ID=@idparam">
        <WhereParameters>
            <asp:ControlParameter ControlID="lpCaseID" DefaultValue="1" Name="idparam" PropertyName="Text" DbType="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>--%>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Case_Type" DataValueField="C_Case_Type_ID"></asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="CaseTypes"></asp:EntityDataSource>
       <br />
       <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EntityDataSource4" DataTextField="Case_Status1" DataValueField="Case_Status_ID">
       </asp:DropDownList>
       <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EntityDataSource5" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID" >
       </asp:DropDownList>
       <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status">
       </asp:EntityDataSource>
       <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Verdicts">
       </asp:EntityDataSource>

    <div id="detailsPanel" class="groove" >
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:Button ID="Button1" runat="server" class="button button2" OnClick="Button1_Click" Text="Close" />
            <br />
            Details of case number: 
            <asp:Label ID="lpCaseID" runat="server" Text=""></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="470px" Width="400px" AutoGenerateRows="False" DataKeyNames="Case_ID" DataSourceID="EntityDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
                <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
                <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date"  ReadOnly="True" SortExpression="Case_Start_Date" />
                <asp:BoundField DataField="Case_End_Date" HeaderText="Case_End_Date" SortExpression="Case_End_Date" />
                <asp:TemplateField HeaderText="Case_Status" SortExpression="Case_Status">
                    <EditItemTemplate>
                <%--       <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Case_Status1" DataValueField="Case_Status_ID"></asp:DropDownList>--%>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="EntityDataSource3" DataTextField="Case_Status1" DataValueField="Case_Status_ID"></asp:DropDownList>
                     <asp:ListItem Enabled="true" Text="Select Status" value="-1"></asp:ListItem>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Case_Status") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Case_Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:BoundField DataField="Case_Status1" HeaderText="Case_Status" SortExpression="Case_Status1" />--%>
                <asp:BoundField DataField="Case_Details" HeaderText="Case_Details" SortExpression="Case_Details" />
                <asp:BoundField DataField="Case_Duration" HeaderText="Case_Duration" SortExpression="Case_Duration" />
                <asp:TemplateField HeaderText="Case_Verdict" SortExpression="Case_Verdict">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EntityDataSource5" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID">
       </asp:DropDownList>
                     <asp:ListItem Enabled="true" Text="Select Case Verdict" value="-1"></asp:ListItem>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Case_Verdict") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Case_Verdict") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" ReadOnly="True"  />
                <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID"  />
                <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" SortExpression="Requester_ID" ReadOnly="True" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
                  <br />
          

<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="button button2" data-toggle="modal" data-target="#myModal">Reallocate</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
              <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="EntityDataSource6" DataTextField="Case_Handler_Type" DataValueField="CH_Employee_ID">
 
    </asp:RadioButtonList>
    

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Submit</button>
        </div>
      </div>
      
    </div>
  </div>
    
           &nbsp;&nbsp;
    
           <asp:Button ID="Button3" runat="server" Text="Request Information" class="button button2" OnClick="Button3_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Interview Invitation" class="button button2" OnClick="Button4_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button5" runat="server"  class="button button2" Text="Save Changes" />
    <asp:Button ID="Button2" runat="server"  class="button button2" Text="Interview" OnClick="Button2_Click" />
  <asp:Button ID="Button6" runat="server"  class="button button2" Text="Termination Request " OnClick="Button6_Click" />
</div>
    
    <asp:EntityDataSource ID="EntityDataSource6" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Handlers"></asp:EntityDataSource>
  
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" EntityTypeFilter=""  Where="it.Case_ID=@idparam">
              <WhereParameters>
                    <asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                </WhereParameters>
        </asp:EntityDataSource>

        </div>
       <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status"></asp:EntityDataSource>

    </asp:Content>