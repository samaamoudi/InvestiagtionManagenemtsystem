<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InterviewInvitationRequest.aspx.cs" Inherits="WebApplication13.InterviewInvitationRequest" %>
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
           <h3 style=" color: #051e80 ">Interview Invitation Request</h3>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label class="text" ID="Label2" runat="server" Text="Case Handler ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="chtxt" runat="server" CssClass="input"></asp:TextBox>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label1" runat="server" Text="To Whom "></asp:Label></td>
                <td>
                    <asp:TextBox ID="emptxt" runat="server" class="input"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label3" runat="server" Text="Case ID"></asp:Label></td>
                <td>
                    <asp:TextBox ID="casetxt" runat="server" class="input"></asp:TextBox>
            
                </td>
                  
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    <asp:Label ID="Label4" runat="server" class="text" Text="Interview Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="datetxt" runat="server" class="input" TextMode="Date" ></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">  <asp:Label class="text" ID="Label5" runat="server" Text="Interview Time"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Timetxt" runat="server" CssClass="input" TextMode="Time"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">  
                    <asp:Label ID="Label6" class="text" runat="server" Text="Interview Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="locationtxt" runat="server" class=""  CssClass="input" ></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2">  
                    <asp:Label ID="Label7" runat="server" CssClass="text" Text="Date Sent"></asp:Label>
                </td>
                <td><asp:TextBox ID="datesenttxt" runat="server" class="input" TextMode="Date" ></asp:TextBox></td>
              
            </tr>
           
             <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>

               <tr>
                <td class="auto-style2">  
                     <asp:Label ID="Label8" runat="server" CssClass="text" Text="Details"></asp:Label></td>
                <td><asp:TextBox ID="Detailstxt" runat="server" class="input" TextMode="MultiLine" ></asp:TextBox></td>
              
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td >  
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Send"  CssClass="button button2" OnClick="Button2_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cancel" CssClass="button button3" /></td>
                
            </tr>

        </table>
    </div>


</asp:Content>
