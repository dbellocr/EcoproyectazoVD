using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class CuponLN
    {

        public static IQueryable ListaCupones()
        {

            EcomonedasContexto db = new EcomonedasContexto();
            return db.Cupon;

        }
        public static Cupon ObtenerCupon(int idCupon)
        {

            EcomonedasContexto db = new EcomonedasContexto();

            return db.Cupon.Where(x => x.ID == idCupon).First();



        }
        public static int GuardarCupon(string nombre, string descripcion, string imagenPath, string precio, string idCupon = "")
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

            if (id == 0 && !esEntero)
            {
                db.Cupon.Add(oCupon);

            }
            return db.SaveChanges();
        }
    }
}
