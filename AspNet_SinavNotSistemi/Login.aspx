<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AspNet_SinavNotSistemi.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="BootstrapTema/bootstrap.min.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 700px; margin: auto">
            <h2>Web Öğrenci Sınav Not Sistemi Giriş Ekranı</h2>
            <br />
            <br />
            <br />
            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/BootstrapTema/login.jpg" Width="100px" />
            </div>
            <br />
            <br />

            <div>
                <asp:Label for="TxtNumara" runat="server">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" class="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtSifre" runat="server">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="BtnGirisYap" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="BtnGirisYap_Click" />
            <br />
            <br />
            <asp:Button ID="BtnOgretmenGirisYap" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="200px" OnClick="BtnOgretmenGirisYap_Click" />
            <asp:Button ID="BtnSifremiUnuttum" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" />
            <asp:Button ID="BtnYardim" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" />
        </div>
    </form>
</body>
</html>
