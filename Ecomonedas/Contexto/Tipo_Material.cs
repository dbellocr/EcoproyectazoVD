namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Tipo_Material
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tipo_Material()
        {
            Enc_CanjeoMaterial = new HashSet<Enc_CanjeoMaterial>();
        }

        [Column(TypeName = "numeric")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal ID { get; set; }

        [StringLength(30)]
        public string Nombre { get; set; }

        [StringLength(50)]
        public string Imagen_Path { get; set; }

        [Column(TypeName = "money")]
        public decimal? Precio { get; set; }

        [StringLength(10)]
        public string ID_Color { get; set; }

        public int? Estado { get; set; }

        public virtual Color Color { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Enc_CanjeoMaterial> Enc_CanjeoMaterial { get; set; }
    }
}
