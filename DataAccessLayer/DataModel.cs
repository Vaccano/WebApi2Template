namespace DataAccessLayer
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DataModel : DbContext
    {
        public DataModel()
            : base("name=DataModel")
        {}

        public virtual DbSet<Origin> Origins { get; set; }
        public virtual DbSet<State> States { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Origin>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<Origin>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Origin>()
                .Property(e => e.City)
                .IsUnicode(false);
            
            modelBuilder.Entity<State>()
                .Property(e => e.Abbreviation)
                .IsUnicode(false);

            modelBuilder.Entity<State>()
                .Property(e => e.Name)
                .IsUnicode(false);

            //modelBuilder.Entity<State>()
            //    .HasMany(e => e.Origins)
            //    .WithRequired(e => e.State)
            //    .WillCascadeOnDelete(false);
        }
    }
}
