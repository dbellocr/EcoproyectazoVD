using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class TipoMaterialLN
    {

        public static int GuardarTipoMaterial(string nombre, string imagenPath, string precio, string idColor, bool estado, string idMaterial="")
        {

            EcomonedasContexto db = new EcomonedasContexto();
            Tipo_Material oTipo = new Tipo_Material();


            int id = 0;
            bool esEntero = int.TryParse(idMaterial, out id);


            if (id > 0 && esEntero)
            {

             oTipo= db.Tipo_Material.Where(x => x.ID == id).First<Tipo_Material>();

               
           


            }


            oTipo.Estado = estado == true ? 1 : 0;
            oTipo.ID_Color = idColor;


            oTipo.Imagen_Path = imagenPath;
            oTipo.Nombre = nombre;
            oTipo.Precio = Convert.ToDecimal(precio);
            
   

            if (id == 0 && !esEntero)
            {
                db.Tipo_Material.Add(oTipo);
     
            }

           return db.SaveChanges();

        }
        public static IQueryable ListaMateriales()
        {

            EcomonedasContexto db = new EcomonedasContexto();
            return db.Tipo_Material.Where(x=> x.Estado==1);

        }
        public static Tipo_Material ObtenerMaterial(int id)
        {

            EcomonedasContexto db = new EcomonedasContexto();
            return db.Tipo_Material.Where(x => x.ID == id).First<Tipo_Material>();


        }

    }
}
