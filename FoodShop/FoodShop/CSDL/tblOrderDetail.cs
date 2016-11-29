namespace FoodShop.CSDL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tblOrderDetail
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(50)]
        public string OrdersID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string FoodId { get; set; }

        public int Quantity { get; set; }

        public double UnitPrice { get; set; }

        public double Total { get; set; }

        public virtual tblFood tblFood { get; set; }

        public virtual tblOrder tblOrder { get; set; }
    }
}
