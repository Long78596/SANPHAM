using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class Default : System.Web.UI.Page
	{
		LopKetNoi KetNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			
			
			string sql = " Select * From SANPHAM ";
			sanpham.DataSource = KetNoi.docdulieu(sql);
			sanpham.DataBind();
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