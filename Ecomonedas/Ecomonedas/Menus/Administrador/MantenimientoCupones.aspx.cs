using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Administrador
{
    public partial class MantenimientoCupones : System.Web.UI.Page
    {
        bool ind = true; 
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                gvCupones.DataSource = ((IEnumerable<Cupon>)CuponLN.ListaCupones()).ToList();
                gvCupones.DataBind();



            }



            string accion = Request.QueryString["accion"];
            if (accion == "guardar")
            {

                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                lblMensaje.Text = "Se ha guardado la información del cupón";

            }



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
                    archivoImagen.PostedFile.SaveAs(path + "Cupones/" + archivoImagen.FileName);

                    //Aqui se manda a la capa lógica los valores todos los controles


                    int cantRegistros = CuponLN.GuardarCupon(txtNombre.Text, txtDescripcion.Value, archivoImagen.FileName, txtPrecio.Text, rbActivo.Checked ,hvIDCupon.Value);

                    if (cantRegistros > 0)
                    {

                        Response.Redirect("MantenimientoCupones.aspx?accion=guardar");

                    }
                    else
                    {
                        lblMensaje.Visible = true;
                        lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                        lblMensaje.Text = "Ha ocurrido un error al guardar el cupón";
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
                var cupon = CuponLN.ObtenerCupon(Convert.ToInt32(hvIDCupon.Value));
                int cantRegistros = CuponLN.GuardarCupon(txtNombre.Text, txtDescripcion.Value, cupon.ImagenPath, txtPrecio.Text,rbActivo.Checked, hvIDCupon.Value);
                Response.Redirect("MantenimientoCupones.aspx?accion=guardar");
            }
            catch
            {
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alert alert-dismissible alert-danger";
                lblMensaje.Text = "Ha ocurrido un error al guardar el cupón";
            }
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (!ind) return;

            if (hvIDCupon.Value == "" || archivoImagen.HasFile)
            {
                GuardarProductoConImagen();
            }
            else
            {
                GuardarProductoSinImagen();
            }

        }

      

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if (hvIDCupon.Value == "" && archivoImagen.HasFile)
            {
                args.IsValid = true;
                ind = true;

            }
            else if (!archivoImagen.HasFile && hvIDCupon.Value != "")
            {
                args.IsValid = true;
                ind = true;

            }
            else if (archivoImagen.HasFile && hvIDCupon.Value != "")
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

        protected void gvCupones_SelectedIndexChanged(object sender, EventArgs e)
        {

            int idCupon = Convert.ToInt32(gvCupones.DataKeys[gvCupones.SelectedIndex].Values[0]);
            Cupon oCupon = CuponLN.ObtenerCupon(idCupon);
            txtNombre.Text = oCupon.Nombre;
            txtPrecio.Text = oCupon.Cantidad_Ecomonedas.ToString();
            txtDescripcion.Value = oCupon.Descripcion;
            hvIDCupon.Value = oCupon.ID.ToString();
            btnGuardar.Text = "Actualizar";
            btnNuevo.Visible = true;
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            hvIDCupon.Value = "";
            txtNombre.Text = "";
            txtDescripcion.Value = "";
            txtPrecio.Text = "";
            //Asinga al dropdown list el primer elemento de la lista de colores
            btnGuardar.Text = "Guardar";
            btnNuevo.Visible = false;
        }
    }
}