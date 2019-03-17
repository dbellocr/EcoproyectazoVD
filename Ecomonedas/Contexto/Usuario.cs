namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Usuario")]
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            Centro_Acopio = new HashSet<Centro_Acopio>();
            Enc_CanjeoMaterial = new HashSet<Enc_CanjeoMaterial>();
            Cupon = new HashSet<Cupon>();
        }

        [Key]
        [StringLength(30)]
        public string Correo_Electronico { get; set; }

        [StringLength(30)]
        public string Nombre { get; set; }

        [StringLength(30)]
        public string Apellido_Paterno { get; set; }

        [StringLength(30)]
        public string Apellido_Materno { get; set; }

        [StringLength(150)]
        public string Dirección { get; set; }

        [Required]
        [StringLength(16)]
        public string Contrasena { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? Telefono { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? ID_Rol { get; set; }

        public bool Estado { get; set; }

        public string NombreCompleto { get
            {

                return Nombre+ " " + Apellido_Materno+" " + Apellido_Paterno;
            }
        }

        public virtual Billetera_Virtual Billetera_Virtual { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Centro_Acopio> Centro_Acopio { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Enc_CanjeoMaterial> Enc_CanjeoMaterial { get; set; }

        public virtual Rol Rol { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cupon> Cupon { get; set; }
    }
}
