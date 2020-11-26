<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication13.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .Initial {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: #051e80;
            color: white;
            font-weight: bold;
        }

            .Initial:hover {
                color: red;
                background: url("../Images/SelectedButton.png") no-repeat right top;
            }

        .Clicked {
            float: left;
            display: block;
            background: url("../Images/SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: red;
            font-weight: bold;
            color: darkgrey;
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

        .text {
            color: #6d6d6d;
        }

        .groove {
            border-style: solid;
            padding-top: 20px;
            padding-left: 50px;
            padding-right: 0px;
            border-color: #d9d9d9;
            width: 100%
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

        .button2 {
            border-radius: 4px;
            background-color: #c93b2b;
        }

            .button2:hover {
                background-color: #a43526;
                color: white;
            }

        .button3 {
            border-radius: 4px;
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
    <body>

        <table width="80%" align="center">
            <tr>
                <td>
                    <asp:Button Text="Case Details" BorderStyle="solid" ID="Tab1" CssClass="Initial" runat="server"
                        OnClick="Tab1_Click" />
                    <asp:Button Text="Reallocate" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                        OnClick="Tab2_Click" />
                    <asp:Button Text="Request Information" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                        OnClick="Tab3_Click" />
                    <asp:Button Text="Interview Request" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                        OnClick="Tab4_Click" />
                    <asp:Button Text="Interview " BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"
                        OnClick="Tab5_Click" />
                    <asp:Button Text="Termination Request" BorderStyle="None" ID="Tab6" CssClass="Initial" runat="server"
                        OnClick="Tab6_Click" />
                    <asp:MultiView ID="MainView" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            <span>
                                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Case_Type" DataValueField="C_Case_Type_ID"></asp:DropDownList>
                                                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="CaseTypes"></asp:EntityDataSource>
                                                <br />
                                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EntityDataSource4" DataTextField="Case_Status1" DataValueField="Case_Status_ID">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EntityDataSource5" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID">
                                                </asp:DropDownList>
                                                <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status">
                                                </asp:EntityDataSource>
                                                <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Verdicts">
                                                </asp:EntityDataSource>


                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="Button6" runat="server" class="button button2" OnClick="Button1_Click" Text="Close" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div id="detailsPanel" >
                                                                <br />
                                                                Details of case number: 
            <asp:Label ID="lpCaseID" runat="server" Text=""></asp:Label>
                                                                <asp:DetailsView ID="DetailsView1" runat="server" Height="470px" Width="400px" AutoGenerateRows="False" DataKeyNames="Case_ID" DataSourceID="EntityDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                                    <Fields>
                                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
                                                                        <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
                                                                        <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
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
                                                                        <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" ReadOnly="True" />
                                                                        <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
                                                                        <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" SortExpression="Requester_ID" ReadOnly="True" />
                                                                        <asp:CommandField ShowEditButton="True" />
                                                                    </Fields>
                                                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                                </asp:DetailsView>
                                                                <br />
                                                        </td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="Button7" runat="server" class="button button2" Text="Save Changes" /></td>

                                                    </tr>
                                                </table>
                                                <asp:EntityDataSource ID="EntityDataSource6" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Handlers"></asp:EntityDataSource>

                                                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" EntityTypeFilter="" Where="it.Case_ID=@idparam">
                                                    <WhereParameters>
                                                        <asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                                                    </WhereParameters>
                                                </asp:EntityDataSource>

                                                </div>
       <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status"></asp:EntityDataSource>

                                            </span>
                                            <h3></h3>
                                            <h3></h3>
                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                          
                                         
                                                <h3 style="color: #051e80">Investigation Interview </h3>
                                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="EntityDataSource6" DataTextField="Case_Handler_Type" DataValueField="CH_Employee_ID">
                                                </asp:RadioButtonList>
                                            
                                            <h3></h3>
                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                      
                                                <h3 style="color: #051e80">Evidnece Request  </h3>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label9" runat="server" Text="Case Handler ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="chtxt" runat="server" CssClass="input"></asp:TextBox>
                                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="chtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label10" runat="server" Text="To Whom "></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="emptxt" runat="server" class="input"></asp:TextBox>
                                                            <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="emptxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>
                                                            <asp:DropDownList ID="casedropdownlist" runat="server" DataSourceID="EntityDataSource7" DataTextField="Case_ID" DataValueField="Case_ID">
                                                            </asp:DropDownList>
                                                            <asp:EntityDataSource ID="EntityDataSource7" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" Select="it.[Case_ID]">
                                                            </asp:EntityDataSource>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label11" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="casetxt" runat="server" class="input"></asp:TextBox>

                                                            <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="casetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            
                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label12" runat="server" class="text" Text="Evidence Information"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="evidtxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
                                                            <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="evidtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label13" runat="server" class="text" Text="Evidence Request Date"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="datetxt" runat="server" class="input" TextMode="date"></asp:TextBox>
                                                            <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="datetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>
                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="evidsubmitbtn" runat="server" Text="Submit" CssClass="button button2" OnClick="evidsubmitbtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="button button3" />

                                                        </td>

                                                    </tr>
                                                </table>
                                        

                                            <h3></h3>

                                            <h3></h3>

                                            <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>

                                            
                                                <h3 style="color: #051e80">Interview Invitation Request</h3>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label2" runat="server" Text="Case Handler ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iichtxt" runat="server" CssClass="input"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="iichtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label1" runat="server" Text="To Whom "></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="iiemptxt" runat="server" class="input" OnTextChanged="iiemptxt_TextChanged"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="iiemptxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label3" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="iicasetxt" runat="server" class="input"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label4" runat="server" class="text" Text="Interview Date"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iidatetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="iidatetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label5" runat="server" Text="Interview Time"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="iiTimetxt" runat="server" CssClass="input" TextMode="Time"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="iiTimetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label6" class="text" runat="server" Text="Interview Location"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iilocationtxt" runat="server" class="" CssClass="input"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="iilocationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label7" runat="server" CssClass="text" Text="Date Sent"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iidatesenttxt" runat="server" class="input" TextMode="Date"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="iidatesenttxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label8" runat="server" CssClass="text" Text="Details"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="iiDetailstxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="iiDetailstxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="iisendbtn" runat="server" Text="Send" CssClass="button button2" OnClick="iisendbtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="iiclosebtn" runat="server" Text="Cancel" CssClass="button button3" /></td>

                                                    </tr>

                                                </table>
                                          

                                            <h3></h3>
                                            <h3></h3>
                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            
                                                <h3 style="color: #051e80">Investigation Interview </h3>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label18" runat="server" Text="Interviewer ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Interviewertxt" runat="server" CssClass="input"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Interviewertxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label19" runat="server" Text="Interviewee ID "></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="intervieweetxt" runat="server" class="input"></asp:TextBox>
<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="intervieweetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label20" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="icasetxt" runat="server" class="input"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="icasetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label21" runat="server" Text="Interview Location"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="ilocationtxt" runat="server" class="input"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ilocationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label22" runat="server" Text="Interview Date"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="idatetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="idatetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label23" runat="server" Text="Interview Time"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="itimetxt" runat="server" TextMode="Time" class="input"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="itimetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label24" runat="server" Text="Interview Memo"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="imemotxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="imemotxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label25" runat="server" class="text" Text="Interview Questions "></asp:Label>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" CssClass="button button2" Text="Details" OnClick="Button8_Click" />
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="isavebtn" runat="server" Text="Save" CssClass="button button2" OnClick="isavebtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="iclosebtn" runat="server" Text="Cancel" CssClass="button button3" />

                                                        </td>

                                                    </tr>
                                                </table>
                                           
                                            <h3></h3>

                                            <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View6" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                         
                                                <h3 style="color: #051e80">Termination Request  </h3>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label14" runat="server" Text="Employee ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="trEmptxt" runat="server" CssClass="input"></asp:TextBox>
<%--                                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="trEmptxt" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label15" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="trCasetxt" runat="server" class="input"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="trCasetxt" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label16" runat="server" Text=" Date"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="trDatetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="trDatetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label17" runat="server" Text="Termination Justification"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="Justificationtxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>

<%--                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Justificationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="trsavebtn" runat="server" Text="Save" CssClass="button button2" OnClick="trsavebtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" Text="Cancel" CssClass="button button3" on_click=" trclosebtn_Click" />

                                                        </td>

                                                    </tr>

                                                    <caption>
                                                        <h3></h3>
                                                        <h3></h3>
                                                    </caption>
                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>

    </body>
</asp:Content>
