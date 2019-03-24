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

namespace Ecomonedas.Menus.Cliente
{
    public partial class CanjearCupones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Usuario oUsuario = LoginLN.Login.Usuario;
                if (oUsuario != null)
                {



                    RefrescarListView(oUsuario);
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
      

            Usuario oUsuario = LoginLN.Login.Usuario;
            Cupon cupon = CuponLN.ObtenerCupon(Convert.ToInt32(idProducto.Value));


            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(cupon.ID.ToString(), QRCodeGenerator.ECCLevel.Q);
            QRCode qrCode = new QRCode(qrCodeData);
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            string ruta;
            using (Bitmap qrCodeImage = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    qrCodeImage.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                     imgBarCode.ImageUrl= "data:image/png;base64," + Convert.ToBase64String(byteImage);
              
                    ruta = Convert.ToBase64String(byteImage);
                }
                
            }
           

            

            ReportParameter[] p = new ReportParameter[4];
            p[0] = new ReportParameter("nombreCliente", oUsuario.NombreCompleto);

            p[1] = new ReportParameter("nombreProductoServicio", cupon.Nombre);
            p[2] = new ReportParameter("precio", cupon.Cantidad_Ecomonedas.ToString());
            p[3] = new ReportParameter("barrasCupon",  ruta);
        
            LocalReport report = new LocalReport();
            report.ReportPath = Server.MapPath("~/Reportes/ReporteCupon.rdlc");
            report.EnableExternalImages = true;
            report.SetParameters(p);


            report.Refresh();

            string FileName = "Cupon-"+ cupon.Nombre.Trim()  +  ".pdf";
            string extension;
            string encoding;
            string mimeType;
            string[] streams;
            Warning[] warnings;

      

            Byte[] mybytes = report.Render("PDF", null,
                            out extension, out encoding,
                            out mimeType, out streams, out warnings); //for exporting to PDF  
            using (FileStream fs = File.Create(Server.MapPath("~/DescargasCupones/") + FileName))
            {
                fs.Write(mybytes, 0, mybytes.Length);
            }
            CuponLN.ConsumirCupon(oUsuario.Correo_Electronico, cupon.ID);
            Billetera_Virtual_LN.ActualizarBilletera(oUsuario.Correo_Electronico, 0, (Convert.ToInt32(cupon.Cantidad_Ecomonedas)*10));


            Response.ClearHeaders();
            Response.ClearContent();
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment; filename=" + FileName);
            Response.AddHeader("Refresh", "0; url=CanjearCupones.aspx");

            Response.WriteFile(Server.MapPath("~/DescargasCupones/" + FileName));



            Response.Flush();
            Response.Close();
            Response.End();













        }
    }
}