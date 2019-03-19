using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Cliente
{
    public partial class Detalle_ProductoCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string idCupon = Request.QueryString["producto"];
                int id;
                bool esNumero = int.TryParse(idCupon, out id);

                if (esNumero)
                {

                    fvCupones.DataSource = ((IEnumerable<Cupon>)CuponLN.ListaCupones()).Where(x => x.ID == id && x.Estado == true);
                    fvCupones.DataBind();
                }




            }

        }
    }
}