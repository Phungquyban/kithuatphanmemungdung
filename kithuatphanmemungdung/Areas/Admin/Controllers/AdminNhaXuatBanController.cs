using kithuatphanmemungdung.Models.BUS;
using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace kithuatphanmemungdung.Areas.Admin.Controllers
{
    public class AdminNhaXuatBanController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/NhaXuatBan
        public ActionResult Index()
        {
            var ds = NhaXuatBanBUS.DanhsachAdmin();
            return View(ds);
        }

        // GET: Admin/NhaXuatBan/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/NhaXuatBan/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NhaXuatBan/Create
        [HttpPost]
        public ActionResult Create(NhaXuatBan nxb)
        {
            try
            {
                // TODO: Add insert logic here
                NhaXuatBanBUS.ThemNXB(nxb);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NhaXuatBan/Edit/5
        public ActionResult Edit(String id)
        {
            return View(NhaXuatBanBUS.ChiTietAdmin(id));
        }
        
                // POST: Admin/NhaXuatBan/Edit/5
                [HttpPost]
                public ActionResult Edit(String id, NhaXuatBan nxb)
                {
                    try
                    {
                        // TODO: Add update logic here
                        NhaXuatBanBUS.UpdateNXB(id, nxb);
                        return RedirectToAction("Index");
                    }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NhaXuatBan/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/NhaXuatBan/Delete/5
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
