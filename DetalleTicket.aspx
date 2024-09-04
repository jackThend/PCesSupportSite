<%@ Page Title="Detalle del Ticket" Language="C#" MasterPageFile="~/MPSitio.master" AutoEventWireup="true" CodeBehind="DetalleTicket.aspx.cs" Inherits="PCesSupportSite.DetalleTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Detalle del Ticket</h2>
    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    <table>
        <tr>
            <td><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></td>
            <td><asp:Label ID="lblNombreValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRut" runat="server" Text="RUT:"></asp:Label></td>
            <td><asp:Label ID="lblRutValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label></td>
            <td><asp:Label ID="lblTelefonoValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
            <td><asp:Label ID="lblEmailValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label></td>
            <td><asp:Label ID="lblProductoValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label></td>
            <td><asp:Label ID="lblDescripcionValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label></td>
            <td><asp:Label ID="lblEstadoValue" runat="server"></asp:Label></td>
        </tr>
    </table>

    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
    <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
</asp:Content>
