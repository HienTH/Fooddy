using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FoodShop.CSDL;

namespace FoodShop.Models
{
    public class GioHang
    {
        Fooddy db = new Fooddy();

        public string MaSP { get; set; }
        public string TenSP { get; set; }
        public int Soluong { get; set; }
        public double Dongia { get; set; }
        public string Hinhanh { get; set; }
        public double Thanhtien
        {
            get { return Soluong * Dongia; }
        }

        // Hàm tạo giỏ hàng
        public GioHang(string ID)
        {
            MaSP = ID;
            tblFood FOOD = db.tblFoods.Single(n => n.ID == MaSP);
            TenSP = FOOD.Name;
            Soluong = 1;
            Dongia = FOOD.UnitPrice;
            Hinhanh = FOOD.Image;
        }
    }
}