<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ChiTietDonHang.aspx.cs" Inherits="SANPHAM.ChiTietDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Chi Tiết đơn hàng </h3>
   
      <table style="width:100%; text-align:center; border: 1px solid black;" class="table table-bordered">
    <thead>
        <tr>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Đơn  giá</th>
            <th>Hình</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
           
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="ctdh1" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MASANPHAM") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENSANPHAM") %>'></asp:Label>
                    </td>
                  
                    <td class="text-center align-middle">
                           <asp:Label ID="Label4" runat="server" Text='<%# Eval("DONGIA") %>'></asp:Label>
                 </td>
                       <td class="text-center align-middle">
                           <asp:Image ID="Image1" ImageUrl='<%# "images/"+Eval("HINH") %>' style="height:200px;width:200px;" runat="server" />
                           </td>
                   
                    <td class="text-center align-middle">
                                           <asp:Label ID="Label6" runat="server" Text='<%# Eval("SOLUONG") %>'></asp:Label>
                       </td>
                      <td class="text-center align-middle">
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("THANHTIEN") %>'></asp:Label>
     </td>
                   
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>

    <td> <asp:Label ID="TongTien" Font-Size="28px" ForeColor="Blue" runat="server" style="margin-left:500px; margin-bottom:50px;" Text="Tổng Tiền:"></asp:Label></td>
</asp:Content>
