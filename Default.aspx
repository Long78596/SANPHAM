

<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SANPHAM.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-center ">DANH SÁCH SẢN PHẨM</h3>
    <asp:DataList ID="sanpham" runat="server"  RepeatColumns="3">
        <ItemTemplate>
            <table style="width: 100%; border:solid 2px #ffb524; border-radius:20px; background-color:aliceblue">
                <tr>
                    <td class="text-center align-center mt-2"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "images/"+Eval("HINH") %>' style="height:300px; width:100%" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="ImageButton1_Click" /></td>
             
                </tr>

                <tr>
                    <td class="text-center align-center"> <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("TENSANPHAM") %>' style="text-decoration:none; color:black; font-size:25px; font-weight:600" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="LinkButton2_Click"></asp:LinkButton></td>
                   
                </tr>

                <tr>
                    <td class="text-center align-center"> Đơn giá: <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("DONGIA") %>' style="text-decoration:none; color:black; padding-left:10px; font-weight:700" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="LinkButton3_Click" ></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1"  runat="server" Text='<%# Eval("DONVITINH") %>' style="text-decoration:none; color:black;" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>
