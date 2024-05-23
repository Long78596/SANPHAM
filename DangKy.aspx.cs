using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SANPHAM
{

	public partial class DangKy : System.Web.UI.Page
	{
		LopKetNoi ketNoi = new LopKetNoi();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
		}
		protected void DangkyButton_Click(object sender, EventArgs e)
		{
			try
			{
				string username = ((TextBox)dl_dangky.FindControl("UserName")).Text;
				string password = ((TextBox)dl_dangky.FindControl("Password")).Text;
				string email = ((TextBox)dl_dangky.FindControl("Email")).Text;
				string phone = ((TextBox)dl_dangky.FindControl("Phone")).Text;

				if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password) ||
					string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(phone))
				{
					Response.Write("<script>alert('Tất cả các trường đều bắt buộc.');</script>");
					return;
				}

				string sql = "INSERT INTO TAIKHOAN (TENDANGNHAP, MATKHAU, Email, Phone) VALUES (@username, @password, @Email, @Phone)";
				List<SqlParameter> parameters = new List<SqlParameter>
		{
			new SqlParameter("@username", username),
			new SqlParameter("@password", password),
			new SqlParameter("@Email", email),
			new SqlParameter("@Phone", phone)
		};

				ketNoi.thaydoi(sql, parameters);

				Session["username"] = username;
				Session["password"] = password;
				Session["email"] = email;
				Session["phone"] = phone;

				Response.Redirect("DangNhap.aspx");
			}
			catch (Exception ex)
			{
				Response.Write($"<script>alert('Đã xảy ra lỗi: {ex.Message}');</script>");
			}
		}


	}


}