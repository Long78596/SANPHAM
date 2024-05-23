<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ThemChude.aspx.cs" Inherits="SANPHAM.ThemChude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h3 style="text-align:center;">Thêm mới chủ đề</h3>
    <asp:Label ID="baoloi" runat="server" ></asp:Label>
    <table style="width: 100%;text-align:center;">
        <tr>
            <td>Mã chủ đề</td>
            <td>
                <asp:TextBox ID="MaChuDe" runat="server"></asp:TextBox></td>
          
        </tr>
        <tr>
            <td>Tên chủ đề</td>
             <td>
                  <asp:TextBox ID="TenChuDe" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />

            </td>
        </tr>
        <tr>
    <td colspan="2">
        <a href="QuanlyChude.aspx" style="text-decoration:none; color:black; font-size:30px;">Danh sách chủ đề</a>
    </td>
</tr>
       
    </table>
</asp:Content>
