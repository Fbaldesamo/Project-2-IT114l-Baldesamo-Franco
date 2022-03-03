<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Project_2_IT114l_Baldesamo_Franco.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="ADD SEMINAR"></asp:Label>
            <br />
            <br />
            <br />
            Seminar Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            Seminar Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            Date of Seminar&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            Time of Seminar&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            Seminar Venue&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            Seminar Speaker&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="SAVE" Width="129px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
        <div>



            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1216px">
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



        </div>
        <div>




            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="1213px">
                <Columns>
                    <asp:BoundField DataField="Sem_code" HeaderText="Sem_code" SortExpression="Sem_code" />
                    <asp:BoundField DataField="En_num" HeaderText="En_num" SortExpression="En_num" />
                    <asp:BoundField DataField="En_name" HeaderText="En_name" SortExpression="En_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Enrol]"></asp:SqlDataSource>




        </div>
    </form>
</body>
</html>
