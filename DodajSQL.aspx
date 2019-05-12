<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DodajSQL.aspx.cs" Inherits="SQL_Insert_DodajSQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Dodaj kolejną agencje do bazy <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Kraj agencji: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Kraj" DataValueField="Kraj">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nazwa_sluzby] AS Nazwa_sluzby FROM [Tabela_Ras_Psow]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Nazwa_sluzby: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Nie wprowadzono nazwy agencji!" ForeColor="Red">Wprowadź nazwe</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Przybliżona liczba agentów: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    
    <p>
        <asp:Label ID="Label6" runat="server" Text="Wartość do porównania "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server">20</asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Data zalozenia agencji: "></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2018-05-30"></asp:Calendar>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#66FF33" Font-Bold="True" ForeColor="Red" />

    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj agencje" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table ([Kraj], [Nazwa_sluzby], [Data_zalozenia], [Przyblizona_liczba_agentow]) VALUES (@Kraj, @Nazwa_sluzby, @Data_zalozenia, @Przyblizona_liczba_agentow)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Kraj] = @Kraj, [Nazwa_sluzby] = @Nazwa_sluzby, [Data_zalozenia] = @Data_zalozenia, [Przyblizona_liczba_agentow] = @Przyblizona_liczba_agentow WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Kraj" Type="String" />
                <asp:Parameter Name="Nazwa_sluzby" Type="String" />
                <asp:Parameter Name="Przyblizona_liczba_agentow" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Data_zalozenia" />
                
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Kraj" Type="String" />
                <asp:Parameter Name="Nazwa_sluzby" Type="String" />
                <asp:Parameter Name="Przyblizona_liczba_agentow" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Data_zalozenia" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Kraj" HeaderText="Kraj" SortExpression="Kraj" />
                <asp:BoundField DataField="Nazwa_sluzby" HeaderText="Nazwa_sluzby" SortExpression="Nazwa_sluzby" />
                <asp:BoundField DataField="Data_zalozenia" HeaderText="Data_zalozenia" SortExpression="Data_zalozenia" />
                <asp:BoundField DataField="Przyblizona_liczba_agentow" HeaderText="Przyblizona_liczba_agentow" SortExpression="Przyblizona_liczba_agentow" />
                
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

