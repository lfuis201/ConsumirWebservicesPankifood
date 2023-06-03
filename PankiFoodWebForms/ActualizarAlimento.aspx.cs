using System;
using System.Web;
using System.Web.UI;

namespace PankiFoodWebForms
{

    public partial class ActualizarAlimento : System.Web.UI.Page

    {

        AlimentoService.AlimentoService conexion = new AlimentoService.AlimentoService();

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtId.Text);
            string nombre = txtNombreAct.Text;
            string descripcion = txtDescripcionAct.Text;
            float precio = float.Parse(txtPrecioAct.Text);

            conexion.Actualizar_Alimento(id, nombre, descripcion, precio);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Alimento actualizado');", true);

            LimpiarCamposActualizar();
        }

        private void LimpiarCamposActualizar()
        {
            txtId.Text = string.Empty;
            txtNombreAct.Text = string.Empty;
            txtDescripcionAct.Text = string.Empty;
            txtPrecioAct.Text = string.Empty;
        }
    }
}
