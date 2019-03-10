using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Cliente
{
    public partial class ConfigurarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                var usuario = LoginLN.Login.Usuario;

                if (usuario != null)
                {
                    txtCorreo1.Value = usuario.Correo_Electronico;
                    txtNombre.Value = usuario.Nombre;
                    txtPrimerApellido.Value = usuario.Apellido_Paterno;
                    txtSegundoApellido.Value = usuario.Apellido_Materno;
                    txtDireccion.Value = usuario.Dirección;
                    txtTelefono.Value = usuario.Telefono.ToString();

                }




            }

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (txtConfirmarContrasenna.Value != txtContrasenna.Value)
            {
                lblMensaje.Visible = true;
                lblMensaje.ForeColor = System.Drawing.Color.Red ;
                lblMensaje.Text = "Error, las dos contraseñas deben ser iguales";
                return;
            }
            var usuario = LoginLN.Login.Usuario;
            usuario.Contrasena = txtConfirmarContrasenna.Value;

            UsuarioLN.GuardarUsuario(usuario.Correo_Electronico,usuario.Nombre, usuario.Apellido_Paterno, usuario.Apellido_Materno, usuario.Dirección, usuario.Telefono.ToString(),usuario.ID_Rol.ToString(),true,"1",txtContrasenna.Value);
            lblMensaje.Visible = true;
            lblMensaje.Text = "Se ha actualizado la contraseña";

        }
    }
}