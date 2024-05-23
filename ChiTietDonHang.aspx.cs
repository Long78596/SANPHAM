using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class ChiTietDonHang : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			string tenDN = Session["username"] + "";
			if (tenDN != "")
			{
				string ctdh2 = Request.QueryString["ctdh"] + "";
				string sql = "";
				if (ctdh2 != "")
				{
					sql = "SELECT SANPHAM.MASANPHAM, HINH, TENSANPHAM, DONGIA, SOLUONG, DONGIA * SOLUONG AS THANHTIEN, DONHANG.TENDANGNHAP " +
						 "FROM SANPHAM, DONHANG " +
						 "WHERE SANPHAM.MASANPHAM = DONHANG.MASANPHAM AND TENDANGNHAP = '" + tenDN + "'";



				}

				DataTable dt = ketNoi.docdulieu(sql);
				ctdh1.DataSource = dt;
				ctdh1.DataBind();
				if (dt.Rows.Count > 0)
				{
					decimal tongTien = 0;
					foreach (DataRow row in dt.Rows)
					{
						tongTien += Convert.ToDecimal(row["THANHTIEN"]);
					}
					TongTien.Text = "Tổng tiền: " + tongTien.ToString("N0") + " VND";
				}

			}
		}
	}
}