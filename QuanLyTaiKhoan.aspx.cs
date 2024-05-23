using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class QuanLyTaiKhoan : System.Web.UI.Page
	{
		LopKetNoi KetNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			LoadData();
		}
		private void LoadData()
		{
			string sql = " Select * From TAIKHOAN ";
			taikhoan.DataSource = KetNoi.docdulieu(sql);
			taikhoan.DataBind();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			string TenDN = ((Button)sender).CommandArgument;

			string sql = "DELETE FROM TAIKHOAN WHERE TENDANGNHAP = @TenDangNhap";
			List<SqlParameter> parameters = new List<SqlParameter>
                  {
	             new SqlParameter("@TenDangNhap", TenDN)
                     };

			int result = KetNoi.thaydoi(sql, parameters);

			Response.Redirect("QuanLyTaiKhoan.aspx");



		}
	}
}