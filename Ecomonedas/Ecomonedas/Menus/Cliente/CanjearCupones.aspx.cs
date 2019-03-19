using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Cliente
{
    public partial class CanjearCupones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Usuario oUsuario = LoginLN.Login.Usuario;
                if (oUsuario != null)
                {
                    lvCupones.DataSource = ((IEnumerable<Cupon>)CuponLN.ListaCuponesAutorizados(oUsuario.Correo_Electronico)).ToList();
                    lvCupones.DataBind();
                }
                  

             

            }

        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {

        }
    }
}