using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class Dangxuat : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session["username"] = true;
			Response.Redirect("Default.aspx");
		}
	}
}