using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShop.CSDL
{
    public class Group_Index
    {
        public List<tblCategory> LsCategory { get; set; }
        public List<tblFood> LsFood { get; set; }
        public List<tblFood> LsFoodMain { get; set; }
        public List<tblSupplier> LsSupply { get; set; }
        public List<tblCustomer> LSCustomer { get; set; }
    }
}