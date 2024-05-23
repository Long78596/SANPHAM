<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="SANPHAM.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 911px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 style="text-align:center;">Giỏ hàng</h3>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1" >  
                <asp:GridView ID="giohang1" runat="server" style="margin: 200px 200px 20px 200px; border:solid 2px black; text-align:center;" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
      <AlternatingRowStyle BackColor="White" />
      <Columns >
    <asp:BoundField DataField="MASANPHAM" HeaderText="Mã Sản phẩm"  />
          <asp:TemplateField  HeaderText="Hình Ảnh" >
   <ItemTemplate>
       <asp:Image  ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("HINH") %>' style="height:200px; width:200px;"></asp:Image>             
   </ItemTemplate>
</asp:TemplateField>
    <asp:BoundField DataField="TENSANPHAM" HeaderText="Tên Sản Phẩm"  />
    <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" />
    <asp:TemplateField HeaderText="Số  lượng">
        <ItemTemplate>
            <asp:TextBox ID="txtSOLUONG" style="text-align:center;" runat="server" Text='<%# Eval("SOLUONG") %>' />
            <asp:LinkButton ID="LinkButton1"  CssClass="btn btn-warning" runat="server" CommandArgument='<%# Eval("MASANPHAM") %>' style="margin-top:20px;" OnClick="LinkButton1_Click">Cập nhật </asp:LinkButton>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" />
    <asp:TemplateField HeaderText="Xóa">
        <ItemTemplate>
            <asp:LinkButton ID="btnXoa" CssClass="btn btn-danger" runat="server" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="btnXoa_Click" >Hủy</asp:LinkButton>
        </ItemTemplate>
       
             
    </asp:TemplateField>
</Columns>
      <EditRowStyle BackColor="#2461BF" />
      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
      <RowStyle BackColor="#EFF3FB" />
      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      <SortedAscendingCellStyle BackColor="#F5F7FB" />
      <SortedAscendingHeaderStyle BackColor="#6D95E1" />
      <SortedDescendingCellStyle BackColor="#E9EBEF" />
      <SortedDescendingHeaderStyle BackColor="#4870BE" />
     

  </asp:GridView></td>
         
             
             </tr>
       <tr>
              <td> <asp:Label ID="lblTongTien" Font-Size="28px" ForeColor="Blue" runat="server" style="margin-left:500px; margin-bottom:50px;" Text="Tổng Tiền:"></asp:Label></td>
       </tr>
                
    </table>
    
    <asp:Label ID="lb_thongbao" runat="server" ></asp:Label>
</asp:Content>
