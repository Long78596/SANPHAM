<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyTaiKhoan.aspx.cs" Inherits="SANPHAM.QuanLyTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 style="text-align:center;">Danh sách tài khoản</h3>
  <table style="width:100%; text-align:center; border: 1px solid black;" class="table table-bordered">
    <thead>
        <tr>
            <th>Tên đăng nhập</th>
            <th>Mật khẩu</th>
            <th>Email</th>
            <th>Số điện thoại</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="taikhoan" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENDANGNHAP") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MATKHAU") %>'></asp:Label>
                    </td>
                     <td class="text-center align-middle">
     <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
 </td>
                                        <td class="text-center align-middle">
    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
</td>
                    <td class="text-center align-middle">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger"  CommandArgument='<%# Eval("TENDANGNHAP") %>' OnClick="Button1_Click" Text="Xóa" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>
