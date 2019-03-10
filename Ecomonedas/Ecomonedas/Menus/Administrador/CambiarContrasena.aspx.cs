using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Administrador
{
    public partial class CambiarContrasena : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCambiarContrasena_Click(object sender, EventArgs e)
        {
            if (txtConfirmarContraseña.Text != txtCambiarContraseña.Text)
            {
                lblMensaje.Visible = true;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Error, las dos contraseñas ingresadas deben ser iguales";
                return;
            }
            var usuario = LoginLN.Login.Usuario;
            usuario.Contrasena = txtConfirmarContraseña.Text;

            UsuarioLN.GuardarUsuario(usuario.Correo_Electronico, usuario.Nombre, usuario.Apellido_Paterno, usuario.Apellido_Materno, usuario.Dirección, usuario.Telefono.ToString(), usuario.ID_Rol.ToString(), true, "1", txtConfirmarContraseña.Text);
            lblMensaje.Visible = true;
            lblMensaje.Text = "Se ha actualizado la contraseña";
        }
    }
}