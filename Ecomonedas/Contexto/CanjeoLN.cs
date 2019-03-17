using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
  public  class CanjeoLN
    {

        public static decimal GuardarEncabezado(string idUsuario, string idAdminAcopio, decimal totalEcomonedas)
        {
            EcomonedasContexto contexto = new EcomonedasContexto();
            Enc_CanjeoMaterial encabezado = new Enc_CanjeoMaterial();
            encabezado.ID_CentroAcopio = Centro_AcopioLN.ObtenerCentroAcopioAdministrador(idAdminAcopio).ID;
            encabezado.ID_Usuario = idUsuario;
            encabezado.Fecha = DateTime.Now;
            encabezado.Cantidad_Total = totalEcomonedas;
            contexto.Enc_CanjeoMaterial.Add(encabezado);
            contexto.SaveChanges();
            return encabezado.ID;


        }
        public static void GuardarDetalle(List<Det_CanjeoMaterial> listaDetalle, decimal id)
        {

            EcomonedasContexto contexto = new EcomonedasContexto();

            foreach (var detalle in listaDetalle)
            {

                Det_CanjeoMaterial nuevoDetalle = new Det_CanjeoMaterial();
                nuevoDetalle.Cantidad = detalle.Cantidad;
                nuevoDetalle.ID_Canjeo = id;
                nuevoDetalle.ID_Material = detalle.ID_Material;
               
                contexto.Det_CanjeoMaterial.Add(nuevoDetalle);

            }
            contexto.SaveChanges();


        }
    }
}
