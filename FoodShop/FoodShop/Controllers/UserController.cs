using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodShop.Models;

namespace FoodShop.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/
        public ActionResult Login()
        {
            List<User> lsUser = new List<User>();
            User us = new User();
            us.FullName = "HienHD";
          
            us.Email = "haduchien@gmail.com";
            us.Password = "12345";
            lsUser.Add(us);
                
            User us1 = new User();
            us1.FullName = "ThieuDV";
            us1.Email = "doanvanthieu@gmail.com";
            us1.Password = "12345";
            lsUser.Add(us1);

            
            return View();
        }

        public ActionResult SignIn(User us)
        {
            //string txtname,string txtmail,string txtpass
            List<User> lsUser = new List<User>();
            User us0 = new User();
            us0.FullName = "HienHD";
            us0.Email = "haduchien@gmail.com";
            us0.Password = "12345";
            lsUser.Add(us0);
            User us1 = new User();
            us1.FullName = "ThieuDV";
            us1.Email = "doanvanthieu@gmail.com";
            us1.Password = "12345";
            lsUser.Add(us1);

            if( us.FullName!="" && us.Password!="" )
            {
            //User us = new User();
            //us.FullName = txtname;
            //us.Email = txtmail;
            //us.Password = txtpass;
            lsUser.Add(us);
            }
            return RedirectToAction("Index", "Food");
        }

        public ActionResult SignInN()
        {
            return View();
        }

        public ActionResult Check(string txtuser, string txtpass)
        {
            List<User> lsUser = new List<User>();
            User us0 = new User();
            us0.FullName = "HienHD";
            us0.Email = "haduchien@gmail.com";
            us0.Password = "12345";
            lsUser.Add(us0);
            User us1 = new User();
            us1.FullName = "ThieuDV";
            us1.Email = "doanvanthieu@gmail.com";
            us1.Password = "12345";
            lsUser.Add(us1);

            if(txtuser=="admin" && txtpass=="admin")
            {
                Session["FullName"] = "admin";
                return RedirectToAction("Index", "AD");
            }

            for (int i = 0; i < lsUser.Count;i++ )
            {
                if(txtuser==lsUser[i].FullName && txtpass==lsUser[i].Password)
                {
                    Session["FullName"] = lsUser[i].FullName;
                    return RedirectToAction("Index", "Food");
                }
            }
            return View("Login");
        }
	}
}