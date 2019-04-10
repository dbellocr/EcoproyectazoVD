using Contexto;
using System;
using System.Collections;
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

                //ddlRol.DataSource = ((IEnumerable<Rol>)RolLN.ListaRoles()).ToList();
                //ddlRol.DataValueField = "ID";
                //ddlRol.DataTextField = "Descripcion";
                //ddlRol.DataBind();

                gvUsuarios.DataSource = ((IEnumerable<Usuario>)UsuarioLN.ListaAdminCentroAcopio(true)).ToList();
                gvUsuarios.DataBind();
            }
            string accion = Request.QueryString["accion"];
            if (accion == "guardar")
            {

                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                lblMensaje.Text = "Se ha guardado el usuario";

            }

        }

        protected void gvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string correo = Convert.ToString(gvUsuarios.DataKeys[gvUsuarios.SelectedIndex].Values[0]);

            Usuario oUsuario = UsuarioLN.ObtenerUsuario(correo);
            txtCorreo.Text = oUsuario.Correo_Electronico;
            txtDireccion.Text = oUsuario.Dirección;
            txtNombre.Text = oUsuario.Nombre;
            txtPrimerApellido.Text = oUsuario.Apellido_Paterno;
            txtSegundoApellido.Text = oUsuario.Apellido_Materno;
            txtTelefono.Text = oUsuario.Telefono.ToString();
            

            hvUsuarios.Value = "1";

            btnNuevo.Visible = true;
            btnGuardar.Text = "Actualizar";

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try {

                btnNuevo.Visible = false;
                UsuarioLN.GuardarUsuario(txtCorreo.Text, txtNombre.Text, txtPrimerApellido.Text, txtSegundoApellido.Text, txtDireccion.Text, txtTelefono.Text, "2", rbActivo.Checked,hvUsuarios.Value);
                Response.Redirect("MantenimientoUsuarios.aspx?accion=guardar");


            }
            catch (Exception ex)
            {
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                lblMensaje.Text = "Ha ocurrido un error al insertar el usuario" + ex.Message;


            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {

            txtCorreo.Text = "";
            txtDireccion.Text = "";
            txtNombre.Text = "";
            txtPrimerApellido.Text = "";
            txtSegundoApellido.Text = "";
            txtTelefono.Text = "";
            btnGuardar.Text = "Guardar";
            btnNuevo.Visible = false;
        }

        private void CargarGRIDActivos()
        {
            gvUsuarios.DataSource = ((IEnumerable<Usuario>)UsuarioLN.ListaAdminCentroAcopio(true)).ToList();
            gvUsuarios.DataBind();
        }
        private void CargarGRIDInactivos()
        {
            gvUsuarios.DataSource = ((IEnumerable<Usuario>)UsuarioLN.ListaAdminCentroAcopio(false)).ToList();
            gvUsuarios.DataBind();
        }

        protected void chkEstado_CheckedChanged(object sender, EventArgs e)
        {
            if (chkEstado.Checked)
            {
                CargarGRIDInactivos();
            }
            else
            {
                CargarGRIDActivos();
            }
        }
    }
}