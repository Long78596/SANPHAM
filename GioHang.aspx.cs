using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class GioHang : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			string tenDN = Session["username"] + "";
			if (tenDN != "")
			{
				string sql = "SELECT SANPHAM.MASANPHAM, HINH, TENSANPHAM, DONGIA, SOLUONG, DONGIA * SOLUONG AS THANHTIEN " +
							 "FROM SANPHAM, DONHANG " +
							 "WHERE SANPHAM.MASANPHAM = DONHANG.MASANPHAM AND TENDANGNHAP = '" + tenDN + "'";

				DataTable dt = ketNoi.docdulieu(sql);
				giohang1.DataSource = dt;
				giohang1.DataBind();

				if (dt.Rows.Count > 0)
				{
					decimal tongTien = 0;
					foreach (DataRow row in dt.Rows)
					{
						tongTien += Convert.ToDecimal(row["THANHTIEN"]);
					}
					lblTongTien.Text = "Tổng tiền: " + tongTien.ToString("N0") + " VND";
				}
			}

		}



		protected void btnXoa_Click(object sender, EventArgs e)
		{
			string tenDn = Session["username"] + "";
			if(tenDn != "")
			{
				string masanpham = ((LinkButton)sender).CommandArgument;
				string sql="Delete From DONHANG Where TENDANGNHAP ='" +tenDn+ "' And MaSANPHAM=" + masanpham;
				int kq = ketNoi.capNhat(sql);
				if(kq > 0)
				{
					
					lb_thongbao.Text = "Xóa thành công";
				}
				else
				{
					lb_thongbao.Text = "Không Thành công";
				}
				Response.Redirect("GioHang.aspx");
			}
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{

			string tenDN = Session["username"] + "";
			if (tenDN != "")
			{
				LinkButton btn = (LinkButton)sender;
				GridViewRow row = (GridViewRow)btn.NamingContainer;
				string masp = btn.CommandArgument;
				TextBox textBox = (TextBox)row.FindControl("txtSoLuong");
				int soLuong = int.Parse(textBox.Text);

				string sql = "UPDATE DONHANG SET SOLUONG =  " + soLuong + " WHERE TENDANGNHAP = '" + tenDN + "' AND MASANPHAM = '" + masp + "'";
				int kq = ketNoi.capNhat(sql);
				if (kq > 0)
				{
					lb_thongbao.Text = "Cập nhật thành công";
					Response.Redirect("GioHang.aspx");
				}
				else
				{
					lb_thongbao.Text = "Cập nhật không thành công";
				}

			}
		}
	}
}