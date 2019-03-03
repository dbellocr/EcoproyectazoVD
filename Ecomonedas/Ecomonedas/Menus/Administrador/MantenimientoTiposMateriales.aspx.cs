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

                gvMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales()).ToList();
                gvMateriales.DataBind();


            }
            string accion = Request.QueryString["accion"];
            if (accion == "guardar")
            {

                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                lblMensaje.Text = "Se ha registrado el Tipo de Material";

            }



        }
        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valorSeleccionado = ddlColor.SelectedValue;
            spanColor.Style.Add("background-color", valorSeleccionado);
            spanColor.Style.Add("width", "100%");

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

            Boolean archivoOK = false;
            String path = Server.MapPath("~/Imagenes/");

            //Valida que el usuario seleccione cualquier archivo, valida que no venga vacio
            if (archivoImagen.HasFile)
            {
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


                    int cantRegistros = TipoMaterialLN.GuardarTipoMaterial(txtNombre.Text, archivoImagen.FileName, txtPrecio.Text, ddlColor.SelectedValue, rbActivo.Checked ? true : false);

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
    }
}