using System;
using System.Web.UI.WebControls;
using PCesSupport.Business;

namespace PCesSupportSite
{
    public partial class ListarTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Mostrar mensaje de la operación anterior (si existe)
                string message = Request.QueryString["message"];
                if (!string.IsNullOrEmpty(message))
                {
                    lblMessage.Text = message;
                    lblMessage.Visible = true;
                }

                // Cargar el listado de tickets
                CargarTickets();
            }
        }

        private void CargarTickets()
        {
            var tickets = TicketController.ReadAll();

            if (tickets.Count > 0)
            {
                gvTickets.DataSource = tickets;
                gvTickets.DataBind();
            }
            else
            {
                lblNoRecords.Visible = true;
                gvTickets.Visible = false;
            }
        }

        protected void gvTickets_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VerDetalle")
            {
                // Obtener el ID del ticket seleccionado
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                string ticketId = gvTickets.DataKeys[rowIndex].Value.ToString();

                // Redirigir a la página de detalle del ticket
                Response.Redirect($"DetalleTicket.aspx?id={ticketId}");
            }
        }
    }
}
