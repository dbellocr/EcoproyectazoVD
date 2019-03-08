using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class PrincipalAdminCentroAcopio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bool validarSesion = LoginLN.Login.ValidarSesion();
                if (validarSesion)
                {
                    if (LoginLN.Login.Usuario.ID_Rol != 2)
                        Response.Redirect("~/MiCuenta.aspx?validacion=error");

                }
                else
                {
                    Response.Redirect("~/MiCuenta.aspx?validacion=error");
                }

            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            LoginLN.Login.CerrarSesion();
            Response.Redirect("~/MiCuenta.aspx");
        }
    }
}