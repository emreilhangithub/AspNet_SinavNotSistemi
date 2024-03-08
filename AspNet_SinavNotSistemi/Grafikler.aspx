<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="AspNet_SinavNotSistemi.Grafikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
         <table class="table table-bordered table-hover">
    <tr>
        <td>
            <asp:Chart ID="Chart1" runat="server" Width="500px">
                <series>
                    <asp:Series Name="Dersler" YValuesPerPoint="2">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </td>
        <td>
            <asp:Chart ID="Chart2" runat="server" Width="500px">
                <series>
                    <asp:Series Name="Cinsiyet" ChartType="Pie">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Chart ID="Chart3" runat="server" Width="500px">
                <series>
                    <asp:Series Name="DersAd" ChartType="Doughnut" YValuesPerPoint="4">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </td>
        <td>
            <asp:Chart ID="Chart4" runat="server" Width="500px">
                <series>
                    <asp:Series Name="Notlar" YValuesPerPoint="6">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </td>
    </tr>
</table>
    </form>
</asp:Content>
