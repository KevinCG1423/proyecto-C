using System;
using System.Web.UI;

namespace Test
{
    public partial class Pagina3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = txtNombre.Value;
                string apellido = txtApellido.Value;
                string celular = txtCelular.Value;
                string email = txtEmail.Value;
                string descripcion = txtDescripcion.Value;

                // Aquí podríamos agregar lógica adicional, como enviar un correo electrónico o guardar los datos en una base de datos

                // Transferir a la página de inicio después de enviar el formulario
                Server.Transfer("Index.aspx");
            }
            catch (Exception ex)
            {
                // Mostrar un mensaje de error en la página
                lblError.Text = "Error al enviar el formulario: " + ex.Message;
            }
        }
    }
}

