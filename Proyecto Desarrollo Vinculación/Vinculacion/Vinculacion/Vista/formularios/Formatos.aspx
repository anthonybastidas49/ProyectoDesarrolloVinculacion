<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="Formatos.aspx.cs" Inherits="Vista_formularios_Formatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <div><h1>DESCARGAR FORMATOS DE ENTREGA</h1></div>
    <div>
        <asp:GridView ID="vistaDocumento" runat="server" AutoGenerateSelectButton="True" CellPadding="4" CssClass="auto-style11" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="vistaDocumento_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
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
        </asp:GridView>
    </div>
</asp:Content>

