using System;
using PCesSupport.Business;  // Asegúrate de que la referencia esté correcta

namespace PCesSupportSite
{
    public partial class CrearTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Puede haber lógica de carga aquí si es necesario
        }

        protected void ddlTipoCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Muestra el campo de Razón Social solo si el cliente es una Empresa
            rowRazonSocial.Visible = ddlTipoCliente.SelectedValue == "Empresa";
        }

        protected void btnCrearTicket_Click(object sender, EventArgs e)
        {
            // Crear el objeto Cliente según el tipo seleccionado
            Cliente cliente;
            if (ddlTipoCliente.SelectedValue == "Empresa")
            {
                cliente = new Empresa
                {
                    Id = Guid.NewGuid().ToString(),
                    Nombre = txtNombre.Text,
                    Rut = txtRut.Text,
                    Telefono = txtTelefono.Text,
                    Email = txtEmail.Text,
                    RazonSocial = txtRazonSocial.Text
                };
            }
            else
            {
                cliente = new PersonaNatural
                {
                    Id = Guid.NewGuid().ToString(),
                    Nombre = txtNombre.Text,
                    Rut = txtRut.Text,
                    Telefono = txtTelefono.Text,
                    Email = txtEmail.Text
                };
            }

            // Crear el objeto Ticket
            Ticket ticket = new Ticket
            {
                Id = Guid.NewGuid().ToString(),
                Cliente = cliente,
                Producto = txtProducto.Text,
                Descripción = txtDescripcion.Text,
                Estado = "Nuevo"  // Estado inicial del ticket
            };

            // Llamar al controlador para crear el ticket
            string resultado = TicketController.Create(ticket);

            // Redirigir al listado de tickets con un mensaje de éxito o fracaso
            Response.Redirect("ListarTickets.aspx?message=" + resultado);
        }
    }
}
