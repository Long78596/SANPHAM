using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class Layout : System.Web.UI.MasterPage
	{
		LopKetNoi ketNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			string sql = " Select * From CHUDE ";
			chude.DataSource = ketNoi.docdulieu(sql);
			chude.DataBind();
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			string machude = ((LinkButton)sender).CommandArgument;
			Response.Redirect("ChuDeTheoDanhMuc.aspx?machude=" + machude);
		}

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
			string keyword = txtTimKiem.Text.Trim();
			Response.Redirect($"timkiem.aspx?kw={(keyword)}");
		}
    }
}