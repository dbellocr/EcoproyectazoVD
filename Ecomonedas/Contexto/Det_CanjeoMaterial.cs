namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Det_CanjeoMaterial
    {
        [Key]
        [Column(TypeName = "numeric")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal ID_Detalle { get; set; }

        [Column(TypeName = "numeric")]
        public decimal ID_Canjeo { get; set; }

        public int Cantidad { get; set; }


        [Column(TypeName = "numeric")]
        public decimal ID_Material { get; set; }

        public virtual Enc_CanjeoMaterial Enc_CanjeoMaterial { get; set; }

        public virtual Tipo_Material Tipo_Material { get; set; }
    }
}
