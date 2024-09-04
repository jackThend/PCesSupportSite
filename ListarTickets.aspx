<%@ Page Title="Listado de Tickets" Language="C#" MasterPageFile="~/MPSitio.master" AutoEventWireup="true" CodeBehind="ListarTickets.aspx.cs" Inherits="PCesSupportSite.ListarTickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Listado de Tickets</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="false"></asp:Label>

    <asp:GridView ID="gvTickets" runat="server" AutoGenerateColumns="False" OnRowCommand="gvTickets_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" Visible="False" />
            <asp:BoundField DataField="Producto" HeaderText="Producto" />
            <asp:BoundField DataField="Descripción" HeaderText="Descripción" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
            <asp:ButtonField CommandName="VerDetalle" Text="Ver Detalle" ButtonType="Button" />
        </Columns>
    </asp:GridView>

    <asp:Label ID="lblNoRecords" runat="server" Text="No existen registros disponibles para mostrar." Visible="false"></asp:Label>
</asp:Content>
