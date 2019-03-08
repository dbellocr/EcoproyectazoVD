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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lstMateriales.Items.Add("Botella");
                //lstMateriales.Items.Add("Papel");
            }

        }

        //protected void lstMateriales_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //txtTotal.Text = "100";
        //}
    }
}