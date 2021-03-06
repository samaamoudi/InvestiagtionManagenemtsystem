﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TerminationRequest.aspx.cs" Inherits="WebApplication13.TerminationRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

 
     
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
    .auto-style2 {
        width: 360px;
    }
        </style>

    <div class="groove">
         <h3 style=" color: #051e80 ">Termination Request  </h3>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label class="text" ID="Label2" runat="server" Text="Employee ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Emptxt" runat="server" CssClass="input"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Emptxt" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label3" runat="server" Text="Case ID"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Casetxt" runat="server" class="input"></asp:TextBox>
            
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="Casetxt" ForeColor="Red"></asp:RequiredFieldValidator>
            
                </td>
                  
                  <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>
                    &nbsp;</td>
                  
                  <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label6" runat="server" Text=" Date"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Datetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>
            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Datetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
                </td>
                  
                  <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>
                    &nbsp;</td>
                  
                  <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label8" runat="server" Text="Termination Justification"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Justificationtxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Justificationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
                </td>
                  
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <asp:Button ID="Button2" runat="server" Text="Save"  CssClass="button button2" OnClick="Button2_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cancel" CssClass="button button3" OnClick="Button3_Click"  />

                </td>
                
            </tr>
        </table>
        </div>
</asp:Content>
