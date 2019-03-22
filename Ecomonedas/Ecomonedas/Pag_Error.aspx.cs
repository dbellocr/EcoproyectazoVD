using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas
{
    public partial class Pag_Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Guarda la página anterior en una variable view state
            
            }
        }

        protected void linkVolver_Click(object sender, EventArgs e)
        {

        
        }
    }
}