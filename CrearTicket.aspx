<%@ Page Title="Crear Ticket" Language="C#" MasterPageFile="~/MPSitio.master" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="PCesSupportSite.CrearTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crear Ticket de Soporte</h2>
    <table>
        <tr>
            <td><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></td>
            <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRut" runat="server" Text="RUT:"></asp:Label></td>
            <td><asp:TextBox ID="txtRut" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label></td>
            <td><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTipoCliente" runat="server" Text="Tipo de Cliente:"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlTipoCliente" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoCliente_SelectedIndexChanged">
                    <asp:ListItem Text="Seleccionar" Value="Seleccionar" Enabled="false"></asp:ListItem>
                    <asp:ListItem Text="Persona Natural" Value="PersonaNatural"></asp:ListItem>
                    <asp:ListItem Text="Empresa" Value="Empresa"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr id="rowRazonSocial" runat="server" visible="false">
            <td><asp:Label ID="lblRazonSocial" runat="server" Text="Razón Social:"></asp:Label></td>
            <td><asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label></td>
            <td><asp:TextBox ID="txtProducto" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label></td>
            <td><asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnCrearTicket" runat="server" Text="Crear Ticket" OnClick="btnCrearTicket_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
