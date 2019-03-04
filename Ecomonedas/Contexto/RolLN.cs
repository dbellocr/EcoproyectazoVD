using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class RolLN
    { 

        public static IQueryable ListaRoles()
        {
            EcomonedasContexto db = new EcomonedasContexto();
            return db.Rol.Where(x=> x.ID!=1);
        }


    }
}
