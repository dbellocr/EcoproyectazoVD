using Contexto;
using Ecomonedas.Reportes.dsCentrosAcopioTableAdapters;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Administrador
{
    public partial class ReporteEcomonedasCA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

         


            }
        }

        protected void btnFechas_Click(object sender, EventArgs e)
        {
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportParameter[] p = new ReportParameter[2];
            p[0] = new ReportParameter("fechaInicial", string.Format("{0:dd/MM/yyyy}", Convert.ToDateTime(txtFechaInicio.Text)));

            p[1] = new ReportParameter("fechaFinal", string.Format("{0:dd/MM/yyyy}", Convert.ToDateTime(txtFechaFinal.Text)));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reportes/ReporteEstadístico.rdlc");
            ReportViewer1.LocalReport.SetParameters(p);
            ReportDataSource rdc = new ReportDataSource("DataSet1", ReporteLN.ListaReporte(txtFechaInicio.Text, txtFechaFinal.Text));
            ReportViewer1.LocalReport.DataSources.Add(rdc);
            ReportViewer1.LocalReport.Refresh();
        }
    }
}