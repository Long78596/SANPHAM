using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class ThemChude : System.Web.UI.Page
	{
		LopKetNoi lopKetNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
		}
		public void themchude(int MaChuDe, string TenChude)
		{
			string sql = "INSERT INTO CHUDE (MACHUDE, TENCHUDE) VALUES (@MaChuDe, @TenChude)";
			List<SqlParameter> parameters = new List<SqlParameter>
		{
			new SqlParameter("@MaChuDe", MaChuDe),
			new SqlParameter("@TenChude", TenChude)
		};
			lopKetNoi.thaydoi(sql, parameters);
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			int maChuDe;
			if (!int.TryParse(MaChuDe.Text, out maChuDe))
			{
				baoloi.Text = "Mã chủ đề phải là số nguyên.";
				return;
			}

			string tenChuDe = TenChuDe.Text;

			try
			{
				themchude(maChuDe, tenChuDe);
				baoloi.Text = "Thêm chủ đề thành công!";
				Response.Redirect("QuanLyChude.aspx");
			}
			catch (Exception ex)
			{
				baoloi.Text = "Có lỗi xảy ra: " + ex.Message;
			}
		}
	}
}