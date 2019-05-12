<<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DodajDoSQL.aspx.cs" Inherits="SQL_insert_DodajDoSQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Dodaj kolejnego psa do bazy SQL<br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Rasa psa: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nazwa_Rasy" DataValueField="Nazwa_Rasy">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nazwa Rasy] AS Nazwa_Rasy FROM [Tabela_Ras_Psow]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Imię psa: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Nie wprowadzono imienia psa!" ForeColor="Red">Wprowadź imię</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Wzrost psa: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Waga psa: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Wprowadzono zbyt dużą wagę (musi być &lt;20)" Operator="LessThanEqual" Type="Double">Waga musi być &lt;20</asp:CompareValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Waga poza zakresem" MaximumValue="15" MinimumValue="0,11" Type="Double">Zakres od 0,11 do 15</asp:RangeValidator>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Wartość do porównania "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server">20</asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Data urodzenia psa: "></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2018-05-30"></asp:Calendar>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#66FF33" Font-Bold="True" ForeColor="Red" />

    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj psa" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tabela_Naszych_Psow] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Tabela_Naszych_Psow] ([Imię Psa], [Wzrost - cm], [Waga - kg], [Data urodzenia], [Rasa]) VALUES (@Imię_Psa, @column1, @column2, @Data_urodzenia, @Rasa)" SelectCommand="SELECT * FROM [Tabela_Naszych_Psow]" UpdateCommand="UPDATE [Tabela_Naszych_Psow] SET [Imię Psa] = @Imię_Psa, [Wzrost - cm] = @column1, [Waga - kg] = @column2, [Data urodzenia] = @Data_urodzenia, [Rasa] = @Rasa WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Imię_Psa" Type="String" />
                <asp:Parameter Name="column1" Type="Decimal" />
                <asp:Parameter Name="column2" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Data_urodzenia" />
                <asp:Parameter Name="Rasa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Imię_Psa" Type="String" />
                <asp:Parameter Name="column1" Type="Decimal" />
                <asp:Parameter Name="column2" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Data_urodzenia" />
                <asp:Parameter Name="Rasa" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Imię Psa" HeaderText="Imię Psa" SortExpression="Imię Psa" />
                <asp:BoundField DataField="Wzrost - cm" HeaderText="Wzrost - cm" SortExpression="Wzrost - cm" />
                <asp:BoundField DataField="Waga - kg" HeaderText="Waga - kg" SortExpression="Waga - kg" />
                <asp:BoundField DataField="Data urodzenia" HeaderText="Data urodzenia" SortExpression="Data urodzenia" />
                <asp:BoundField DataField="Rasa" HeaderText="Rasa" SortExpression="Rasa" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>