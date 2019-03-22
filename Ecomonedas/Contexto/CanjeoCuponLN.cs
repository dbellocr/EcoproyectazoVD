using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
  public class CanjeoCuponLN
    {

        public static List<Canjeo_Cupon> CanjeosCliente(string idUsuario)
        {

            EcomonedasContexto contexto = new EcomonedasContexto();

           return contexto.Canjeo_Cupon.Where(x => x.ID_Usuario == idUsuario).ToList();



        }



    }
}
