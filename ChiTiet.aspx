<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="SANPHAM.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .btn-primary {
            width:100px;
        }
    </style>
    <asp:DataList ID="dl_chitiet" runat="server">
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td rowspan="4"><asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("HINH") %>' style="height:480px; width:600px; border-radius:15px" /></td>
                    <td style="padding-left:30px"><b>Tên: </b>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSANPHAM") %>' Style="font-weight:bold" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="padding-left:30px"><b>Giá: </b><asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>' style="font-weight:bold" ></asp:Label> <asp:Label ID="Label3" runat="server" Text='<%# Eval("DONVITINH") %>' style="font-weight:bold" ></asp:Label></td>
                </tr>
                <tr>
                    <td style="padding-left:30px"><b>Mô tả: </b><asp:Label ID="Label4" runat="server" Text='<%# Eval("MOTA") %>'  ></asp:Label></td>
                <%--</tr>--%>
                <tr>
                    <td style="padding-left:30px"><b>Số lượng:</b>
                        <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                        <asp:Button ID="btnMua" runat="server" CssClass="btn btn-primary"  Text="Mua" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="btnMua_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
      

    </asp:DataList>
    <asp:Label ID="lb_thongbao" Font-Size="28px" runat="server" Text="Trạng thái mua hàng" ></asp:Label><br />
        <a class="giohang" style="padding-top:10px; margin-top:10px; font-weight:800; text-decoration:none; font-size:28px" href="GioHang.aspx">Giỏ hàng</a>
</asp:Content>
