﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TryLogin.Models;
using TryLogin.ViewModel;

namespace TryLogin.Controllers
{

    public class ManageController : Controller
    {

        // GET: Manage
        ilsEntities Db = new ilsEntities();


        public string Index()
        {

            return "HELLO";
        }

        public ActionResult UserRegistration()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            if ((int)Session["Role_Id"] != 1)
            {
                return RedirectToAction("logout", "Account");
            }
            ViewBag.Offices = Db.CgppOffices.ToList();
            ViewBag.Division = Db.CgppDivisions.ToList();

            return View();
        }

        [HttpPost]
        public ActionResult UserRegistration(User userdet)
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            if ((int)Session["Role_Id"] != 1)
            {
                return RedirectToAction("logout", "Account");
            }
            if (ModelState.IsValid)
            {
                if (userdet.UserID == 0)
                {
                    Login log = new Login();
                    log.Username = userdet.UserName;
                    log.Password = userdet.Password;
                    log.RoleID = 2;
                    log.Isdeleted = false;
                    log.CreateOn = DateTime.Today.Date;
                    Db.Logins.Add(log);
                    userdet.LoginID = log.LoginID;//Db.Logins.Max(a => a.LoginID);
                    Db.Users.Add(userdet);
                    userdet.DateAdded = DateTime.Now;
                    userdet.FilePath = "/DefaultImage/city-hall.png";

                }
                else
                {
                    var usersInDb = Db.Users.Single(c => c.UserID == userdet.UserID);
                    usersInDb.Name = userdet.Name;
                    usersInDb.Address = userdet.Address;
                    usersInDb.DateAdded = DateTime.Now;
                    usersInDb.EmailID = userdet.EmailID;
                    usersInDb.CgppOffice.Name = userdet.CgppOffice.Name;
                    usersInDb.CgppDivision.Name = userdet.CgppDivision.Name;
                  
                }

                Db.SaveChanges();

                TempData["Message"] = "SAVE SUCCESSFULLY";

                return RedirectToAction("UsersList" , "Manage");
            }

         
            return View(userdet);
        }

        public JsonResult IsUsernameAvailble(string UserName)
        {
            return Json(!Db.Logins.Any(x => x.Username == UserName), JsonRequestBehavior.AllowGet);
        }

        public ActionResult UsersList()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            if ((int)Session["Role_Id"] != 1)
            {
                return RedirectToAction("logout", "Account");
            }
            var users = Db.Users.ToList();

            return View(users);
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var users = Db.Users.SingleOrDefault(c => c.UserID == id); 
            if (users == null)
                return HttpNotFound();
            var viewModel = new ManageVM()
            {
                OfficeList = Db.CgppOffices.ToList(),
                DivisionList = Db.CgppDivisions.ToList(),

                Officeid = users.OfficeID.HasValue ? users.OfficeID.Value : 0,
                Divisionid = users.DivisionID.HasValue ? users.DivisionID.Value : 0,
                Username = users.Login.Username,
                Name  = users.Name,
                Address = users.Address,
               EmailAddress = users.EmailID,
               Password = users.Login.Password,
               UserID = id,
               FilePath = users.FilePath,

            };

            return View("Edit", viewModel);

        }
        [HttpPost]
        public ActionResult Edit(ManageVM userdet)
        {
            if (ModelState.IsValid)
            {
                var usersInDb = Db.Users.Single(c => c.UserID == userdet.UserID);
                usersInDb.Name = userdet.Name;
                usersInDb.Address = userdet.Address;
                usersInDb.DateAdded = DateTime.Now;
                usersInDb.EmailID = userdet.EmailAddress;
                usersInDb.CgppOffice = Db.CgppOffices.Find(userdet.Officeid);
                usersInDb.UserName = userdet.Username;
                usersInDb.Password = userdet.Password;
                usersInDb.RPassword = userdet.Password;
                usersInDb.CgppDivision = Db.CgppDivisions.Find(userdet.Divisionid);

                Db.SaveChanges();

                foreach (HttpPostedFileBase file in userdet.files)
                {
                    if (file != null)
                    {
                        var InputFileName = userdet.FilePath + DateTime.Now.Ticks +
                                            Path.GetFileName(file.FileName);
                        var FileNameGetter = Path.GetFileName(file.FileName);
                        var ServerSavePath = Path.Combine(Server.MapPath("~/ProfileImages/") + InputFileName);

                        file.SaveAs(ServerSavePath);
                         
                        usersInDb.FilePath = "/ProfileImages/" + InputFileName;

                    }

                }


                Db.SaveChanges();
            }

            return RedirectToAction("UsersList");
        }
  
        

        //[HttpPost]
        //public ActionResult UploadFiles(HttpPostedFileBase[] files, FileModel fileModel)
        //{

        //        foreach (HttpPostedFileBase file in files)
        //        {
        //            if (file != null)
        //            {
        //                var InputFileName = fileModel.DocumentLabel + DateTime.Now.Ticks + counter +
        //                                    Path.GetFileName(file.FileName);
        //                var FileNameGetter = Path.GetFileName(file.FileName);
        //                var ServerSavePath = Path.Combine(Server.MapPath("~/UploadedFiles/") + InputFileName);

        //                file.SaveAs(ServerSavePath);

        //                ctx.UploadDisplays.Add(new UploadDisplay()
        //                {
        //                    DocumentPath = "~/UploadedFiles/" + InputFileName,
        //                    FileName = fileModel.DocumentLabel,
        //                    FileModelId = fileModel.Id,
        //                    DepartmentsId = fileModel.DepartmentsId,
        //                    DivisionsId = fileModel.DivisionsId,
        //                    Created = fileModel.UploadedBy
        //                });

        //            }

        //            counter++;
        //        }

        //        ctx.SaveChanges();
        //    }

        //    return RedirectToAction("Index", "UploadDisplay");



        }
}