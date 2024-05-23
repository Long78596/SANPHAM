using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class QuanLyDonHang : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			LoadData();
		}
		private void LoadData()
		{
			string sql = "  Select * From DONHANG";
			donhang.DataSource = ketNoi.docdulieu(sql);
			donhang.DataBind();
		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			string ctdh = ((LinkButton)sender).CommandArgument;
			Response.Redirect("ChiTietDonHang.aspx?ctdh=" + ctdh);

		}
	}
}