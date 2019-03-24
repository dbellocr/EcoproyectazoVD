using Contexto;
using Microsoft.Reporting.WebForms;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Cliente
{
    public partial class DescargarCupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Cupon cupon = CuponLN.ObtenerCupon(Convert.ToInt32(Request.QueryString["id"]));
                Usuario oUsuario = LoginLN.Login.Usuario;


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
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);

                        ruta = Convert.ToBase64String(byteImage);
                    }

                }




                ReportParameter[] p = new ReportParameter[4];
                p[0] = new ReportParameter("nombreCliente", oUsuario.NombreCompleto);

                p[1] = new ReportParameter("nombreProductoServicio", cupon.Nombre);
                p[2] = new ReportParameter("precio", cupon.Cantidad_Ecomonedas.ToString());
                p[3] = new ReportParameter("barrasCupon", ruta);

                LocalReport report = new LocalReport();
                report.ReportPath = Server.MapPath("~/Reportes/ReporteCupon.rdlc");
                report.EnableExternalImages = true;
                report.SetParameters(p);


                report.Refresh();

                string FileName = "Cupon-" + cupon.Nombre.Trim() + ".pdf";
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


              

                Response.Buffer = true;

                Response.ContentType = "application/pdf";
          
                Response.AddHeader("content-disposition", "inline;filename=" + FileName + ".pdf");
                Response.WriteFile(Server.MapPath("~/DescargasCupones/" + FileName));         
                Response.Flush();
             



            }
        }
    }
}