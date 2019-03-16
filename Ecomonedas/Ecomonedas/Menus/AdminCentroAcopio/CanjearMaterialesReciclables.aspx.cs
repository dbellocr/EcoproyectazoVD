using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.AdminCentroAcopio
{
    public partial class CanjearMaterialesReciclables : System.Web.UI.Page
    {
        private static Usuario oUsuario;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                

                repeaterMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales()).ToList();
                repeaterMateriales.DataBind();


            }

        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            RepeaterItem rItem = (RepeaterItem)((Control)sender).NamingContainer;
            TextBox txtCantidad = (TextBox)rItem.FindControl("txtCantidad");
            HiddenField hvIDMaterial = rItem.FindControl("hvIDMaterial") as HiddenField;
            Tipo_Material tipoMaterial = TipoMaterialLN.ObtenerMaterial(Convert.ToInt32(hvIDMaterial.Value));
            int idMaterial;
            bool esNumero = int.TryParse(txtCantidad.Text, out idMaterial);

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            oUsuario = UsuarioLN.ObtenerCliente(txtCorreo1.Value);
            if (oUsuario != null)
            {
                lblMensajeNoEncontrado.Visible = false;
                txtNombre.Text = oUsuario.NombreCompleto;
            }

            else
            {
                lblMensajeNoEncontrado.Visible = true;
                lblMensajeNoEncontrado.Text = "Error, el usuario con el correo ingresado no existe";

            }
        }
    }
}