<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="AspNet_SinavNotSistemi.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ad Soyad</th>
            <th scope="col">Ders Ad</th>
            <th scope="col">Sınav 1</th>
            <th scope="col">Sınav 2</th>
            <th scope="col">Sınav 3</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Durum</th>
            <th scope="col">İşlem</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OgrenciId")%></td>
                        <td><%#Eval("OgrenciAdSoyad")%></td>
                        <td><%#Eval("DersAd")%></td>
                        <td><%#Eval("Sinav1")%></td>
                        <td><%#Eval("Sinav2")%></td>
                        <td><%#Eval("Sinav3")%></td>
                        <td><%#Eval("Ortalama")%></td>
                        <td><%#Eval("Durum")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/NotGuncelle.aspx?NotGuncelle="+ Eval("OgrenciId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>


</asp:Content>
