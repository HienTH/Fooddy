using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodShop.CSDL;
using FoodShop.Models;

namespace FoodShop.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/
        Fooddy db = new Fooddy();
        //Lay gio hang
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lsGioHang = Session["GioHang"] as List<GioHang>;
            if (lsGioHang == null)
            {
                lsGioHang = new List<GioHang>();
                Session["GioHang"] = lsGioHang;
            }
            return lsGioHang;
        }

        //Them gio hang
        public ActionResult ThemGioHang(string MaSach, string strURL)
        {
            tblFood food = db.tblFoods.SingleOrDefault( n => n.ID == MaSach);
            if(food == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // Lay ra session gio hang
            List<GioHang> lstGioHang = LayGioHang();
            //Kiem tra sacsh nay da ton tai trong session[giohang] chua
            GioHang sanpham = lstGioHang.Find(n => n.MaSP == MaSach);
            if(sanpham == null)
            {
                sanpham = new GioHang(MaSach);
                //Add sản phẩm mới vào list
                lstGioHang.Add(sanpham);
                return Redirect(strURL);
            }
            else
            {
                sanpham.Soluong++;
                return Redirect(strURL);
            }
        }

        //CAp nhat gio hang
        public ActionResult CapNhatGioHang(string MaSach, FormCollection f)
        {
            //Kiem tra MaSP
            tblFood food = db.tblFoods.SingleOrDefault(n=>n.ID==MaSach);
            if(food == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // Lay gio hang ra tu Session
            List<GioHang> lstGioHang = LayGioHang();
            //Ktra xem san pham co ton tai trong gio hang k?
            GioHang sanpham = lstGioHang.Find(n => n.MaSP == MaSach);
            if(sanpham!=null)
            {
                sanpham.Soluong = int.Parse(f["txtSoLuong"].ToString());
            }
            return View("GioHang");
        }

        // Xoa Gio Hang
        public ActionResult XoaGioHang(string Masach)
        {
            //Kiem tra MaSP
            tblFood food = db.tblFoods.SingleOrDefault(n => n.ID == Masach);
            if (food == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // Lay gio hang ra tu Session
            List<GioHang> lstGioHang = LayGioHang();
            //Ktra xem san pham co ton tai trong gio hang k?
            GioHang sanpham = lstGioHang.Find(n => n.MaSP == Masach);
            if (sanpham != null)
            {
                lstGioHang.RemoveAll(n => n.MaSP == Masach);
            }
            if(lstGioHang.Count == 0)
            {
                return RedirectToAction("TrangChu", "Home");
            }
            return RedirectToAction("GioHang");
        }
        //Xay dung trang gio hang
        public ActionResult GioHang()
        {
            if(Session["GioHang"]==null)
            {
                return RedirectToAction("TrangChu", "Home");
            }
            List<GioHang> lstGioHag = LayGioHang();
            return View(lstGioHag);
        }
        //Tính tổng số lượng
        private double TongSoLuong()
        {
            int TongSoLuong = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if(lstGioHang != null)
            {
                TongSoLuong = lstGioHang.Sum(n => n.Soluong);
            }
            return TongSoLuong;
        }
        //Tính tổng tiền
        private double TongTien()
        {
            double Tongtien = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                Tongtien = lstGioHang.Sum(n => n.Thanhtien);
            }
            return Tongtien;    
        }
	}
}