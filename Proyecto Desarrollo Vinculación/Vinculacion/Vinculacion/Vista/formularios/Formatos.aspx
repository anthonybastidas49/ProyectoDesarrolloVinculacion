<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="Formatos.aspx.cs" Inherits="Vista_formularios_Formatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
            color: #0000CC;
        }
        .auto-style12 {
            margin-left: 480px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/estiloFormatos.css" rel="stylesheet" />
    <hr  style="border: 5px groove #000000; width: 100%; height: 100%;" />
    <div style="width: 100%; height: 100%;"><h1 class="auto-style11">DESCARGAR FORMATOS DE ENTREGA</h1></div>
    <hr style="border: 5px groove #000000" />
    <div>
        <asp:GridView ID="vistaDocumento" runat="server" CellPadding="4" CssClass="mGrid" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="vistaDocumento_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
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
    <hr style="border: 8px groove #000000" />
    <div class="auto-style12">
        <asp:Image ID="Image1" runat="server" Height="189px" ImageUrl="~/Imagenes/doc.png" Width="230px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
   <hr style="border: 6px groove #000000;" />
</asp:Content>

