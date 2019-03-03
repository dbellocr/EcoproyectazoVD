using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class ColorLN
    {
        public static IEnumerable<Color> ListaColores()
        {

            EcomonedasContexto db = new EcomonedasContexto();
            IEnumerable<Color> lista = (IEnumerable<Color>)db.Color.ToList();
            return lista;

        }


    }
}
