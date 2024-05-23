using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{
	public partial class DangNhap : System.Web.UI.Page
	{
		LopKetNoi KetNoi = new LopKetNoi();
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

        protected void LoginButton_Click(object sender, EventArgs e)
        {

			string username = Login1.UserName;
			string password = Login1.Password;
			string sql = "Select * From TAIKHOAN Where TENDANGNHAP='" + username + "'And MATKHAU='" + password + "'";
			DataTable dt_login = KetNoi.docdulieu(sql);
			if( dt_login !=null && dt_login.Rows.Count > 0)
			{
				Session["username"] = username;
				Response.Redirect("Default.aspx");
			}
			else
			{
				Login1.FailureText = "Tên hoặc mật khẩu không đúng";
			}

        }
    }
}