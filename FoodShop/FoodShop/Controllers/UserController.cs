using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodShop.Models;
using FoodShop.CSDL;
using FoodShop.Common;

namespace FoodShop.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/
        Fooddy model = new Fooddy();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string txtuser, string txtpass)
        {
            if(txtuser.Trim() == "" || txtpass.Trim() == "")
            {
                ModelState.AddModelError("Thông Báo", "Bạn nhập thiếu thông tin");
                return RedirectToAction("Index", "User");
            }
//            tblUser us = new tblUser();
//            us.Username = txtuser;
//            us.Password = txtpass;
            ///us.Password = Encryp.MD5Hash(txtpass);

            tblUser uss = model.tblUsers.Find(txtuser);
            if(uss != null && uss.Password == txtpass)
            {  
                if ("admin".Equals(uss.Username) && "admin".Equals(uss.Password))
                {
                    Session["TaiKhoan"] = uss;
                    return RedirectToAction("Index", "AD");
                }
                Session["TaiKhoan"] = uss;
                ViewBag.name = uss.Username;
                return RedirectToAction("Main", "Food");
            }
            else
            {
                ModelState.AddModelError("Thông Báo", "Không đúng tài khoản hoặc mật khẩu");
                return RedirectToAction("Index", "User");
            }
            return View("Index");
        }

        public ActionResult SignIn(User us)
        {
            List<tblUser> lsUser = new List<tblUser>();
            lsUser = model.Database.SqlQuery<tblUser>(@"select * from tblUser").ToList();
            
            return RedirectToAction("Index", "Food");
        }

        public ActionResult SignInN()
        {
            return View();
        }
	}
}