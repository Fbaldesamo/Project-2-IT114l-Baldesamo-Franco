<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Seminar.aspx.cs" Inherits="Project_2_IT114l_Baldesamo_Franco.Seminar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="ENROLL NOW!"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Sem_Code" HeaderText="Sem_Code" SortExpression="Sem_Code" />
                    <asp:BoundField DataField="Sem_Title" HeaderText="Sem_Title" SortExpression="Sem_Title" />
                    <asp:BoundField DataField="SemDB" HeaderText="SemDB" SortExpression="SemDB" />
                    <asp:BoundField DataField="SemTim" HeaderText="SemTim" SortExpression="SemTim" />
                    <asp:BoundField DataField="SemVenue" HeaderText="SemVenue" SortExpression="SemVenue" />
                    <asp:BoundField DataField="SemSpeaker" HeaderText="SemSpeaker" SortExpression="SemSpeaker" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Details]"></asp:SqlDataSource>
            <br />
            SEMINAR CODE&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            ENROLL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="58px" OnClick="Button1_Click" Text="ENROLL" Width="194px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" style="font-size: x-large" Text="DATA SENT"></asp:Label>
        </div>
    </form>
</body>
</html>
