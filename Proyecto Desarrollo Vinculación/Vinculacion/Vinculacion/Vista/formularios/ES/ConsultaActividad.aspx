<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraES.master" AutoEventWireup="true" CodeFile="ConsultaActividad.aspx.cs" Inherits="Vista_formularios_ES_ConsultaActividad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            margin-left: 200px;
        }
        .auto-style17 {
            font-size: 24pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/ES.css" rel="stylesheet" />
    <hr style="border: 4px ridge #FFFF66" />

        <div class="divMenuM"style="width:100%" >
        <table class="auto-style36">
            <tr>
                <td class="auto-style37" style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                
                <td>
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="TUTOR ACADÉMICO:     "></asp:Label><asp:Label ID="lblTU" runat="server" Text="Label"></asp:Label>
                </td>
        </table>
        </div>
    <hr style="border: 4px ridge #FFFF66" />

    <div>
        <h2 class="auto-style5">ACTIVIDADES REALIZADAS
    </div>
    <hr style="border: 4px ridge #FFFF66" />

    <div class="auto-style16">
        <asp:GridView ID="vistaActividades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid">
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
        <strong>
        <asp:Label ID="lblControl" runat="server" Text="SIN ACTIVIDADES" Visible="False" CssClass="auto-style17"></asp:Label>
        </strong>
    </div>
</asp:Content>

