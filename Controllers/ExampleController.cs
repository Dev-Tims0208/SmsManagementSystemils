using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TryLogin.Models;
namespace TryLogin.Controllers
{
    public class ExampleController : Controller
    {
        ilsEntities Db = new ilsEntities();

        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }
    
        // GET: Example
        public ActionResult Index()
        {




            return View(); 
        }

        public ActionResult Create()
        {



            return View();
        }
   
    }

}