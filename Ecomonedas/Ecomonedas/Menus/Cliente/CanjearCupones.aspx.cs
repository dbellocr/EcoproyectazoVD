using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.IO;
using QRCoder;
using System.Drawing;
using System.Drawing.Imaging;
using System.Web.UI.HtmlControls;
using System.Threading;

namespace Ecomonedas.Menus.Cliente
{
    public partial class CanjearCupones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario oUsuario = LoginLN.Login.Usuario;
            if (!IsPostBack)
            {         
                if (oUsuario != null)
                {
                    RefrescarListView(oUsuario);
                }
                string id = Request.QueryString["idCupon"];
                if (Request.QueryString["idCupon"] != null)
                {
                    Response.Redirect("DescargarCupon.aspx?id=" + id);
                }

            }
            else
            {
                string id = Request.QueryString["idCupon"];
                if (Request.QueryString["idCupon"] != null)
                {
                    Response.Redirect("DescargarCupon.aspx?id=" + id);
                }
            }
        }

        private void RefrescarListView(Usuario oUsuario)
        {
            //Libera el recurso de la memoria
           
            lvCupones.DataSource = null;
            lvCupones.DataSource = ((IEnumerable<Cupon>)CuponLN.ListaCuponesAutorizados(oUsuario.Correo_Electronico)).ToList();
            lvCupones.DataBind();
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            //Buscar hidden fields
            ListViewItem item = (ListViewItem)(sender as Control).NamingContainer;

            HiddenField idProducto = (HiddenField)item.FindControl("hFIDCupon");
            Button boton = (Button)item.FindControl("btnDescarga");

            Usuario oUsuario = LoginLN.Login.Usuario;
            Cupon cupon = CuponLN.ObtenerCupon(Convert.ToInt32(idProducto.Value));

            CuponLN.ConsumirCupon(oUsuario.Correo_Electronico, cupon.ID);
            Billetera_Virtual_LN.ActualizarBilletera(oUsuario.Correo_Electronico, 0, (Convert.ToInt32(cupon.Cantidad_Ecomonedas) * 10));


             
            


     

            Response.Redirect("CanjearCupones.aspx?idCupon="+cupon.ID);
     

          

        }

        protected void btnDescarga_Click(object sender, EventArgs e)
        {
            ListViewItem item = (ListViewItem)(sender as Control).NamingContainer;

            HiddenField idProducto = (HiddenField)item.FindControl("hFIDCupon");


            Usuario oUsuario = LoginLN.Login.Usuario;
            Cupon cupon = CuponLN.ObtenerCupon(Convert.ToInt32(idProducto.Value));

       

        }
    }
}