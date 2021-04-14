using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace kithuatphanmemungdung.Models.BUS
{
    public class NhaXuatBanBUS
    {
        public static IEnumerable<NhaXuatBan> Danhsach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<NhaXuatBan>("select * from NhaXuatBan where TinhTrang = 0");
        }

        

        public static void ThemNXB(NhaXuatBan nxb)
        {
            var db = new ShopOnlineConnectionDB();
            db.Insert(nxb);
        }

        public static IEnumerable<NhaXuatBan> DanhsachAdmin()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<NhaXuatBan>("select * from NhaXuatBan ");
        }

        public static NhaXuatBan ChiTietAdmin(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<NhaXuatBan>("select * from NhaXuatBan where MaNhaXuatBan = '" + id + "'");
        }
        public static void UpdateNXB(String id, NhaXuatBan nxb)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(nxb, id);
        }
    }
}