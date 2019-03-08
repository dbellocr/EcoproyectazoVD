using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class CrearCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {

            if (txtContrasenna.Value != txtConfirmarContrasenna.Value)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Error, las dos contraseñas deben ser iguales";
                return;
            }
            string contra = txtContrasenna.Value;
            UsuarioLN.GuardarUsuario(txtCorreo1.Value, txtNombre.Value, txtPrimerApellido.Value, txtSegundoApellido.Value, txtDireccion.Value, txtTelefono.Value, "3", true,"",txtContrasenna.Value);
            LoginLN.Login.CrearSesion(txtCorreo1.Value);
            Response.Redirect("~/Menus/Cliente/MenuPrincipal.aspx");

        }
        
    }
}