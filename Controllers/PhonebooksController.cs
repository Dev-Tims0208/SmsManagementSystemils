using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TryLogin.Models;
using TryLogin.ViewModel;

namespace TryLogin.Controllers
{
    public class PhonebooksController : Controller
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
            var phonebook = Db.CgppPhonebooks.OrderByDescending(x => x.PhoneId).ToList();

            var sess_id = (int)Session["LoginID"];
            var userID = Db.Users.FirstOrDefault(o => o.LoginID == sess_id)?.UserID;
            if ((int)Session["Role_Id"] != 1)
            {
                phonebook = phonebook.Where(d => d.UsersId == userID).ToList();
            }

            return View(phonebook);
        }
        public ActionResult Create()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            var phoneb = Db.CgppPhonebooks.ToList();
            var vm = new PhonebookVM()
            {
                PhonebookList = phoneb
            };
            return View("Create", vm);
        }
        public ActionResult Edit(int id)
        {
            var phonebook = Db.CgppPhonebooks.SingleOrDefault(c => c.PhoneId == id); //EDIT METHOD
            if (phonebook == null)
                return HttpNotFound();
            var viewModel = new PhonebookVM()
            {
                Phonebook = phonebook,
                PhonebookList = Db.CgppPhonebooks.ToList()

            };

            return View("Edit", viewModel);
        }
        public ActionResult Save(CgppPhonebook phonebook)
        {
            if (phonebook.PhoneId == 0)
            {
                var loginid = (int)Session["LoginID"];
   
                phonebook.OfficeId = Db.Users.FirstOrDefault(o => o.LoginID == loginid)?.OfficeID;
                phonebook.DivisionId = Db.Users.FirstOrDefault(o => o.LoginID == loginid)?.DivisionID;
                phonebook.UsersId = Db.Users.FirstOrDefault(o => o.LoginID == loginid)?.UserID;

                phonebook.DateAdded = DateTime.Now;
                Db.CgppPhonebooks.Add(phonebook);
            }
            else
            {
                var usersInDb = Db.CgppPhonebooks.Single(c => c.PhoneId == phonebook.PhoneId);

                usersInDb.PhoneId = phonebook.PhoneId;
                usersInDb.CellphoneNum = phonebook.CellphoneNum;
                usersInDb.FullName = phonebook.FullName;
                usersInDb.DateAdded = DateTime.Now;
                usersInDb.Position = phonebook.Position;
                usersInDb.Remarks = phonebook.Remarks;
                usersInDb.CgppOffice.Name = phonebook?.CgppOffice.Name;
                usersInDb.CgppDivision.Name = phonebook.CgppDivision.Name;
                usersInDb.User.Name = phonebook.User.Name;
            }

            Db.SaveChanges();
            return RedirectToAction("Index", "Phonebooks");
        }

    }
}