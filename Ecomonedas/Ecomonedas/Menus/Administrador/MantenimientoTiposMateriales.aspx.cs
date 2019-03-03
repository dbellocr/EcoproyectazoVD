using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class MantenimientoTiposMateriales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ddlColor.DataSource = ColorLN.ListaColores();
                ddlColor.DataValueField = "ID";
                ddlColor.DataTextField = "Descripcion";
                ddlColor.DataBind();

            }


        }
    }
}