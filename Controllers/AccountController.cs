using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TryLogin.Models;

namespace TryLogin.Controllers
{
    public class AccountController : Controller
    {
        ilsEntities Db = new ilsEntities();

        public ActionResult Login()
    {
        return View();
        ViewBag.Message = "";
    }
        [HttpPost]
    public ActionResult Login(Login log)      
    {
        var result = Db.Logins.Where(a => a.Username == log.Username && a.Password == log.Password).ToList();
        if (result.Count() > 0)
        {

            Session["LoginID"] = result[0].LoginID;
            Session["Role_Id"] = result[0].RoleID;
            FormsAuthentication.SetAuthCookie(result[0].Username, false);

            //IF admin
            if (result[0].RoleID == 1)
            {
                return RedirectToAction("Index" ,"Admin");
            }
            //IF USER
            if (result[0].RoleID == 2)
            {
                return RedirectToAction("Index", "User");
            }
                
            }
        else
        {
            ViewBag.Message = "Incorrect Username or Password";
        }

        return View(log);
            }
        public ActionResult Logout()
        {
            Session["LoginID"] = null;
            Session["Role_Id"] = null;
            FormsAuthentication.SignOut();
            return Redirect("Login");
        }

    }


    }
