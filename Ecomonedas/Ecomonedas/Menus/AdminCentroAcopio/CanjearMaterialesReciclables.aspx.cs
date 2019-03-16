using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.AdminCentroAcopio
{
    public partial class CanjearMaterialesReciclables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                repeaterMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales()).ToList();
                repeaterMateriales.DataBind();


            }

        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {

        }
    }
}