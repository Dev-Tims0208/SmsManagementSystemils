using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TryLogin.Models;
using TryLogin.ViewModel;

namespace TryLogin.Controllers
{
    public class GroupMessageController : Controller
    {
        ilsEntities Db = new ilsEntities();
        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }
        // GET: Phonebooks
        public ActionResult Index()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }

            var drafts = Db.Drafts.ToList();


            return View(drafts);

        }
        public ActionResult Create()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            var drafts = Db.Drafts.ToList();
            var vm = new GroupMessageVM()
            {
                DraftList = drafts
            };
            return View("Create", vm);
        }
        public ActionResult Save(Draft draft)
        {
            if (draft.draftID == 0)
            {

                draft.Sendto = draft.Sendto;
                draft.msg = draft.msg;
                Db.Drafts.Add(draft);
            }

            Db.SaveChanges();
            return RedirectToAction("Index", "Drafts");
        }
    }
}
