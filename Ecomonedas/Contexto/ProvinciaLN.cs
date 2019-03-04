using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class ProvinciaLN
    {

        public static IEnumerable<Provincia> ListaProvincia()
        {

            EcomonedasContexto db = new EcomonedasContexto();
            IEnumerable<Provincia> lista = (IEnumerable<Provincia>)db.Provincia.ToList();
            return lista;

        }

    }
}
