namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Centro_Acopio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Centro_Acopio()
        {
            Enc_CanjeoMaterial = new HashSet<Enc_CanjeoMaterial>();
        }

        [Column(TypeName = "numeric")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal ID { get; set; }

        [StringLength(30)]
        public string Nombre { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? ID_Provincia { get; set; }

        [StringLength(150)]
        public string Direccion_Exacta { get; set; }

        [StringLength(30)]
        public string ID_Usuario { get; set; }

        public bool? Estado { get; set; }

        public virtual Provincia Provincia { get; set; }

        public virtual Usuario Usuario { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Enc_CanjeoMaterial> Enc_CanjeoMaterial { get; set; }
    }
}
