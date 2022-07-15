using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TryLogin.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            if ((int)Session["Role_Id"] != 1)
            {
                return RedirectToAction("logout", "Account");
            }
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            if ((int)Session["Role_Id"] != 1)
            {
                return RedirectToAction("logout", "Account");
            }
            return View();
        }

        public ActionResult Contact()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            if ((int)Session["Role_Id"] != 1)
            {
                return RedirectToAction("logout", "Account");
            }
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}