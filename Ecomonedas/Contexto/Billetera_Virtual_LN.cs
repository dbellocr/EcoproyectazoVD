using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class Billetera_Virtual_LN
    {
        public static void ActualizarBilletera(string idUsuario, int totalCanjeadoMateriales, int totalCanjeadoCupones )
        {

            EcomonedasContexto contexto = new EcomonedasContexto();
            Billetera_Virtual oBilleteraUsuario = contexto.Billetera_Virtual.Where(x => x.ID_Usuario == idUsuario).FirstOrDefault();

            oBilleteraUsuario.EcoMonedas_Totales = oBilleteraUsuario.EcoMonedas_Totales + totalCanjeadoMateriales;
            oBilleteraUsuario.EcoMonedas_Canjeadas = oBilleteraUsuario.EcoMonedas_Canjeadas + totalCanjeadoCupones;
            oBilleteraUsuario.EcoMonedas_Disponibles = oBilleteraUsuario.EcoMonedas_Totales - oBilleteraUsuario.EcoMonedas_Canjeadas;


            contexto.SaveChanges();



        }


    }
}
