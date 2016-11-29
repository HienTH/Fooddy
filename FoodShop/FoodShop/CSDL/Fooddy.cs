namespace FoodShop.CSDL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Fooddy : DbContext
    {
        public Fooddy()
            : base("name=Fooddy")
        {
        }

        public virtual DbSet<tblCategory> tblCategories { get; set; }
        public virtual DbSet<tblComment> tblComments { get; set; }
        public virtual DbSet<tblCustomer> tblCustomers { get; set; }
        public virtual DbSet<tblFood> tblFoods { get; set; }
        public virtual DbSet<tblOrderDetail> tblOrderDetails { get; set; }
        public virtual DbSet<tblOrder> tblOrders { get; set; }
        public virtual DbSet<tblSupplier> tblSuppliers { get; set; }
        public virtual DbSet<tblUser> tblUsers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tblCategory>()
                .HasMany(e => e.tblFoods)
                .WithRequired(e => e.tblCategory)
                .HasForeignKey(e => e.CategoryId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblCustomer>()
                .HasMany(e => e.tblComments)
                .WithRequired(e => e.tblCustomer)
                .HasForeignKey(e => e.CustomerID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblCustomer>()
                .HasMany(e => e.tblOrders)
                .WithRequired(e => e.tblCustomer)
                .HasForeignKey(e => e.CustomerId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblCustomer>()
                .HasMany(e => e.tblUsers)
                .WithRequired(e => e.tblCustomer)
                .HasForeignKey(e => e.CustomerID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblFood>()
                .HasMany(e => e.tblComments)
                .WithRequired(e => e.tblFood)
                .HasForeignKey(e => e.FoodID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblFood>()
                .HasMany(e => e.tblOrderDetails)
                .WithRequired(e => e.tblFood)
                .HasForeignKey(e => e.FoodId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblOrder>()
                .HasMany(e => e.tblOrderDetails)
                .WithRequired(e => e.tblOrder)
                .HasForeignKey(e => e.OrdersID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblSupplier>()
                .HasMany(e => e.tblFoods)
                .WithRequired(e => e.tblSupplier)
                .HasForeignKey(e => e.SupplierId)
                .WillCascadeOnDelete(false);
        }
    }
}
