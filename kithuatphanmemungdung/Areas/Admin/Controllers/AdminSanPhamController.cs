using kithuatphanmemungdung.Models.BUS;
using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace kithuatphanmemungdung.Areas.Admin.Controllers
{
    public class AdminSanPhamController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/SanPham
        public ActionResult Index()
        {
            var ds = ShopOnlineBUS.Danhsach();
            return View(ds);
        }

        // GET: Admin/SanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/SanPham/Create
        public ActionResult Create()
        {
           
            return View();
        }

        // POST: Admin/SanPham/Create
        [HttpPost]
        public ActionResult Create(SanPham sp)
        {
            try
            {
                // TODO: Add insert logic here
                ShopOnlineBUS.ThemSP(sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Edit/5
        public ActionResult Edit(String id)
        {
            return View(ShopOnlineBUS.ChiTietAdmin(id));
        }

        // POST: Admin/SanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, SanPham sp)
        {
            try
            {
                // TODO: Add update logic here
                ShopOnlineBUS.UpdateSP(id, sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/SanPham/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
