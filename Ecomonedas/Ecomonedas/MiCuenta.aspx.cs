using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class MiCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string error = Request.QueryString["validacion"];

            if (error == "error")
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Error, debe iniciar sesión para poder ingresar a la página solicitada";

            }

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Usuario usuario=null;
            bool estadoLogin=  LoginLN.Login.IniciarSesion(txtCorreo1.Value, txtContraseña.Value, out usuario);

            if (estadoLogin)
            {

                if (usuario.ID_Rol == 1)
                    Response.Redirect("~/Menus/Administrador/MenuPrincipal.aspx");
                else if (usuario.ID_Rol == 2)
                    Response.Redirect("~/Menus/AdminCentroAcopio/MenuPrincipalCA.aspx");
                else
                    Response.Redirect("~/Menus/Cliente/MenuPrincipal.aspx");
            }

            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Error, el usuario o la contraseña ingresados son inválidos";
            }

        }
    }
}