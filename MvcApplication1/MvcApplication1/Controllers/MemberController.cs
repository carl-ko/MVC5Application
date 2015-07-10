using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class MemberController : Controller
    {
        private 客戶資料Entities db = new 客戶資料Entities();

        //
        // GET: /Member/

        public ActionResult Index()
        {
            return View(db.客戶資料.ToList());
        }

        //
        // GET: /Member/Details/5

        public ActionResult Details(int id = 0)
        {
            客戶資料 客戶資料 = db.客戶資料.Find(id);
            if (客戶資料 == null)
            {
                return HttpNotFound();
            }
            return View(客戶資料);
        }

        //
        // GET: /Member/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Member/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(客戶資料 客戶資料)
        {
            if (ModelState.IsValid)
            {
                db.客戶資料.Add(客戶資料);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(客戶資料);
        }

        //
        // GET: /Member/Edit/5

        public ActionResult Edit(int id = 0)
        {
            客戶資料 客戶資料 = db.客戶資料.Find(id);
            if (客戶資料 == null)
            {
                return HttpNotFound();
            }
            return View(客戶資料);
        }

        //
        // POST: /Member/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(客戶資料 客戶資料)
        {
            if (ModelState.IsValid)
            {
                db.Entry(客戶資料).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(客戶資料);
        }

        //
        // GET: /Member/Delete/5

        public ActionResult Delete(int id = 0)
        {
            客戶資料 客戶資料 = db.客戶資料.Find(id);
            if (客戶資料 == null)
            {
                return HttpNotFound();
            }
            return View(客戶資料);
        }

        //
        // POST: /Member/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            客戶資料 客戶資料 = db.客戶資料.Find(id);
            db.客戶資料.Remove(客戶資料);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}