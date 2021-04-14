using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopOnlineConnection;
namespace kithuatphanmemungdung.Models.BUS
{
    public class ShopOnlineBUS
    {
        public static IEnumerable<SanPham> Danhsach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham where TinhTrang = 0");
        }
        public static SanPham ChiTiet(String a)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where MaSanPham = @0", a);

        }

        public static IEnumerable<SanPham> SanPhamMoi()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham where GhiChu = N'New'");

        }
        public static IEnumerable<SanPham> SanPhamGiamGia()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham where GiamGia = N'20%'");

        }

        public static IEnumerable<SanPham> Combo()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham where Combo = 0");

        }




        public static void ThemSP(SanPham sp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Insert(sp);
        }

        public static IEnumerable<SanPham> DanhsachAdmin()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham ");
        }

        public static SanPham ChiTietAdmin(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where MaSanPham = '" + id + "'");
        }
        public static void UpdateSP(String id, SanPham sp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(sp, id);
        }
    }
}