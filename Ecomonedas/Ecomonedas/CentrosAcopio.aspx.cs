using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class CentrosAcopio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                gvCentrosSanJose.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 1)).ToList();
                gvCentrosAlajuela.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 2)).ToList();
                gvCentrosCartago.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 3)).ToList();
                gvCentrosHeredia.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 4)).ToList();
                gvCentrosGuanacaste.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 5)).ToList();
                gvCentrosPuntarenas.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 6)).ToList();
                gvCentrosLimon.DataSource = ((IEnumerable<Contexto.Centro_Acopio>)Centro_AcopioLN.ListaCentrosAcopio(true).Where(x => x.ID_Provincia == 7)).ToList();

                gvCentrosSanJose.DataBind();
                gvCentrosAlajuela.DataBind();
                gvCentrosCartago.DataBind();
                gvCentrosHeredia.DataBind();
                gvCentrosGuanacaste.DataBind();
                gvCentrosPuntarenas.DataBind();
                gvCentrosLimon.DataBind();

                repeaterMateriales.DataSource = ((IEnumerable<Tipo_Material>) TipoMaterialLN.ListaMateriales(true)).ToList();
                repeaterMateriales.DataBind();

              
            }
            
        }
    }
}