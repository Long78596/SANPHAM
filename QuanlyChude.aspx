<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanlyChude.aspx.cs" Inherits="SANPHAM.QuanlyChude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center;">Danh sách chủ đê</h3>
    <a href="ThemChuDe.aspx" class="btn btn-primary mb-2">Thêm mới</a>
    <%--<asp:Label ID="thongbao" runat="server" ></asp:Label>--%>
  <table style="width:100%; text-align:center; border: 1px solid black;" class="table table-bordered">
    <thead>
        <tr>
            <th>Mã chủ đề</th>
            <th>Tên chủ đề</th>
            <th>Xóa</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="chude" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MACHUDE") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENCHUDE") %>'></asp:Label>
                    </td>
                    <td class="text-center align-middle">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" CommandArgument='<%# Eval("MACHUDE") %>'  Text="Xóa" OnClick="Button1_Click" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
    <asp:Label ID="thongbao" Font-Size="28px" runat="server" Text="Trạng thái chủ đề" ></asp:Label><br />

</asp:Content>
