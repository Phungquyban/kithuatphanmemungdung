using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace kithuatphanmemungdung.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<LoaiSanPham> Danhsach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham where TinhTrang = 0");
        }
        public static IEnumerable<SanPham> ChiTiet(string id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham where MaLoaiSanPham = '"+id+ "'");
        }


        public static void ThemLSP(LoaiSanPham lsp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Insert(lsp);
        }

        public static IEnumerable<LoaiSanPham> DanhsachAdmin()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham ");
        }

        public static LoaiSanPham ChiTietAdmin(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<LoaiSanPham>("select * from LoaiSanPham where MaLoaiSanPham = '" + id + "'");
        }
        public static void UpdateLSP(String id, LoaiSanPham lsp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(lsp, id);
        }
    }
}