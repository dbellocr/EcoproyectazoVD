﻿using Contexto;
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

        private static Usuario usuarioSeleccionado;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ddlProvincia.DataSource = ProvinciaLN.ListaProvincia();
                ddlProvincia.DataValueField = "ID";
                ddlProvincia.DataTextField = "Descripcion";
                ddlProvincia.DataBind();

                ddlUsuario.DataSource = ((IEnumerable<Usuario>)UsuarioLN.ListaAdminCentroAcopio(true)).ToList();
                ddlUsuario.DataValueField = "Correo_Electronico";
                ddlUsuario.DataTextField = "NombreCompleto";
                ddlUsuario.DataBind();

                CargarGRIDActivos();

            }
            string accion = Request.QueryString["accion"];
            if (accion == "guardar")
            {

                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                lblMensaje.Text = "Se ha registrado el Centro de Acopio";

            }

        }

        private void CargarGRIDActivos()
        {
            grCentrosAcopio.DataSource = Centro_AcopioLN.ListaCentrosAcopio(true);
            grCentrosAcopio.DataBind();
        }
        private void CargarGRIDInactivos()
        {
            grCentrosAcopio.DataSource = Centro_AcopioLN.ListaCentrosAcopio(false);
            grCentrosAcopio.DataBind();
        }

        protected void grCentrosAcopio_SelectedIndexChanged(object sender, EventArgs e)
        {

            int idCentro = Convert.ToInt32(grCentrosAcopio.DataKeys[grCentrosAcopio.SelectedIndex].Values[0]);
            Centro_Acopio oCentro = Centro_AcopioLN.ObtenerCentro(idCentro);
            txtNombre.Text = oCentro.Nombre;
            txtDireccionExacta.Text = oCentro.Direccion_Exacta;
            ddlProvincia.SelectedValue = oCentro.ID_Provincia.ToString();
            ddlUsuario.SelectedValue = oCentro.ID_Usuario.ToString();
            hvIdCentro.Value = idCentro.ToString();
            btnGuardar.Text = "Actualizar";
            btnNuevo.Visible = true;
            usuarioSeleccionado = UsuarioLN.ObtenerUsuario(oCentro.ID_Usuario);

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                var usuario= UsuarioLN.AdminCentroAcopioDisponibles(ddlUsuario.SelectedValue);



                if (usuarioSeleccionado.Correo_Electronico== ddlUsuario.SelectedValue)
                {

                    int cantRegistros = Centro_AcopioLN.GuardarCentroAcopio(txtNombre.Text, ddlProvincia.SelectedValue, txtDireccionExacta.Text, ddlUsuario.SelectedValue, rbActivo.Checked ? true : false, hvIdCentro.Value);

                    Response.Redirect("MantenimientoCentrosAcopio.aspx?accion=guardar");


                } else if(usuario!=null)
                {
                    lblMensaje.Visible = true;
                    lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                    lblMensaje.Text = "Ha ocurrido un error a la hora de guardar el centro de acopio ya que el usuario administrador seleccionado ya tiene un centro de acopio asignado";

                }else
                {
                    int cantRegistros = Centro_AcopioLN.GuardarCentroAcopio(txtNombre.Text, ddlProvincia.SelectedValue, txtDireccionExacta.Text, ddlUsuario.SelectedValue, rbActivo.Checked ? true : false, hvIdCentro.Value);

                    Response.Redirect("MantenimientoCentrosAcopio.aspx?accion=guardar");
                }
              



            }
            catch
            {
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                lblMensaje.Text = "Ha ocurrido un error al guardar el Centro de Acopio";
            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {

            IEnumerable<Provincia> prov = (IEnumerable<Provincia>)ProvinciaLN.ListaProvincia();
            IEnumerable<Usuario> usu = (IEnumerable<Usuario>)UsuarioLN.ListaUsuarios();

            hvIdCentro.Value = "";
            txtNombre.Text = "";
            txtDireccionExacta.Text = "";
            //Asinga al dropdown list el primer elemento de la lista de colores
            ddlProvincia.SelectedValue = prov.First().ID.ToString();
            ddlUsuario.SelectedValue = usu.First().Correo_Electronico.ToString();
            


            btnGuardar.Text = "Guardar";
            btnNuevo.Visible = false;

        }

        protected void chkEstado_CheckedChanged(object sender, EventArgs e)
        {

            if (chkEstado.Checked)
            {
                CargarGRIDInactivos();
            }else
            {
                CargarGRIDActivos();
            }

        }
    }
}