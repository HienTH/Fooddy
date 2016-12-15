using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodShop.Models;
using FoodShop.CSDL;

namespace FoodShop.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/
        Fooddy model = new Fooddy();
        public ActionResult Login()
        {
            return View();
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

        public ActionResult Check(string txtuser, string txtpass)
        {
            List<tblUser> lsUser = new List<tblUser>();

            lsUser = model.Database.SqlQuery<tblUser>(@"select * from tblUser").ToList();
            
            if(txtuser=="admin" && txtpass=="admin")
            {
                Session["FullName"] = "admin";
                return RedirectToAction("Index", "AD");
            }

            for (int i = 0; i < lsUser.Count;i++ )
            {
                if(txtuser==lsUser[i].Username && txtpass==lsUser[i].Password)
                {
                    Session["FullName"] = lsUser[i].Username;
                    ViewBag.name = txtuser;
                    return RedirectToAction("Index", "Food");
                }
            }
            return View("Login");
        }
	}
}