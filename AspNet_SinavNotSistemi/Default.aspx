<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNet_SinavNotSistemi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ad</th>
            <th scope="col">Soyad</th>
            <th scope="col">Telefon</th>
            <th scope="col">Mail</th>
            <th scope="col">Şifre</th>
            <th scope="col">İşemler</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
                   <tr>
                       <td> <%#Eval("OgrenciId")%></td>
                       <td> <%#Eval("OgrenciAd")%></td>
                       <td> <%#Eval("OgrenciSoyad")%></td>
                       <td> <%#Eval("OgrenciTelefon")%></td>
                       <td> <%#Eval("OgrenciMail")%></td>
                       <td> <%#Eval("OgrenciSifre")%></td>
                       <td>
                           <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                           <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                       </td>
                   </tr>
               </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>

<%-- <th scope="row">1</th>--%>