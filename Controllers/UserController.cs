using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TryLogin.Controllers
{
  
    public class UserController : Controller
    {
        
        public ActionResult Index()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            return View();
        }

        public ActionResult SecondPage()
        {
            return View();
        }
    }
}