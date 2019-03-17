namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Billetera_Virtual
    {
        [Key]
        [StringLength(30)]
        public string ID_Usuario { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? EcoMonedas_Disponibles { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? EcoMonedas_Canjeadas { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? EcoMonedas_Totales { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
