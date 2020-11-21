﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="EmpCaseRequest.aspx.cs" Inherits="WebApplication13.EmpCaseRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
       <style>
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
  width: 15%;
  
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
    .auto-style1 {
        width: 614px;
    }
    .auto-style2 {
        width: 360px;
    }
        .auto-style3 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 16px 20px;
            border-radius: 4px;
            background-color: #f1f1f1;
        }
    </style>
   
    <div class="groove">
           <h3 style=" color: #051e80 ">Investigation Case Request </h3>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label class="text" ID="Label2" runat="server" Text="Requester ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="requestertxt" runat="server" CssClass="input"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label1" runat="server" Text="Complain On"></asp:Label></td>
                <td>
                    <asp:TextBox ID="accusedtxt" runat="server" class="input"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label3" runat="server" Text="Case Type"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" DataSourceID="EntityDataSource1" DataTextField="Case_Type" DataValueField="C_Case_Type_ID" Width="346px">
                    </asp:DropDownList>
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="CaseTypes">
                    </asp:EntityDataSource>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    <asp:Label ID="Label4" runat="server" class="text" Text="Case Details"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="casedetailstxt" runat="server" class="input" TextMode="Time"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">  <asp:Label class="text" ID="Label5" runat="server" Text="Evidnce"></asp:Label></td>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="button button2" Text="Evidence" OnClick="Button3_Click" />
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">  
                    <asp:Label ID="Label6" class="text" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="datetxt" runat="server" class="" TextMode="Date" CssClass="input"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td >  
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="button button2" OnClick="Button1_Click1" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="button button3" /></td>
                
            </tr>
        </table>
    </div>
    
</asp:Content>