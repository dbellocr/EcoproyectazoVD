namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Canjeo_Cupon
    {
        public int ID { get; set; }

        [Required]
        [StringLength(30)]
        public string ID_Usuario { get; set; }

        [Column(TypeName = "numeric")]
        public decimal ID_Cupon { get; set; }

        public virtual Cupon Cupon { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
