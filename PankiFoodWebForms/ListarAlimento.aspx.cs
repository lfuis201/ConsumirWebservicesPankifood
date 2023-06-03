using System;
using System.Collections.Generic;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using Newtonsoft.Json;
using System.Data;

namespace PankiFoodWebForms
{

    public partial class ListarAlimento : System.Web.UI.Page
    {
        AlimentoService.AlimentoService conexion = new AlimentoService.AlimentoService();

        protected string GenerarTablaAlimentos()
        {
            string tablaHtml = string.Empty;

            // Obtener los datos del listado alimento y deserializar el JSON
            string jsonDatos = conexion.Listado_Alimento();
            DataSet ds = JsonConvert.DeserializeObject<DataSet>(jsonDatos);
            DataTable dt = ds.Tables[0];

            // Generar las filas de la tabla con los datos de cada alimento
            foreach (DataRow row in dt.Rows)
            {
                string id = row["ID"].ToString();
                string nombre = row["NOMBRE"].ToString();
                string descripcion = row["DESCRIPCION"].ToString();
                string precio = row["PRECIO"].ToString();

                tablaHtml += "<tr>";
                tablaHtml += $"<td>{id}</td>";
                tablaHtml += $"<td>{nombre}</td>";
                tablaHtml += $"<td>{descripcion}</td>";
                tablaHtml += $"<td>{precio}</td>";
                tablaHtml += "</tr>";
            }

            return tablaHtml;
        }
    }
}
