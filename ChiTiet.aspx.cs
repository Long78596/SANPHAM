using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class ChiTiet : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			string masanpham = Request.QueryString["masanpham"] + "";
			if(masanpham != "")
			{
				string sql = " Select * From  SANPHAM Where MASANPHAM=" + masanpham;
				dl_chitiet.DataSource = ketNoi.docdulieu(sql);
				dl_chitiet.DataBind();
			}
		}

        protected void btnMua_Click(object sender, EventArgs e)
        {

			string tenDN = Session["username"] + "";
			if (tenDN != "")
			{
				string masanpham = ((Button)sender).CommandArgument;

				Button bt = (Button)sender;
				DataListItem item = (DataListItem)bt.Parent;
				TextBox txt_SL = (TextBox)item.FindControl("txtSoLuong");
				string soluong = txt_SL.Text;
				int soLuongInt;

				
				if (int.TryParse(soluong, out soLuongInt) && soLuongInt > 0)
				{
					string sql_donhang = "Select * from DONHANG where TENDANGNHAP ='" + tenDN + "' And MASANPHAM = " + masanpham;
					DataTable dt = ketNoi.docdulieu(sql_donhang);
					string sql = "";
					if (dt != null && dt.Rows.Count > 0)
					{
						sql = "Update DONHANG Set SOLUONG = SOLUONG + " + soluong + " where TENDANGNHAP = '" + tenDN + "' And MASANPHAM = " + masanpham;
					}
					else
					{
						sql = "Insert Into DONHANG Values('" + tenDN + "', " + masanpham + ", " + soluong + ")";
					}

					int kq = ketNoi.capNhat(sql);
					if (kq > 0)
					{
						lb_thongbao.Text = "Mua hàng thành công";
					}
					else
					{
						lb_thongbao.Text = "Không thành công";
					}
				}
				else
				{
					lb_thongbao.Text = "Vui lòng nhập số lượng hợp lệ (lớn hơn 0).";
				}
			}
			else
			{
				lb_thongbao.Text = "Bạn cần phải đăng nhập";
			}

		}
	}
}