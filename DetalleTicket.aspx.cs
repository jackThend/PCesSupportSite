using System;
using PCesSupport.Business;

namespace PCesSupportSite
{
    public partial class DetalleTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener el ID del ticket desde la URL
                string ticketId = Request.QueryString["id"];
                if (string.IsNullOrEmpty(ticketId))
                {
                    lblError.Text = "No se encontró el ID del ticket.";
                    lblError.Visible = true;
                    return;
                }

                // Cargar los detalles del ticket
                CargarDetallesTicket(ticketId);
            }
        }

        private void CargarDetallesTicket(string ticketId)
        {
            // Obtener el ticket desde el controlador
            Ticket ticket = TicketController.Read(ticketId);

            if (ticket == null)
            {
                lblError.Text = "No se encontró el ticket con el ID proporcionado.";
                lblError.Visible = true;
                return;
            }

            // Mostrar los detalles del ticket en los controles
            lblNombreValue.Text = ticket.Cliente.Nombre;
            lblRutValue.Text = ticket.Cliente.Rut;
            lblTelefonoValue.Text = ticket.Cliente.Telefono;
            lblEmailValue.Text = ticket.Cliente.Email;
            lblProductoValue.Text = ticket.Producto;
            lblDescripcionValue.Text = ticket.Descripción;
            lblEstadoValue.Text = ticket.Estado;
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            // Redirigir a la página de actualización con el ID del ticket
            string ticketId = Request.QueryString["id"];
            Response.Redirect($"ActualizarTicket.aspx?id={ticketId}");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            // Obtener el ID del ticket desde la URL
            string ticketId = Request.QueryString["id"];
            if (string.IsNullOrEmpty(ticketId))
            {
                lblError.Text = "No se encontró el ID del ticket.";
                lblError.Visible = true;
                return;
            }

            // Eliminar el ticket utilizando el controlador
            string resultado = TicketController.Delete(ticketId);

            // Redirigir al listado de tickets con un mensaje de resultado
            Response.Redirect($"ListarTickets.aspx?message={resultado}");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirigir de vuelta al listado de tickets
            Response.Redirect("ListarTickets.aspx");
        }
    }
}
