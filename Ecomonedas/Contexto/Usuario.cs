//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Contexto
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            this.Centro_Acopio = new HashSet<Centro_Acopio>();
            this.Enc_CanjeoMaterial = new HashSet<Enc_CanjeoMaterial>();
            this.Cupon = new HashSet<Cupon>();
        }
    
        public string Correo_Electronico { get; set; }
        public string Nombre { get; set; }
        public string Apellido_Paterno { get; set; }
        public string Apellido_Materno { get; set; }
        public string Dirección { get; set; }
        public string Contrasena { get; set; }
        public Nullable<decimal> Telefono { get; set; }
        public Nullable<decimal> ID_Rol { get; set; }
        public bool Estado { get; set; }
    
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
