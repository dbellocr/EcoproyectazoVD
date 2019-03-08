using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class PrincipalCliente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bool validarSesion = LoginLN.Login.ValidarSesion();
                if (validarSesion)
                {
                    lblNombreCliente.Text = LoginLN.Login.Usuario.NombreCompleto;
                }
                else
                {
                    Response.Redirect("~/MiCuenta.aspx?validacion=error");
                }

            }
        }
    }
}