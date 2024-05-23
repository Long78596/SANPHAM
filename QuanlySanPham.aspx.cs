using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class QuanlySanPham : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			Loaddata();
		}
		private void Loaddata()
		{
			string sql = "SELECT CHUDE.TENCHUDE, SANPHAM.MASANPHAM, TENSANPHAM, DONVITINH, DONGIA, HINH, SANPHAM.MACHUDE, MOTA " +
				 "FROM SANPHAM " +
				 "JOIN CHUDE ON SANPHAM.MACHUDE = CHUDE.MACHUDE";


			sanpham.DataSource = ketNoi.docdulieu(sql);
			sanpham.DataBind();
		}

       

		protected void Button1_Click1(object sender, EventArgs e)
		{
			string tenDn = Session["username"] + "";
			if (tenDn != "")
			{
				string masanpham = ((Button)sender).CommandArgument;

				int maSP;
				if (int.TryParse(masanpham, out maSP))
				{
					string sql = "DELETE FROM SANPHAM WHERE MASANPHAM = @MaSanPham";
					List<SqlParameter> parameters = new List<SqlParameter>
							 {
					  new SqlParameter("@MaSanPham", maSP)
						  };


					int result = ketNoi.thaydoi(sql, parameters);



					Response.Redirect("QuanLySanPham.aspx");
				}

			}
		}
	}
}