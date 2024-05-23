using System;
using System.Web.UI;

namespace Test
{
    public partial class Pagina2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConcatenarNombres(object sender, EventArgs e)
        {
            // Lógica para concatenar nombres y mostrar el resultado en el Label
            lblResultado.Text = $"{txtNombre.Text} {txtApellido.Text}";
        }

        protected void VolverAtras(object sender, EventArgs e)
        {
            // Redireccionar a la página principal (index)
            Response.Redirect("~/index.aspx");
        }
    }
}
