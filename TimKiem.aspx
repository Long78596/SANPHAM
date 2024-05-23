<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="SANPHAM.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dl_timkiem" runat="server" style="margin-right: 72px"  RepeatColumns="3">
    <ItemTemplate>
        <table style="width: 100%; border:solid 2px #ffb524; border-radius:20px; background-color:aliceblue">
            <tr>
                <td class="text-center align-center mt-2"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "images/"+Eval("HINH") %>' style="height:300px;" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="ImageButton1_Click"    /></td>
                   
                
  
  
            </tr>
            <tr>
                <td class="text-center align-center"> <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("TENSANPHAM") %>' style="text-decoration:none; color:black; font-size:25px; font-weight:700" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="LinkButton2_Click" ></asp:LinkButton></td>
               
            </tr>
            <tr>
                <td class="text-center align-center"> Đơn giá: <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("DONGIA") %>' style="text-decoration:none; color:black; font-weight:700" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="LinkButton3_Click"  ></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1"  runat="server" Text='<%# Eval("DONVITINH") %>' style="text-decoration:none; color:black;" CommandArgument='<%# Eval("MASANPHAM") %>' OnClick="LinkButton1_Click" ></asp:LinkButton>
                </td>
                
            </tr>
        </table>
    </ItemTemplate>

</asp:DataList>
</asp:Content>
