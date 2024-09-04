using System;
using PCesSupport.Business;

namespace PCesSupportSite
{
    public partial class ActualizarTicket : System.Web.UI.Page
    {
        private string ticketId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener el ID del ticket desde la URL
                ticketId = Request.QueryString["id"];
                if (string.IsNullOrEmpty(ticketId))
                {
                    lblError.Text = "No se encontró el ID del ticket.";
                    lblError.Visible = true;
                    return;
                }

                // Cargar los datos del ticket
                CargarDatosTicket(ticketId);
            }
        }

        private void CargarDatosTicket(string ticketId)
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
            txtTelefono.Text = ticket.Cliente.Telefono;
            txtEmail.Text = ticket.Cliente.Email;
            txtProducto.Text = ticket.Producto;
            txtDescripcion.Text = ticket.Descripción;
            txtEstado.Text = ticket.Estado;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Obtener el ID del ticket desde la URL
            ticketId = Request.QueryString["id"];

            // Crear un nuevo objeto Ticket con los datos actualizados
            Ticket ticket = new Ticket
            {
                Id = ticketId,
                Cliente = new Cliente
                {
                    Nombre = lblNombreValue.Text,
                    Rut = lblRutValue.Text,
                    Telefono = txtTelefono.Text,
                    Email = txtEmail.Text
                },
                Producto = txtProducto.Text,
                Descripción = txtDescripcion.Text,
                Estado = txtEstado.Text
            };

            // Actualizar el ticket utilizando el controlador
            string resultado = TicketController.Update(ticket);

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
