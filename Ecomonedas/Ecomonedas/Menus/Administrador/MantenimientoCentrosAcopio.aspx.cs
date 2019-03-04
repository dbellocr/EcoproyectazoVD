using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus
{
    public partial class MantenimientoCentrosAcopio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ddlProvincia.DataSource = ProvinciaLN.ListaProvincia();
                ddlProvincia.DataValueField = "ID";
                ddlProvincia.DataTextField = "Descripcion";
                ddlProvincia.DataBind();

                //gvMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales()).ToList();
                //gvMateriales.DataBind();


            }

        }
    }
}