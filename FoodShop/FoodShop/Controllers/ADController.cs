using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodShop.Models;

namespace FoodShop.Controllers
{
    public class ADController : Controller
    {
        GMenuFood GMenu = new GMenuFood();
        //
        // GET: /AD/
        public ActionResult Index()
        {
            List<MenuFood> lsmenu = new List<MenuFood>();
            List<CommentFood> lscomment = new List<CommentFood>();
            MenuFood menu = new MenuFood();
            menu.ID = 1;
            menu.NameFood = "Phở Bò Nam Định";
            menu.PriceFood = 25;
            menu.VoteFood = 1000;
            menu.InfoFood = "Được làm từ làng nghề gia truyền";
            lsmenu.Add(menu);
            MenuFood menu1 = new MenuFood();
            menu1.ID = 2;
            menu1.NameFood = "Bún Bò Huế";
            menu1.PriceFood = 35;
            menu1.VoteFood = 500;
            menu1.InfoFood = "Đầu bếp là người Huế gốc";
            lsmenu.Add(menu1);
            MenuFood menu2 = new MenuFood();
            menu2.ID = 3;
            menu2.NameFood = "Vịt cỏ Vân Đình";
            menu2.PriceFood = 120;
            menu2.VoteFood = 1000;
            menu2.InfoFood = "Đảm bảo đúng mùi vị của thịt, nước chấm";
            lsmenu.Add(menu2);
            MenuFood menu3 = new MenuFood();
            menu3.ID = 4;
            menu3.NameFood = "Mỳ cay";
            menu3.PriceFood = 40;
            menu3.VoteFood = 100;
            menu3.InfoFood = "Có hẳn 7 level cay cho các bạn lựa chọn";
            lsmenu.Add(menu3);
            MenuFood menu4 = new MenuFood();
            menu4.ID = 5;
            menu4.NameFood = "Bún đậu mắm tôm";
            menu4.PriceFood = 30;
            menu4.VoteFood = 3000;
            menu4.InfoFood = "Có thêm lòng rán";
            lsmenu.Add(menu4);
            MenuFood menu5 = new MenuFood();
            menu5.ID = 6;
            menu5.NameFood = "Cá hấp bia";
            menu5.PriceFood = 60;
            menu5.VoteFood = 160;
            menu5.InfoFood = "Ngon hương vị thôn quê";
            lsmenu.Add(menu5);

            GMenu.LsMenuFood = lsmenu;
            GMenu.LsCommentFood = lscomment;

            return View(GMenu);
        }

