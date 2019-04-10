using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class UsuarioLN
    {

        public static int GuardarUsuario(string correoElectronico, string nombre, string apellidoPaterno, string apellidoMaterno, string direccion, string telefono, string idRol, bool estado, string actualizar = "", string contrasenna = "")
        {

            EcomonedasContexto db = new EcomonedasContexto();
            Usuario oUsuario = new Usuario();


            int id = 0;
            bool esEntero = int.TryParse(actualizar, out id);


            if (id > 0 && esEntero)
            {

                oUsuario = db.Usuario.Where(x => x.Correo_Electronico == correoElectronico).First<Usuario>();

            }

            if (contrasenna == "")
            {
                oUsuario.Contrasena = "adminAcopio";
            }
            else
            {
                oUsuario.Contrasena = contrasenna;
            }

            oUsuario.Nombre = nombre;
            oUsuario.Apellido_Materno = apellidoMaterno;
            oUsuario.Apellido_Paterno = apellidoPaterno;
            oUsuario.Correo_Electronico = correoElectronico;
            oUsuario.Dirección = direccion;
            oUsuario.Estado = estado;
            oUsuario.ID_Rol = int.Parse(idRol);
            if (oUsuario.ID_Rol != 1)
            {
                oUsuario.Telefono = Convert.ToDecimal(telefono);

            }


            if (id == 0 && !esEntero)
            {
                db.Usuario.Add(oUsuario);

            }

            db.SaveChanges();
            CrearBilleteraVirtual(oUsuario.Correo_Electronico);
            return 1;
        }
        public static void CrearBilleteraVirtual(string correoElectronico)
        {

            

            EcomonedasContexto db = new EcomonedasContexto();

            Usuario usu = db.Usuario.Find(correoElectronico);
            if (usu.ID_Rol == 3)
            {
                Billetera_Virtual billetera = new Billetera_Virtual();
                billetera.EcoMonedas_Canjeadas = 0;
                billetera.EcoMonedas_Disponibles = 0;
                billetera.EcoMonedas_Totales = 0;
                billetera.ID_Usuario = correoElectronico;
                db.Billetera_Virtual.Add(billetera);

                db.SaveChanges();
            }
            


        }

        public static IQueryable ListaUsuarios()
        {
            EcomonedasContexto db = new EcomonedasContexto();
            return db.Usuario.Where(x => x.Correo_Electronico != "ecoadmin@ecomonedas.cr");



        }
        public static IQueryable ListaClientes()
        {
            EcomonedasContexto db = new EcomonedasContexto();
            return db.Usuario.Where(x => x.ID_Rol == 3);



        }
        public static IQueryable ListaAdminCentroAcopio(bool estado)
        {
            EcomonedasContexto db = new EcomonedasContexto();

            if (estado)
            {
                return db.Usuario.Where(x => x.ID_Rol == 2 &&  x.Estado == true);
            }
            else
            {
                return db.Usuario.Where(x => x.ID_Rol == 2 && x.Estado == false);
            }
            



        }
        public static Usuario AdminCentroAcopioDisponibles(string correoElectronico)
        {

            EcomonedasContexto db = new EcomonedasContexto();

            var query =
from c in db.Usuario.Where(x => x.Estado == true && x.ID_Rol==2)
where (from o in db.Centro_Acopio select o.ID_Usuario).Contains(c.Correo_Electronico)
select c;


            return query.Where(x=> x.Correo_Electronico==correoElectronico).FirstOrDefault<Usuario>();


        }


        public static IQueryable ListaUsuariosAdmin()
        {
            EcomonedasContexto db = new EcomonedasContexto();
            return db.Usuario;



        }
        public static Usuario ObtenerUsuario(string correoElectronico)
        {

            EcomonedasContexto db = new EcomonedasContexto();
            Usuario usuario = db.Usuario.Where(x => x.Correo_Electronico == correoElectronico).First<Usuario>();
            return usuario;
        }
        public static Usuario ObtenerCliente(string correoElectronico)
        {

            EcomonedasContexto db = new EcomonedasContexto();
            Usuario usuario = db.Usuario.Where(x => x.Correo_Electronico == correoElectronico && x.ID_Rol == 3).FirstOrDefault<Usuario>();

            return usuario;

        }
    }
}
