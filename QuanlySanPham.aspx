<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanlySanPham.aspx.cs" Inherits="SANPHAM.QuanlySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 style="text-align:center;">Danh sách sản phẩm</h3>
  <table style="width:100%; text-align:center; border: 1px solid black;" class="table table-bordered">
    <thead>
        <tr>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Đơn vị tính</th>
            <th>Đơn  giá</th>
            <th>Hình</th>
            <th>Mã chủ đề</th>
            <th>Mô tả</th>
            <th>Xóa</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="sanpham" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MASANPHAM") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENSANPHAM") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("DONVITINH") %>'></asp:Label>
                                     </td>
                    <td class="text-center align-middle">
                           <asp:Label ID="Label4" runat="server" Text='<%# Eval("DONGIA") %>'></asp:Label>
                 </td>
                       <td class="text-center align-middle">
                           <asp:Image ID="Image1" ImageUrl='<%# "images/"+Eval("HINH") %>' style="height:200px;width:200px;" runat="server" />
                           </td>
                     <td class="text-center align-middle">
                                 <asp:Label ID="Label5" runat="server" Text='<%# Eval("TENCHUDE") %>'></asp:Label>
                       </td>
                    <td class="text-center align-middle">
                                           <asp:Label ID="Label6" runat="server" Text='<%# Eval("MOTA") %>'></asp:Label>
                       </td>
                    <td class="text-center align-middle">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" CommandArgument='<%# Eval("MASANPHAM") %>'   Text="Xóa" OnClick="Button1_Click1" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>

</asp:Content>
