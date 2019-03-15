namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Enc_CanjeoMaterial
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Enc_CanjeoMaterial()
        {
            Tipo_Material = new HashSet<Tipo_Material>();
        }

        [Column(TypeName = "numeric")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal ID { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? ID_CentroAcopio { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? Cantidad { get; set; }
        [Column(TypeName = "numeric")]
        public int? CantidadMaterial { get; set; }

        public DateTime? Fecha { get; set; }

        [StringLength(30)]
        public string ID_Usuario { get; set; }

        public virtual Centro_Acopio Centro_Acopio { get; set; }

        public virtual Usuario Usuario { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tipo_Material> Tipo_Material { get; set; }
    }
}
