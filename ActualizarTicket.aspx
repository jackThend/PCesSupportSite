<%@ Page Title="Actualizar Ticket" Language="C#" MasterPageFile="~/MPSitio.master" AutoEventWireup="true" CodeBehind="ActualizarTicket.aspx.cs" Inherits="PCesSupportSite.ActualizarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Actualizar Ticket</h2>
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
            <td><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
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
            <td><asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label></td>
            <td><asp:TextBox ID="txtEstado" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar Cambios" OnClick="btnGuardar_Click" />
    <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
</asp:Content>