        public ActionResult Delete(string Name)
        {
//            string name = f["txtSearch"].ToString();
            List<MenuFood> lsmenu = new List<MenuFood>();
            List<CommentFood> lscomment = new List<CommentFood>();
            MenuFood menu = new MenuFood();
            menu.ID = 1;
            menu.NameFood = "Phở Bò Nam Định";
            menu.PriceFood = 25;
            menu.VoteFood = 1000;
            menu.InfoFood = "Được làm từ làng nghề gia truyền";
            menu.URL = "/Content/images/p1.jpg";
            lsmenu.Add(menu);
            MenuFood menu1 = new MenuFood();
            menu1.ID = 2;
            menu1.NameFood = "Bún Bò Huế";
            menu1.PriceFood = 35;
            menu1.VoteFood = 500;
            menu1.InfoFood = "Đầu bếp là người Huế gốc";
            menu1.URL = "/Content/images/p2.jpg";
            lsmenu.Add(menu1);
            MenuFood menu2 = new MenuFood();
            menu2.ID = 3;
            menu2.NameFood = "Vịt cỏ Vân Đình";
            menu2.PriceFood = 120;
            menu2.VoteFood = 1000;
            menu2.InfoFood = "Đảm bảo đúng mùi vị của thịt, nước chấm";
            menu2.URL = "/Content/images/p3.jpg";
            lsmenu.Add(menu2);
            MenuFood menu3 = new MenuFood();
            menu3.ID = 4;
            menu3.NameFood = "Mỳ cay";
            menu3.PriceFood = 40;
            menu3.VoteFood = 100;
            menu3.InfoFood = "Có hẳn 7 level cay cho các bạn lựa chọn";
            menu3.URL = "/Content/images/p3.jpg";
            lsmenu.Add(menu3);
            MenuFood menu4 = new MenuFood();
            menu4.ID = 5;
            menu4.NameFood = "Bún đậu mắm tôm";
            menu4.PriceFood = 30;
            menu4.VoteFood = 3000;
            menu4.InfoFood = "Có thêm lòng rán";
            menu4.URL = "/Content/images/p4.jpg";
            lsmenu.Add(menu4);
            MenuFood menu5 = new MenuFood();
            menu5.ID = 6;
            menu5.NameFood = "Cá hấp bia";
            menu5.PriceFood = 60;
            menu5.VoteFood = 160;
            menu5.InfoFood = "Ngon hương vị thôn quê";
            menu5.URL = "/Content/images/p5.jpg";
            lsmenu.Add(menu5);

            GMenu.LsMenuFood = lsmenu;
            GMenu.LsCommentFood = lscomment;

            for (int i = 0; i < lsmenu.Count; i++)
            {
                if (lsmenu[i].NameFood == Name)
                {
                    lsmenu.Remove(lsmenu[i]);
                    return View(GMenu);
                }
            }
            return View();
        }

        public ActionResult Edit(string Name)
        {
            List<MenuFood> lsmenu = new List<MenuFood>();
            List<CommentFood> lscomment = new List<CommentFood>();
            MenuFood menu = new MenuFood();
            menu.ID = 1;
            menu.NameFood = "Phở Bò Nam Định";
            menu.PriceFood = 25;
            menu.VoteFood = 1000;
            menu.InfoFood = "Được làm từ làng nghề gia truyền";
            menu.URL = "/Content/images/p1.jpg";
            lsmenu.Add(menu);
            MenuFood menu1 = new MenuFood();
            menu1.ID = 2;
            menu1.NameFood = "Bún Bò Huế";
            menu1.PriceFood = 35;
            menu1.VoteFood = 500;
            menu1.InfoFood = "Đầu bếp là người Huế gốc";
            menu1.URL = "/Content/images/p2.jpg";
            lsmenu.Add(menu1);
            MenuFood menu2 = new MenuFood();
            menu2.ID = 3;
            menu2.NameFood = "Vịt cỏ Vân Đình";
            menu2.PriceFood = 120;
            menu2.VoteFood = 1000;
            menu2.InfoFood = "Đảm bảo đúng mùi vị của thịt, nước chấm";
            menu2.URL = "/Content/images/p3.jpg";
            lsmenu.Add(menu2);
            MenuFood menu3 = new MenuFood();
            menu3.ID = 4;
            menu3.NameFood = "Mỳ cay";
            menu3.PriceFood = 40;
            menu3.VoteFood = 100;
            menu3.InfoFood = "Có hẳn 7 level cay cho các bạn lựa chọn";
            menu3.URL = "/Content/images/p3.jpg";
            lsmenu.Add(menu3);
            MenuFood menu4 = new MenuFood();
            menu4.ID = 5;
            menu4.NameFood = "Bún đậu mắm tôm";
            menu4.PriceFood = 30;
            menu4.VoteFood = 3000;
            menu4.InfoFood = "Có thêm lòng rán";
            menu4.URL = "/Content/images/p4.jpg";
            lsmenu.Add(menu4);
            MenuFood menu5 = new MenuFood();
            menu5.ID = 6;
            menu5.NameFood = "Cá hấp bia";
            menu5.PriceFood = 60;
            menu5.VoteFood = 160;
            menu5.InfoFood = "Ngon hương vị thôn quê";
            menu5.URL = "/Content/images/p5.jpg";
            lsmenu.Add(menu5);

            GMenu.LsMenuFood = lsmenu;
            GMenu.LsCommentFood = lscomment;

            for (int i = 0; i < lsmenu.Count; i++)
            {
                if(lsmenu[i].NameFood==Name)
                {
                    GMenuFood smn = new GMenuFood();
                    List<MenuFood> listmenu = new List<MenuFood>();
                    smn.LsMenuFood = listmenu;
                    MenuFood mn = new MenuFood();
                    mn.ID = lsmenu[i].ID;
                    mn.NameFood = lsmenu[i].NameFood;
                    mn.PriceFood = lsmenu[i].PriceFood;
                    mn.VoteFood = lsmenu[i].VoteFood;
                    mn.InfoFood = lsmenu[i].InfoFood;
                    mn.URL = lsmenu[i].URL;
                    listmenu.Add(mn);
                    @ViewBag.index = i;
                    return View(smn);
                }
            }
            return View();
        }

