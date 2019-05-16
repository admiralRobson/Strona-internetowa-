<<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DodajDoSQL.aspx.cs" Inherits="SQL_insert_DodajDoSQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Dodaj kolejnego sluzbe do bazy SQL<br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nazwa sluzby: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nazwa_sluzby" DataValueField="Nazwa_sluzby">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nazwa_sluzby] AS Nazwa_sluzby FROM [Agencje]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Rok zalozenia: "></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2001-09-11"></asp:Calendar>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Przybliżona liczba agentów: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Nie wprowadzono roku założenia służby!" ForeColor="Red">Wprowadź liczbę agentów</asp:RequiredFieldValidator>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#66FF33" Font-Bold="True" ForeColor="Red" />

    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj agencje" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Agencje] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Agencje] ([Nazwa_sluzby], [Rok_zalozenia], [Przybliżona_liczba_agentow]) VALUES (@Nazwa_sluzby, @Rok_zalozenia, @Przybliżona_liczba_agentow)" SelectCommand="SELECT * FROM [Agencje]" UpdateCommand="UPDATE [Agencje] SET [Nazwa_sluzby] = @Nazwa_sluzby, [Rok_zalozenia] = @Rok_zalozenia, [Przybliżona_liczba_agentow] = @Przybliżona_liczba_agentow [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Nazwa_sluzby" Type="String" />
                <asp:Parameter DbType="Date" Name="Rok_zalozenia" />
                <asp:Parameter Name="Przybliżona_liczba_agentow" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Nazwa_sluzby" Type="String" />
                <asp:Parameter DbType="Date" Name="Rok_zalozenia" />
                <asp:Parameter Name="Przybliżona_liczba_agentow" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Nazwa_sluzby" Type="String" />
                <asp:Parameter DbType="Date" Name="Rok_zalozenia" />
                <asp:Parameter Name="Przybliżona_liczba_agentow" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nazwa_sluzby" HeaderText="Nazwa sluzby" SortExpression="Nazwa sluzby" />
                <asp:BoundField DataField="Rok_zalozenia" HeaderText="Rok zalozenia" SortExpression="Rok zalozenia" />
                <asp:BoundField DataField="Przybliżona_liczba_agentow" HeaderText="Przybliżona liczba agentow" SortExpression="Przybliżona liczba agentow" />
            </Columns>
        </asp:GridView>
        

    </p>
</asp:Content>