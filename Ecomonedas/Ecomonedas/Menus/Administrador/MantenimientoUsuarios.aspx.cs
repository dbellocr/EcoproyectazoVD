using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus
{
    public partial class MantenimientoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ddlRol.DataSource = ((IEnumerable<Rol>)RolLN.ListaRoles()).ToList();
                ddlRol.DataValueField = "ID";
                ddlRol.DataTextField = "Descripcion";
                ddlRol.DataBind();

            }
            
        }



    }
}