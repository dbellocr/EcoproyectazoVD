using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Cliente
{
    public partial class MenuPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuario objUsuario = LoginLN.Login.Usuario;
                if (objUsuario != null)
                {
                    frmCantidadEcomonedas.DataSource = Billetera_Virtual_LN.ObtenerBilletera(objUsuario.Correo_Electronico);
                    frmCantidadEcomonedas.DataBind();

                }
             


            }
        }
    }
}