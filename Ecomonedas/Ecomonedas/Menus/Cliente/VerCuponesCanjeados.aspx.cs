using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Cliente
{
    public partial class VerCuponesCanjeados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var usuario = LoginLN.Login.Usuario;
                if (usuario != null)
                {
                    lvCupones.DataSource = CanjeoCuponLN.CanjeosCliente(usuario.Correo_Electronico);
                    lvCupones.DataBind();
                }


            }
        }
    }
}