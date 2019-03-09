﻿using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomonedas.Menus.Administrador
{
    public partial class ListadoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                gvUsuarios.DataSource = ((IEnumerable<Usuario>)UsuarioLN.ListaClientes()).ToList();
                gvUsuarios.DataBind();
            }

        }
        
    }
}