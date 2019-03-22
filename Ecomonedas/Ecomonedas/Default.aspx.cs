using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                repeaterCupones.DataSource = ((IEnumerable<Cupon>)CuponLN.ListaCupones("si")).ToList();
                repeaterCupones.DataBind();

            }

        }
    }
}