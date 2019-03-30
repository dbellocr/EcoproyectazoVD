using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
  public  class ReporteLN
    {

        public static IQueryable ConsultaReporteCentrosAcopio()
        {
            EcomonedasContexto contexto = new EcomonedasContexto();

            var query = from ca in contexto.Enc_CanjeoMaterial
                         join c in contexto.Centro_Acopio
                         on ca.ID_CentroAcopio equals c.ID
                         group c by c.Nombre into g
                         select new
                         {
                          g.Key,
                          

                         };


            return query;
                         



        }
        public static List<Reporte> ListaReporte()
        {


            return null; 


        }

    }
}
