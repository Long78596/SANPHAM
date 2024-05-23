<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="SANPHAM.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
     crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container-fluid" style="background-image: url('/images/login_banner.png'); height: 100vh;">
            <div class="container " >
                <asp:Login ID="Login1" runat="server">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse; text-align:center; margin-right:5px; " >
                            <tr>
                                <td style="display:flex;width:700px; margin: 150px 30px 100px 250px">
                                    <table cellpadding="0" style="margin:100px 100px 100px 150px; background-color:wheat; width:100%; height:300px; border-radius:10px;" >
                                        <tr>
                                            <td align="center" colspan="2" style="color:black;font-weight:bold; font-size:30px;">Đăng nhập</td>
                                        </tr>
                                        <tr">
                                            <td align="right" class="auto-style1">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" style="color:black; padding-left:30px; font-weight:bold; ">User Name:</asp:Label>
                                            </td>
                                            <td class="auto-style1">
                                                <asp:TextBox ID="UserName" runat="server" style="margin:5px;"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" style="color:black;font-weight:bold;">Password:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password" style="margin:5px; "></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:CheckBox ID="RememberMe"  runat="server" Text="Remember me next time." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="btn btn-dark" Text="Xác nhận"
                                                    style="display:block; font-weight:700; width:100px; margin: 0 auto; background-color:cadetblue; border:none" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>

            </div>
            
        </div>
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>
</html>
