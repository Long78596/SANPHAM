using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SANPHAM
{

	public class LopKetNoi
	{
		SqlConnection con;

		private void moketnoi()
		{
			string sql = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\nguyen\Desktop\Se397J\SANPHAM (1)\SANPHAM\App_Data\QLSANPHAM.mdf"";Integrated Security=True";
			con = new SqlConnection(sql);
			con.Open();
		}

		private void dongketnoi()
		{
			if (con.State == ConnectionState.Open)
			{
				con.Close();
			}
		}

		public DataTable docdulieu(string sql)
		{
			DataTable dt = new DataTable();
			try
			{
				moketnoi();
				SqlDataAdapter da = new SqlDataAdapter(sql, con);
				da.Fill(dt);
			}
			catch
			{
				dt = null;
			}
			finally
			{
				dongketnoi();
			}
			return dt;
		}

		public int capNhat(string sql)
		{
			int ketqua = 0;
			try
			{
				moketnoi();
				SqlCommand cmd = new SqlCommand(sql, con);
				ketqua = cmd.ExecuteNonQuery();
			}
			catch
			{
				// Log exception or handle it
			}
			finally
			{
				dongketnoi();
			}
			return ketqua;
		}

		public int thaydoi(string sql, List<SqlParameter> parameters)
		{
			int ketqua = 0;
			try
			{
				moketnoi();
				using (SqlCommand cmd = new SqlCommand(sql, con))
				{
					if (parameters != null)
					{
						cmd.Parameters.AddRange(parameters.ToArray());
					}
					ketqua = cmd.ExecuteNonQuery();
				}
			}
			catch
			{
				
			}
			finally
			{
				dongketnoi();
			}
			return ketqua;
		}
	
	    
	}

}