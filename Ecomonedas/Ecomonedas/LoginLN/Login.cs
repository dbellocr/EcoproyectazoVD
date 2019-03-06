﻿using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecomonedas.LoginLN
{
    public class Login
    {
        public static Usuario Usuario { get; set; }

        // Valida que el correo y la contraseña sean correctas, crea una sesion para el usuario
        public static bool IniciarSesion(string correoElectronico, string contraseña)
        {

            Usuario = ((IEnumerable<Usuario>)UsuarioLN.ListaUsuariosAdmin()).Where(x => x.Correo_Electronico == x.Correo_Electronico && x.Contrasena == contraseña).FirstOrDefault();
            HttpContext.Current.Session["usuario"] = Usuario;
            if (Usuario != null)
            {
                return true;
            }
            return false;

        }
        //Valida que el usuario esté logeado 
        public static bool ValidarSesion()
        {

            if (HttpContext.Current.Session["usuario"] != null)
                return true;
            return false;

        }
        //Crea la sesión del usuario cuando se loguea
        public static void CrearSesion(string correoElectronico)
        {

            Usuario = UsuarioLN.ObtenerUsuario(correoElectronico);
            HttpContext.Current.Session["usuario"] = Usuario;

        }
        //Cierra la sesión del usuario 
        public static void CerrarSesion()
        {
            HttpContext.Current.Session["usuario"] = null;
        }
    }
    }