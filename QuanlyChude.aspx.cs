using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class QuanlyChude : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
				LoadData();
		}
		 private void LoadData()
		{
			string sql = "  Select * from CHUDE";
			chude.DataSource = ketNoi.docdulieu(sql);
			chude.DataBind();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			string tenDn = Session["username"] + "";
			if (tenDn != "")
			{
				string maChuDeString = ((Button)sender).CommandArgument;

				int maChuDe;
				if (int.TryParse(maChuDeString, out maChuDe))
				{
					string sql = "DELETE FROM CHUDE WHERE MACHUDE = @MaChuDe";
					List<SqlParameter> parameters = new List<SqlParameter>
	                     	{
			          new SqlParameter("@MaChuDe", maChuDe)
		                  };
					

						int result = ketNoi.thaydoi(sql, parameters);
					if (result > 0)
					{
						thongbao.Text = "Xóa chủ đề thành công!";
					}

		                else
					{
						thongbao.Text = "Không tìm thấy chủ đề để xóa.";
					}


					Response.Redirect("QuanLyChude.aspx");
				}
				
			}
		}
	}
}