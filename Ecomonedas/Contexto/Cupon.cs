namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cupon")]
    public partial class Cupon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cupon()
        {
            Usuario = new HashSet<Usuario>();
        }

        [Column(TypeName = "numeric")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal ID { get; set; }

        [StringLength(50)]
        public string Nombre { get; set; }

        [StringLength(100)]
        public string Descripcion { get; set; }

        [StringLength(80)]
        public string ImagenPath { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? Cantidad_Ecomonedas { get; set; }
        public bool? Estado { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}
