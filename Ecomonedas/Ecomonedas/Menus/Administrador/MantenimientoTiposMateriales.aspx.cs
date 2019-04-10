using Contexto;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class MantenimientoTiposMateriales : System.Web.UI.Page
    {
        bool ind = true;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ddlColor.DataSource = ColorLN.ListaColores();
                ddlColor.DataValueField = "ID";
                ddlColor.DataTextField = "Descripcion";
                ddlColor.DataBind();

                gvMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales(true)).ToList();
                gvMateriales.DataBind();


            }
            string accion = Request.QueryString["accion"];
            if (accion == "guardar")
            {

                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                lblMensaje.Text = "Se ha registrado el Tipo de Material";

            }
            ActualizarColorCombo();


        }
        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarColorCombo();

        }

        public void ActualizarColorCombo()
        {

            string valorSeleccionado = ddlColor.SelectedValue;
            spanColor.Style.Add("background-color", valorSeleccionado);
            spanColor.Style.Add("width", "100%");
        }
        private void GuardarProductoConImagen()
        {


            Boolean archivoOK = false;
            String path = Server.MapPath("~/Imagenes/");

            
                //Obtiene la extesión del archivo seleccionado por el fileUpload
                String fileExtension = System.IO.Path.GetExtension(archivoImagen.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        archivoOK = true;
                    }
                }

            

            if (archivoOK == true)
            {
                try
                {
                    // Guardar imagen en la carpeta
                    archivoImagen.PostedFile.SaveAs(path + archivoImagen.FileName);
                    // Guardar imagen en la carpeta Thumbs
                    archivoImagen.PostedFile.SaveAs(path + "TipoMateriales/" + archivoImagen.FileName);

                    //Aqui se manda a la capa lógica los valores todos los controles


                    int cantRegistros = TipoMaterialLN.GuardarTipoMaterial(txtNombre.Text, archivoImagen.FileName, txtPrecio.Text, ddlColor.SelectedValue, rbActivo.Checked ? true : false, hvIdMaterial.Value);

                    if (cantRegistros > 0)
                    {

                        Response.Redirect("MantenimientoTiposMateriales.aspx?accion=guardar");

                    }
                    else
                    {
                        lblMensaje.Visible = true;
                        lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                        lblMensaje.Text = "Ha ocurrido un error al guardar el producto";
                    }


                }
                catch (Exception ex)
                {
                    lblMensaje.Visible = true;
                    lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                    lblMensaje.Text = ex.Message;
                }

            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                lblMensaje.Text = "Formato de imagen no válida";

            }


        }
        public void GuardarProductoSinImagen()
        {

          
           try
            {
                var tipoMaterial = TipoMaterialLN.ObtenerMaterial(Convert.ToInt32(hvIdMaterial.Value));

                int cantRegistros = TipoMaterialLN.GuardarTipoMaterial(txtNombre.Text, tipoMaterial.Imagen_Path, txtPrecio.Text, ddlColor.SelectedValue, rbActivo.Checked ? true : false, hvIdMaterial.Value);

                Response.Redirect("MantenimientoTiposMateriales.aspx?accion=guardar");

            }
            catch
            {
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                lblMensaje.Text = "Ha ocurrido un error al guardar el producto";
            }


        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (!ind) return;

            if (hvIdMaterial.Value == "" || archivoImagen.HasFile)
            {
                GuardarProductoConImagen();
            }else
            {
                GuardarProductoSinImagen();
            }

        }

     
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (hvIdMaterial.Value == "" && archivoImagen.HasFile)
            {
                args.IsValid = true;


            }
            else if (!archivoImagen.HasFile && hvIdMaterial.Value != "")
            {
                args.IsValid = true;
                ind = true;

            }else if (archivoImagen.HasFile && hvIdMaterial.Value !="")
            {
                args.IsValid = true;
                ind = true;
            }
            else
            {
                args.IsValid = false;
                ind = false;
            }

        }

        protected void gvMateriales_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idMaterial = Convert.ToInt32(gvMateriales.DataKeys[gvMateriales.SelectedIndex].Values[0]);
            Tipo_Material oTipoMaterial = TipoMaterialLN.ObtenerMaterial(idMaterial);
            txtNombre.Text = oTipoMaterial.Nombre;
            txtPrecio.Text = string.Format("{0:N0}", oTipoMaterial.Precio);
            ddlColor.SelectedValue = oTipoMaterial.ID_Color.ToString();
            hvIdMaterial.Value = idMaterial.ToString();
            btnGuardar.Text = "Actualizar";
            btnNuevo.Visible = true;
            ActualizarColorCombo();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            IEnumerable<Color> color = (IEnumerable<Color>)ColorLN.ListaColores();
            
            hvIdMaterial.Value = "";
            txtNombre.Text = "";
            txtPrecio.Text = "";
            //Asinga al dropdown list el primer elemento de la lista de colores
            ddlColor.SelectedValue = color.First().ID.ToString();
            ActualizarColorCombo();
            btnGuardar.Text = "Guardar";
            btnNuevo.Visible = false;
        }



        private void CargarGRIDActivos()
        {
            gvMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales(true)).ToList();
            gvMateriales.DataBind();
        }
        private void CargarGRIDInactivos()
        {
            gvMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales(false)).ToList();
            gvMateriales.DataBind();
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