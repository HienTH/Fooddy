namespace FoodShop.CSDL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblFood")]
    public partial class tblFood
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblFood()
        {
            tblComments = new HashSet<tblComment>();
            tblOrderDetails = new HashSet<tblOrderDetail>();
        }

        [StringLength(50)]
        public string ID { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string UnitBrief { get; set; }

        public double UnitPrice { get; set; }

        [Required]
        [StringLength(50)]
        public string Image { get; set; }

        [Column(TypeName = "date")]
        public DateTime DateFood { get; set; }

        public bool Available { get; set; }

        public string Description { get; set; }

        [Required]
        [StringLength(50)]
        public string CategoryId { get; set; }

        [Required]
        [StringLength(50)]
        public string SupplierId { get; set; }

        public int Quantity { get; set; }

        public double Discount { get; set; }

        public bool Latest { get; set; }

        public int Views { get; set; }

        public virtual tblCategory tblCategory { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblComment> tblComments { get; set; }

        public virtual tblSupplier tblSupplier { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblOrderDetail> tblOrderDetails { get; set; }
    }
}
