using kithuatphanmemungdung.Models.BUS;
using System;
using System.Web.Mvc;

namespace kithuatphanmemungdung.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details(String id)
        {
            var db = ShopOnlineBUS.ChiTiet(id);
            return View(db);

        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}