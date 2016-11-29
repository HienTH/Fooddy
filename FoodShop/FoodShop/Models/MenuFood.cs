using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodShop.Models
{
    public class MenuFood
    {
        public int ID { get; set; }
        public string NameFood { get; set; }
        public float PriceFood { get; set; }
        public string InfoFood { get; set; }
        public int VoteFood { get; set; }
        public bool Check { get; set; }
        public string URL { get; set; }
    }
}