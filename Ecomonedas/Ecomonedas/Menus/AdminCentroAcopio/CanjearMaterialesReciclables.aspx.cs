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
        private static Usuario oUsuario;
        private static List<Det_CanjeoMaterial> listaDetalle;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                listaDetalle = new List<Det_CanjeoMaterial>();


                CargarRepeater();

            }

        }
        private void CargarRepeater()
        {
            repeaterMateriales.DataSource = ((IEnumerable<Tipo_Material>)TipoMaterialLN.ListaMateriales()).ToList();
            repeaterMateriales.DataBind();
        }
        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            RepeaterItem rItem = (RepeaterItem)((Control)sender).NamingContainer;
            TextBox txtCantidad = (TextBox)rItem.FindControl("txtCantidad");
            HiddenField hvIDMaterial = rItem.FindControl("hvIDMaterial") as HiddenField;
            Tipo_Material tipoMaterial = TipoMaterialLN.ObtenerMaterial(Convert.ToInt32(hvIDMaterial.Value));
            int cantidad;
            bool esNumero = int.TryParse(txtCantidad.Text, out cantidad);

            if (!esNumero)
            {

                return;

            }


            Det_CanjeoMaterial detalle = new Det_CanjeoMaterial();
            detalle.Cantidad = cantidad;
            detalle.ID_Material = Convert.ToInt32(hvIDMaterial.Value);
            detalle.Tipo_Material = tipoMaterial;
            listaDetalle.Add(detalle);


        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            oUsuario = UsuarioLN.ObtenerCliente(txtCorreo1.Value);
            if (oUsuario != null)
            {
                lblMensajeNoEncontrado.Visible = false;
                txtNombre.Text = oUsuario.NombreCompleto;
            }

            else
            {
                lblMensajeNoEncontrado.Visible = true;
                lblMensajeNoEncontrado.Text = "Error, el usuario con el correo ingresado no existe";

            }
        }
        private void CargarGRID()
        {
            gvMaterialesPreliminar.DataSource = ((IEnumerable<Det_CanjeoMaterial>)listaDetalle).ToList();
            gvMaterialesPreliminar.DataBind();


        }
        protected void btnPreliminar_Click(object sender, EventArgs e)
        {
            decimal? totalEcomonedas = 0;
            if (oUsuario != null)
            {
                btnCanje.Visible = true;
                tituloCanejo.Visible = false;
                btnPreliminar.Visible = false;
                btnNuevoCanjeo.Visible = true;
                divTabla.Visible = true;
                CargarGRID();
                repeaterMateriales.Visible = false;
                tituloMateriales.Style.Add("margin-top", "5px");

                totalEcomonedas = CalcularTotal();
                lblTotalObtenido.Text = String.Format("{0:N0}", totalEcomonedas);
            }
            else
            {
                lblMensajeNoEncontrado.Visible = true;
                lblMensajeNoEncontrado.Text = "Error, debe ingresar el correo electrónico del cliente para efectuar el canjeo";
            }

        }

        private static int CalcularTotal()
        {
            decimal totalEcomonedas = 0;
            foreach (var detalle in listaDetalle)
            {
                decimal det = detalle.Tipo_Material.Precio;
              
                totalEcomonedas += det * detalle.Cantidad;



            }

            return Convert.ToInt32(totalEcomonedas);
        }

        protected void btnNuevoCanjeo_Click(object sender, EventArgs e)
        {
            NuevoCanjeo();
        }

        private void NuevoCanjeo()
        {
            btnCanje.Visible = false;
            tituloCanejo.Visible = true;
            btnPreliminar.Visible = true;
            btnNuevoCanjeo.Visible = false;
            divTabla.Visible = false;
            repeaterMateriales.DataSource = null;
            CargarRepeater();
            repeaterMateriales.Visible = true;
            listaDetalle.Clear();
            txtCorreo1.Value = "";
            txtNombre.Text = "";
            oUsuario = null;
        }

        protected void btnCanje_Click(object sender, EventArgs e)
        {



            decimal id = CanjeoLN.GuardarEncabezado(oUsuario.Correo_Electronico, LoginLN.Login.Usuario.Correo_Electronico, CalcularTotal());
            CanjeoLN.GuardarDetalle(listaDetalle, id);
            lblModalTitle.Text = "Registro exitoso";
            lblModalBody.Text = "Se ha registrado el canjeo";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
            Billetera_Virtual_LN.ActualizarBilletera(oUsuario.Correo_Electronico, CalcularTotal(), 0);
            NuevoCanjeo();






        }


    }
}
