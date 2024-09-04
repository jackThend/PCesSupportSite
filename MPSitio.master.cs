using System;
using System.Web;

namespace PCesSupportSite
{
    public partial class MPSitio : System.Web.UI.MasterPage
    {
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string query = txtBusquedaAvanzada.Text;
            if (!string.IsNullOrEmpty(query))
            {
                // Redirigir a la página de listado de tickets con el filtro aplicado
                Response.Redirect("ListarTickets.aspx?search=" + query);
            }
        }
    }
}
