using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class CuponLN
    {

        public static IQueryable ListaCupones(string primerosTres="")
        {
            EcomonedasContexto db = new EcomonedasContexto();
            if (primerosTres != "")
            {
            
                return db.Cupon.Where(x => x.Estado == true).Take(3);
            }

            return db.Cupon;

        }


        public static Cupon ObtenerCupon(int idCupon)
        {

            EcomonedasContexto db = new EcomonedasContexto();

            return db.Cupon.Where(x => x.ID == idCupon).First();



        }
        public static List<Cupon> ListaCuponesAutorizados(string idCliente)
        {



            EcomonedasContexto db = new EcomonedasContexto();


            var billetera = db.Billetera_Virtual.Where(x => x.ID_Usuario == idCliente).FirstOrDefault<Billetera_Virtual>();

            decimal? ecomonedasDisponibles = billetera.EcoMonedas_Disponibles;
            var precioEcomoneda = ecomonedasDisponibles * 10;



            List<Cupon> lista = db.Cupon.Where(x => x.Cantidad_Ecomonedas <= precioEcomoneda).ToList();

            //foreach (var cupon in lista)
            //{



            //    foreach (var canejo in db.Canjeo_Cupon.ToList())
            //    {

            //        if (canejo.ID_Cupon == cupon.ID && canejo.ID_Usuario == idCliente)
            //        {
            //            lista.Remove(cupon);

            //        }
            //    }
            //    if (lista.Count == 0) break;
            //}

            var query =
    from c in lista 
    where !(from o in db.Canjeo_Cupon
            select o.ID_Cupon)
           .Contains(c.ID)
    select c;


            return query.ToList();

        }
        public static int GuardarCupon(string nombre, string descripcion, string imagenPath, string precio, bool estado, string idCupon = "")
        {

            EcomonedasContexto db = new EcomonedasContexto();
            Cupon oCupon = new Cupon();


            int id = 0;
            bool esEntero = int.TryParse(idCupon, out id);


            if (id > 0 && esEntero)
            {

                oCupon = db.Cupon.Where(x => x.ID == id).First<Cupon>();

            }
            oCupon.Cantidad_Ecomonedas = Convert.ToDecimal(precio);
            oCupon.Descripcion = descripcion;
            oCupon.ImagenPath = imagenPath;
            oCupon.Nombre = nombre;
            oCupon.Estado = estado;

            if (id == 0 && !esEntero)
            {
                db.Cupon.Add(oCupon);

            }
            return db.SaveChanges();
        }
        public static void ConsumirCupon(string idUsuario, decimal idCupon)
        {

            EcomonedasContexto contexto = new EcomonedasContexto();
            Canjeo_Cupon oCanjeo = new Canjeo_Cupon()
            {
                ID_Usuario = idUsuario,
                ID_Cupon = idCupon,
            };
            contexto.Canjeo_Cupon.Add(oCanjeo);
            contexto.SaveChanges();

        }
    }
}
