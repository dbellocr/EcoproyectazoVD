namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Enc_CanjeoMaterial
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Enc_CanjeoMaterial()
        {
            Det_CanjeoMaterial = new HashSet<Det_CanjeoMaterial>();
        }

        [Column(TypeName = "numeric")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal ID { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? ID_CentroAcopio { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? Cantidad_Total { get; set; }

        public DateTime? Fecha { get; set; }

        [StringLength(30)]
        public string ID_Usuario { get; set; }

        public virtual Centro_Acopio Centro_Acopio { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Det_CanjeoMaterial> Det_CanjeoMaterial { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
