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

                foreach (var detalle in listaDetalle)
                {
                    decimal? det = detalle.Tipo_Material.Precio;
                    decimal? cantidad = Convert.ToDecimal(detalle.Cantidad);
                    totalEcomonedas += det * cantidad;



                }
                lblTotalObtenido.Text = String.Format("{0:N0}", totalEcomonedas);
            }
            else
            {
                lblMensajeNoEncontrado.Visible = true;
                lblMensajeNoEncontrado.Text = "Error, debe ingresar el correo electrónico del cliente para efectuar el canjeo";
            }

        }

        protected void btnNuevoCanjeo_Click(object sender, EventArgs e)
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
            Enc_CanjeoMaterial encabezadoCanejo = new Enc_CanjeoMaterial();
            encabezadoCanejo.ID_Usuario = oUsuario.Correo_Electronico;
            encabezadoCanejo.Fecha = DateTime.Now;
            encabezadoCanejo.ID_CentroAcopio = Centro_AcopioLN.ObtenerCentroAcopioAdministrador(LoginLN.Login.Usuario.Correo_Electronico).ID;

            EcomonedasContexto contexto = new EcomonedasContexto();
            contexto.Enc_CanjeoMaterial.Add(encabezadoCanejo);
            contexto.SaveChanges();
            decimal id = encabezadoCanejo.ID;


            EcomonedasContexto contexto1 = new EcomonedasContexto();


            foreach (var detalle in listaDetalle )
            {

                Det_CanjeoMaterial det = new Det_CanjeoMaterial();
                det.Cantidad = det.Cantidad;
                det.ID_Canjeo = id;
                det.ID_Material = det.ID_Material;
                contexto1.Det_CanjeoMaterial.Add(det);

            }
            contexto1.SaveChanges();



         

            



        }

        
    }
}
