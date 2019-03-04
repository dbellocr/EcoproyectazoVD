using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class Centro_AcopioLN
    {

        public static int GuardarCentroAcopio(string nombre, string idProvincia, string direccion, string usuarioAdm, bool estado, string idCentro = "")
        {

            EcomonedasContexto db = new EcomonedasContexto();
            Centro_Acopio oCentro = new Centro_Acopio();


            int id = 0;
            bool esEntero = int.TryParse(idCentro, out id);


            if (id > 0 && esEntero)
            {

                oCentro = db.Centro_Acopio.Where(x => x.ID == id).First<Centro_Acopio>();
                

            }


            oCentro.Estado = estado;
            oCentro.ID_Provincia = Convert.ToDecimal(idProvincia);


            oCentro.Direccion_Exacta= direccion;
            oCentro.Nombre = nombre;
            oCentro.ID_Usuario= usuarioAdm;



            if (id == 0 && !esEntero)
            {
                db.Centro_Acopio.Add(oCentro);

            }

            return db.SaveChanges();

        }

        public static List<Centro_Acopio> ListaCentrosAcopio()
        {

            EcomonedasContexto db = new EcomonedasContexto();
            return ((List<Centro_Acopio>)db.Centro_Acopio.ToList());

        }
        public static Centro_Acopio ObtenerCentro(int id)
        {

            EcomonedasContexto db = new EcomonedasContexto();
            return db.Centro_Acopio.Where(x => x.ID == id).First<Centro_Acopio>();


        }

    }
}
