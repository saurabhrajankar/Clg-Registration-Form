<%@ Page Title="" Language="C#" MasterPageFile="~/CollageForm.Master" AutoEventWireup="true" CodeBehind="Action.aspx.cs" Inherits="CollageForm.WebForm.Practice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <Center>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="BIll_id" AllowPaging="True" BorderColor="Red" HorizontalAlign="Center"
            Height="200px" Width="800px" BackColor="White" BorderStyle="Double" BorderWidth="2px">
        <Columns>
            <asp:BoundField DataField="BIll_id" HeaderText="BIll_id" ReadOnly="True" SortExpression="BIll_id"></asp:BoundField>
            <asp:BoundField DataField="Bill_date" HeaderText="Bill_date" ReadOnly="True" SortExpression="Bill_date"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="Gender" ReadOnly="True" SortExpression="Gender"></asp:BoundField>
            <asp:BoundField DataField="Date" HeaderText="Date Of Birth" ReadOnly="True"  SortExpression="Date"></asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No"></asp:BoundField>
            <asp:BoundField DataField="Course" HeaderText="Course" ReadOnly="True" SortExpression="Course"></asp:BoundField>
            <asp:BoundField DataField="Course_fee" HeaderText="Course_fee" ReadOnly="True" SortExpression="Course_fee"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
            </Columns>

<FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

<PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

<RowStyle ForeColor="#000066"></RowStyle>

<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
        </Center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeformConnectionString %>" 
        DeleteCommand="DELETE FROM [studentform] WHERE [BIll_id] = @BIll_id" InsertCommand="INSERT INTO [studentform] ([Bill_date], [Name], [Gender], [Date], [Address], [Email], [Mobile_No], [Course], [Course_fee]) VALUES (@Bill_date, @Name, @Gender, @Date, @Address, @Email, @Mobile_No, @Course, @Course_fee)" 
        SelectCommand="SELECT * FROM [studentform]" UpdateCommand="UPDATE [studentform] SET  [Name] = @Name, [Address] = @Address, [Email] = @Email, [Mobile_No] = @Mobile_No WHERE [BIll_id] = @BIll_id">
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
            <%--<asp:Parameter Name="Bill_date" Type="String"></asp:Parameter>--%>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <%--<asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Date" Type="String"></asp:Parameter>--%>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Mobile_No" Type="String"></asp:Parameter>
            <%--<asp:Parameter Name="Course" Type="String"></asp:Parameter>
            <asp:Parameter Name="Course_fee" Type="String"></asp:Parameter>
            <asp:Parameter Name="BIll_id" Type="Int32"></asp:Parameter>--%>
        </UpdateParameters>
  
    </asp:SqlDataSource>
     <a href="DetailsRecipt.aspx" target="_blank">click on back the recipt page</a>
</asp:Content>
