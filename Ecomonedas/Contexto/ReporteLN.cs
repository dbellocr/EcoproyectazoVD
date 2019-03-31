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
        public static List<Reporte> ListaReporte(string fechaInicial, string fechaFinal)
        {
            DateTime fechaIni = Convert.ToDateTime(fechaInicial);
            DateTime fechaFini = Convert.ToDateTime(fechaFinal);

            List<Reporte> lista = new List<Reporte>();
            EcomonedasContexto contexto = new EcomonedasContexto();
            decimal? cantidad = 0;

            foreach (var centroAcopio in contexto.Centro_Acopio)
            {
                var listaC = contexto.Enc_CanjeoMaterial.Where(x => x.ID_CentroAcopio == centroAcopio.ID);
                foreach (var canjeo in listaC)
                {
                   if(canjeo.Fecha.Value.Date>=fechaIni.Date && canjeo.Fecha.Value.Date<=fechaFini.Date)
                    cantidad += canjeo.Cantidad_Total;
              

                }
                if (listaC != null)
                {
                    Reporte rep = new Reporte()
                    {
                        CantidadProducida = cantidad,
                        Nombre = centroAcopio.Nombre
                    };
                    lista.Add(rep);
                    cantidad = 0;
                }
       

            }

            return lista;

        }

    }
}
