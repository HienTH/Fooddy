namespace FoodShop.CSDL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tblComment
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [Required]
        [StringLength(50)]
        public string FoodID { get; set; }

        [Required]
        [StringLength(50)]
        public string CustomerID { get; set; }

        [Required]
        public string CommentDetails { get; set; }

        public virtual tblCustomer tblCustomer { get; set; }

        public virtual tblFood tblFood { get; set; }
    }
}
