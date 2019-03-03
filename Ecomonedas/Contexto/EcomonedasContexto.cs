namespace Contexto
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EcomonedasContexto : DbContext
    {
        public EcomonedasContexto()
            : base("name=EcomonedasContexto")
        {
        }

        public virtual DbSet<Billetera_Virtual> Billetera_Virtual { get; set; }
        public virtual DbSet<Centro_Acopio> Centro_Acopio { get; set; }
        public virtual DbSet<Color> Color { get; set; }
        public virtual DbSet<Cupon> Cupon { get; set; }
        public virtual DbSet<Enc_CanjeoMaterial> Enc_CanjeoMaterial { get; set; }
        public virtual DbSet<Provincia> Provincia { get; set; }
        public virtual DbSet<Rol> Rol { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Tipo_Material> Tipo_Material { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Billetera_Virtual>()
                .Property(e => e.ID_Usuario)
                .IsUnicode(false);

            modelBuilder.Entity<Billetera_Virtual>()
                .Property(e => e.EcoMonedas_Disponibles)
                .HasPrecision(8, 0);

            modelBuilder.Entity<Billetera_Virtual>()
                .Property(e => e.EcoMonedas_Canjeadas)
                .HasPrecision(8, 0);

            modelBuilder.Entity<Billetera_Virtual>()
                .Property(e => e.EcoMonedas_Totales)
                .HasPrecision(8, 0);

            modelBuilder.Entity<Centro_Acopio>()
                .Property(e => e.ID)
                .HasPrecision(3, 0);

            modelBuilder.Entity<Centro_Acopio>()
                .Property(e => e.Nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Centro_Acopio>()
                .Property(e => e.ID_Provincia)
                .HasPrecision(2, 0);

            modelBuilder.Entity<Centro_Acopio>()
                .Property(e => e.Direccion_Exacta)
                .IsUnicode(false);

            modelBuilder.Entity<Centro_Acopio>()
                .Property(e => e.ID_Usuario)
                .IsUnicode(false);

            modelBuilder.Entity<Centro_Acopio>()
                .HasMany(e => e.Enc_CanjeoMaterial)
                .WithOptional(e => e.Centro_Acopio)
                .HasForeignKey(e => e.ID_CentroAcopio);

            modelBuilder.Entity<Color>()
                .Property(e => e.ID)
                .IsUnicode(false);

            modelBuilder.Entity<Color>()
                .Property(e => e.Descripcion)
                .IsUnicode(false);

            modelBuilder.Entity<Color>()
                .HasMany(e => e.Tipo_Material)
                .WithOptional(e => e.Color)
                .HasForeignKey(e => e.ID_Color);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.ID)
                .HasPrecision(4, 0);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.Nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.Descripcion)
                .IsUnicode(false);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.ImagenPath)
                .IsUnicode(false);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.Cantidad_Ecomonedas)
                .HasPrecision(6, 0);

            modelBuilder.Entity<Cupon>()
                .HasMany(e => e.Usuario)
                .WithMany(e => e.Cupon)
                .Map(m => m.ToTable("Canjeo_Cupon").MapLeftKey("ID_Cupon").MapRightKey("ID_Usuario"));

            modelBuilder.Entity<Enc_CanjeoMaterial>()
                .Property(e => e.ID)
                .HasPrecision(10, 0);

            modelBuilder.Entity<Enc_CanjeoMaterial>()
                .Property(e => e.ID_CentroAcopio)
                .HasPrecision(3, 0);

            modelBuilder.Entity<Enc_CanjeoMaterial>()
                .Property(e => e.Cantidad)
                .HasPrecision(4, 0);

            modelBuilder.Entity<Enc_CanjeoMaterial>()
                .Property(e => e.ID_Usuario)
                .IsUnicode(false);

            modelBuilder.Entity<Enc_CanjeoMaterial>()
                .HasMany(e => e.Tipo_Material)
                .WithMany(e => e.Enc_CanjeoMaterial)
                .Map(m => m.ToTable("Det_CanjeoMaterial").MapLeftKey("ID_Canjeo").MapRightKey("ID_Material"));

            modelBuilder.Entity<Provincia>()
                .Property(e => e.ID)
                .HasPrecision(2, 0);

            modelBuilder.Entity<Provincia>()
                .Property(e => e.Descripcion)
                .IsUnicode(false);

            modelBuilder.Entity<Provincia>()
                .HasMany(e => e.Centro_Acopio)
                .WithOptional(e => e.Provincia)
                .HasForeignKey(e => e.ID_Provincia);

            modelBuilder.Entity<Rol>()
                .Property(e => e.ID)
                .HasPrecision(2, 0);

            modelBuilder.Entity<Rol>()
                .Property(e => e.Descripcion)
                .IsUnicode(false);

            modelBuilder.Entity<Rol>()
                .HasMany(e => e.Usuario)
                .WithOptional(e => e.Rol)
                .HasForeignKey(e => e.ID_Rol);

            modelBuilder.Entity<Tipo_Material>()
                .Property(e => e.ID)
                .HasPrecision(3, 0);

            modelBuilder.Entity<Tipo_Material>()
                .Property(e => e.Nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Tipo_Material>()
                .Property(e => e.Imagen_Path)
                .IsUnicode(false);

            modelBuilder.Entity<Tipo_Material>()
                .Property(e => e.Precio)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Tipo_Material>()
                .Property(e => e.ID_Color)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Correo_Electronico)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Apellido_Paterno)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Apellido_Materno)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Dirección)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Contrasena)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Telefono)
                .HasPrecision(8, 0);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.ID_Rol)
                .HasPrecision(2, 0);

            modelBuilder.Entity<Usuario>()
                .HasOptional(e => e.Billetera_Virtual)
                .WithRequired(e => e.Usuario);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.Centro_Acopio)
                .WithOptional(e => e.Usuario)
                .HasForeignKey(e => e.ID_Usuario);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.Enc_CanjeoMaterial)
                .WithOptional(e => e.Usuario)
                .HasForeignKey(e => e.ID_Usuario);
        }
    }
}