        public ActionResult SingleEdit(string txtname, string txtprice, string txtinfo, string txtid)
        {
            List<MenuFood> lsmenu = new List<MenuFood>();
            List<CommentFood> lscomment = new List<CommentFood>();
            MenuFood menu = new MenuFood();
            menu.ID = 1;
            menu.NameFood = "Phở Bò Nam Định";
            menu.PriceFood = 25;
            menu.VoteFood = 1000;
            menu.InfoFood = "Được làm từ làng nghề gia truyền";
            menu.URL = "/Content/images/p1.jpg";
            lsmenu.Add(menu);
            MenuFood menu1 = new MenuFood();
            menu1.ID = 2;
            menu1.NameFood = "Bún Bò Huế";
            menu1.PriceFood = 35;
            menu1.VoteFood = 500;
            menu1.InfoFood = "Đầu bếp là người Huế gốc";
            menu1.URL = "/Content/images/p2.jpg";
            lsmenu.Add(menu1);
            MenuFood menu2 = new MenuFood();
            menu2.ID = 3;
            menu2.NameFood = "Vịt cỏ Vân Đình";
            menu2.PriceFood = 120;
            menu2.VoteFood = 1000;
            menu2.InfoFood = "Đảm bảo đúng mùi vị của thịt, nước chấm";
            menu2.URL = "/Content/images/p3.jpg";
            lsmenu.Add(menu2);
            MenuFood menu3 = new MenuFood();
            menu3.ID = 4;
            menu3.NameFood = "Mỳ cay";
            menu3.PriceFood = 40;
            menu3.VoteFood = 100;
            menu3.InfoFood = "Có hẳn 7 level cay cho các bạn lựa chọn";
            menu3.URL = "/Content/images/p3.jpg";
            lsmenu.Add(menu3);
            MenuFood menu4 = new MenuFood();
            menu4.ID = 5;
            menu4.NameFood = "Bún đậu mắm tôm";
            menu4.PriceFood = 30;
            menu4.VoteFood = 3000;
            menu4.InfoFood = "Có thêm lòng rán";
            menu4.URL = "/Content/images/p4.jpg";
            lsmenu.Add(menu4);
            MenuFood menu5 = new MenuFood();
            menu5.ID = 6;
            menu5.NameFood = "Cá hấp bia";
            menu5.PriceFood = 60;
            menu5.VoteFood = 160;
            menu5.InfoFood = "Ngon hương vị thôn quê";
            menu5.URL = "/Content/images/p5.jpg";
            lsmenu.Add(menu5);

            GMenu.LsMenuFood = lsmenu;
            GMenu.LsCommentFood = lscomment;

            for (int i = 0; i < lsmenu.Count; i++)
            {
                if (lsmenu[i].ID == int.Parse(txtid))
                {
                    lsmenu[i].NameFood = txtname;
                    lsmenu[i].PriceFood = int.Parse(txtprice);
                    lsmenu[i].InfoFood = txtinfo;

                    return View("Index",GMenu);
                }
            }
            return View();
        }
	}
}