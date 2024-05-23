<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyDonHang.aspx.cs" Inherits="SANPHAM.QuanLyDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h3 style="text-align:center;">Quản lý đơn hàng</h3>
  <table style="width:100%; text-align:center; border: 1px solid black;" class="table table-bordered">
    <thead>
        <tr>
            <th>Tên Đăng nhập</th>
            <th>mã chủ đề</th>
            <th>Số lượng</th>
            <th>Chi tiết đơn hàng</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="donhang" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENDANGNHAP") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MASANPHAM") %>'></asp:Label>
                    </td>
                     <td class="text-center align-middle">
                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("SOLUONG") %>'></asp:Label>
                               </td>
                    <td class="text-center align-middle">
                        <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-warning" CommandArgument='<%# Eval("TENDANGNHAP") %>'   OnClick="Button1_Click" Text ="Chi Tiết đơn hàng" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>

</asp:Content>
