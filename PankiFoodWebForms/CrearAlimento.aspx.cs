using System;
using System.Web.UI;

namespace PankiFoodWebForms
{

    public partial class Default : System.Web.UI.Page
    {


        AlimentoService.AlimentoService conexion = new AlimentoService.AlimentoService();



        public void button1Clicked(object sender, EventArgs args)
        {
            string nombre = txtNombre.Text;
            string descripcion = txtDescripcion.Text;
            float precio = float.Parse(txtPrecio.Text);

            conexion.Insertar_Alimento(nombre, descripcion, precio);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Alimento creado');", true);


            txtNombre.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            txtPrecio.Text = string.Empty;
        }
    }
}
