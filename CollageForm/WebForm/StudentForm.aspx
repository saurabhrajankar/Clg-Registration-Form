<%@ Page Title="" Language="C#" MasterPageFile="~/CollageForm.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="CollageForm.WebForm.StudentForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <Center>


    </Center>

    <asp:Label ID="Label7" runat="server" Text="Student Registration Form" Font-Bold="True" Font-Size="XX-Large" Font-Italic="False" Font-Underline="True"></asp:Label><br />
    <br />

    <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
    <asp:TextBox ID="lblfirstname" runat="server" placeholder="Firstname" Height="30px" Width="300px"></asp:TextBox>&emsp;&emsp;&emsp;
    <asp:TextBox ID="lbllastname" runat="server" placeholder="LastName" Height="30px" Width="300px"></asp:TextBox><br />
    <br />

    <asp:Label ID="Label3" runat="server" Text="Gender" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
    <asp:DropDownList ID="ddlgender" runat="server" Height="30px" Width="300px">
        <asp:ListItem Text="Select" Value=""></asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Other</asp:ListItem>
    </asp:DropDownList><br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Date Of Birth" Font-Bold="True" Font-Size="Larger" ></asp:Label><br />
    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="300px"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/download.jpeg" ImageAlign="AbsMiddle" OnClick="ImageButton1_Click" Height="20px" Width="20px" />
    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <br /><br />

    <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
    <asp:TextBox ID="lbladdress" runat="server" placeholder="Enter you Address" Height="30px" Width="400px"></asp:TextBox><br />
    <br />

    <asp:Label ID="Label6" runat="server" Text="Email" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
    <asp:TextBox ID="lblemail" runat="server" placeholder="Enter your Email" Height="30px" Width="400px"></asp:TextBox><br />
    <br />

    <asp:Label ID="Label5" runat="server" Text="Mobile Number" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
    <asp:TextBox ID="lblmobile" runat="server" placeholder="Enter Number" Height="30px" Width="300px"></asp:TextBox><br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Course" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
    <asp:DropDownList ID="dllcourses" runat="server" Height="35px" Width="200px" AutoPostBack="true" OnSelectedIndexChanged="dllcourses_SelectedIndexChanged1">
        <asp:ListItem Text="Select" Value=""></asp:ListItem>
        <asp:ListItem Value="Rs 20,000">BE</asp:ListItem>
        <asp:ListItem Value="Rs 10,000">MCA</asp:ListItem>
        <asp:ListItem  Value="Rs 30,000">MBBS</asp:ListItem>
    </asp:DropDownList>&emsp;&emsp;&emsp;

    <asp:TextBox ID="Fees" runat="server" placeholder="Course Fees"></asp:TextBox>
    <br /><br /><br />

    <asp:Button ID="Button1" runat="server" Text="Cancel" Height="50px" Width="150px" Font-Bold="True" BorderWidth="3px" />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
    <asp:Button ID="btsubmit" runat="server" Text="Submit" Height="50px" Width="150px" Font-Bold="True" BorderWidth="3px" OnClick="btsubmit_Click" />&emsp;&emsp;
    <asp:Button ID="btreset" runat="server" Text="Reset" Height="50px" Width="150px" Font-Bold="True" BorderWidth="3px" OnClick="btreset_Click" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeformConnectionString %>" SelectCommand="SELECT * FROM [studentform]"></asp:SqlDataSource>
</asp:Content>
