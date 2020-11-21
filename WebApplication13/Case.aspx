<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Case.aspx.cs" Inherits="WebApplication13.Case" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
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

      <h3 style=" color: #051e80 ">Investigation Cases </h3>
       <asp:TextBox ID="SearchTextBox" runat="server" class="input" Width="418px"></asp:TextBox>
     &nbsp;&nbsp;
     <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="button button1" Height="56px" Width="339px" />

            <asp:QueryExtender ID="QueryExtender2" runat="server" TargetControlID="EntityDataSource1">
         <asp:SearchExpression SearchType="Contains" DataFields="Case_Status">
            <asp:ControlParameter ControlID="SearchTextBox" />
        </asp:SearchExpression>
    </asp:QueryExtender>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="View_5" ></asp:EntityDataSource>


<div class="rounded_corners" style="width: 1000px">      
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  OnPageIndexChanging="GridView1_PageIndexChanging" HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" 
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px"  Width="791px"  AllowPaging="True" PageIndex="1" PageSize="7"   >
<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" Visible="true" />
             <asp:BoundField DataField="Case_Type1" HeaderText="Case_Type" Visible="true" />
             <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" Visible="true" />
             <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" Visible="true" />
            <asp:CommandField  ButtonType="Button" ControlStyle-CssClass="button button3" SelectText="Details" ShowSelectButton="True" />
        </Columns>

<HeaderStyle BackColor="DarkGray" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="Gainsboro"></RowStyle>
    </asp:GridView>
    </div>


       </asp:Content>

