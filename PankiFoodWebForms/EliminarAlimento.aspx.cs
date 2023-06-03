using System;
using System.Web;
using System.Web.UI;

namespace PankiFoodWebForms
{

    public partial class EliminarAlimento : System.Web.UI.Page
    {
        AlimentoService.AlimentoService conexion = new AlimentoService.AlimentoService();

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            // Obtener el ID del alimento ingresado
            int idAlimento = int.Parse(txtId.Text);

            // Lógica para eliminar el alimento con el ID especificado
            // Aquí debes agregar tu código para eliminar el alimento según tu implementación
            conexion.Eliminar_Alimento(idAlimento);
            // Mostrar un mensaje de éxito
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Alimento eliminado');", true);

            // Limpiar el campo de ID
            txtId.Text = "";
        }
    }
}
