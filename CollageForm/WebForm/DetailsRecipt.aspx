<%@ Page Title="" Language="C#" MasterPageFile="~/CollageForm.Master" AutoEventWireup="true" CodeBehind="DetailsRecipt.aspx.cs" Inherits="CollageForm.WebForm.DetailsRecipt" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>Registration Recipt
        </h2>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="915px" AutoGenerateRows="False" DataKeyNames="Bill_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True">
            <EditRowStyle BackColor="#ff66ff" Font-Bold="True" ForeColor="#CCFF99" />
            <Fields>
                <asp:BoundField DataField="BIll_id" HeaderText="BIll id" ReadOnly="True" InsertVisible="False" SortExpression="BIll_id"></asp:BoundField>
                <asp:BoundField DataField="Bill_date" HeaderText="Bill Date" ReadOnly="True" SortExpression="Bill_date"></asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="Gender" ReadOnly="True" SortExpression="Gender"></asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date Of Birth" ReadOnly="True" SortExpression="Date"></asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile No." SortExpression="Mobile_No"></asp:BoundField>
                <asp:BoundField DataField="Course" HeaderText="Course" ReadOnly="True" SortExpression="Course"></asp:BoundField>
                <asp:BoundField DataField="Course_fee" HeaderText="Course Fee" ReadOnly="True" SortExpression="Course_fee"></asp:BoundField>

            </Fields>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeformConnectionString %>" DeleteCommand="DELETE FROM [studentform] WHERE [BIll_id] = @BIll_id"
        InsertCommand="INSERT INTO [studentform] ([Bill_date], [Name], [Gender], [Date], [Address], [Email], [Mobile_No], [Course], [Course_fee]) VALUES (@Bill_date, @Name, @Gender, @Date, @Address, @Email, @Mobile_No, @Course, @Course_fee)" SelectCommand="SELECT * FROM [studentform]"
        UpdateCommand="UPDATE [studentform] SET [Name] = @Name,  [Address] = @Address, [Email] = @Email, [Mobile_No] = @Mobile_No  WHERE [BIll_id] = @BIll_id">
        <DeleteParameters>
            <asp:Parameter Name="BIll_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Bill_date" Type="String"></asp:Parameter>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Date" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Mobile_No" Type="String"></asp:Parameter>
            <asp:Parameter Name="Course" Type="String"></asp:Parameter>
            <asp:Parameter Name="Course_fee" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <%-- <asp:Parameter Name="Bill_date" Type="String"></asp:Parameter>--%>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <%--  <asp:Parameter Name="Gender" Type="String"></asp:Parameter>--%>
            <%-- <asp:Parameter Name="Date" Type="String"></asp:Parameter>--%>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Mobile_No" Type="String"></asp:Parameter>
            <%-- <asp:Parameter Name="Course" Type="String"></asp:Parameter>
            <asp:Parameter Name="Course_fee" Type="String"></asp:Parameter>
            <asp:Parameter Name="BIll_id" Type="Int32"></asp:Parameter>--%>
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:DropDownList ID="dllselect" runat="server" Height="35px" Width="200px" OnSelectedIndexChanged="Button3_Click">
        <asp:ListItem> Select</asp:ListItem>
        <asp:ListItem>PDF</asp:ListItem>
        <asp:ListItem>EXCEL</asp:ListItem>
    </asp:DropDownList><br />
    <asp:Button ID="Button3" runat="server" Text="Click" OnClick="Button3_Click" /><br />
    <br />

    <a href="Action.aspx" target="_blank">If u want to edit Click this link</a>

</asp:Content>
