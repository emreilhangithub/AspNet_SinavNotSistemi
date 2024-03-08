<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="AspNet_SinavNotSistemi.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="table table-bordered table-hover">
    <tr>
        <th scope="col">Ders Id</th>
        <th scope="col">Ders Ad</th>
        <th scope="col">İşlemler</th>
    </tr>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
           <ItemTemplate>
               <tr>
                   <td> <%#Eval("DersId")%></td>
                   <td> <%#Eval("DersAd")%></td>                   <td>
                       <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DersSil.aspx?DersId="+ Eval("DersId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                       <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DersGuncelle.aspx?DersId="+ Eval("DersId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                   </td>
               </tr>
           </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>


</asp:Content>
