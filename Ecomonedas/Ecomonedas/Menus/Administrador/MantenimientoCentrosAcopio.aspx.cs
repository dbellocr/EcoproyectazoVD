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

                ddlUsuario.DataSource = ((IEnumerable<Usuario>)UsuarioLN.ListaUsuarios()).ToList();
                ddlUsuario.DataValueField = "Correo_Electronico";
                ddlUsuario.DataTextField = "NombreCompleto";
                ddlUsuario.DataBind();

                grCentrosAcopio.DataSource = ((IEnumerable<CentrosAcopio>)Centro_AcopioLN.ListaCentrosAcopio()).ToList();
                grCentrosAcopio.DataBind();


            }
            string accion = Request.QueryString["accion"];
            if (accion == "guardar")
            {

                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                lblMensaje.Text = "Se ha registrado el Centro de Acopio";

            }

        }

        protected void grCentrosAcopio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}