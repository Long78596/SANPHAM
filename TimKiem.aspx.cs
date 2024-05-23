using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class TimKiem : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string keyword = Request.QueryString["kw"] ?? string.Empty;
				string sql;
				if (string.IsNullOrEmpty(keyword))
				{
					sql = "SELECT * FROM SANPHAM ";
				}
				else
				{
					sql = "SELECT * FROM SANPHAM WHERE TENSANPHAM LIKE '%" + keyword + "%'";
				}
				var dt = ketNoi.docdulieu(sql);
				dl_timkiem.DataSource = dt;
				dl_timkiem.DataBind();
			}

		}

		protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
		{
			string masanpham = ((ImageButton)sender).CommandArgument;
			Response.Redirect("ChiTiet.aspx?masanpham=" + masanpham);
		}

		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			string masanpham = ((LinkButton)sender).CommandArgument;
			Response.Redirect("ChiTiet.aspx?masanpham=" + masanpham);
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			string masanpham = ((LinkButton)sender).CommandArgument;
			Response.Redirect("ChiTiet.aspx?masanpham=" + masanpham);
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			string masanpham = ((LinkButton)sender).CommandArgument;
			Response.Redirect("ChiTiet.aspx?masanpham=" + masanpham);
		}
	}
}