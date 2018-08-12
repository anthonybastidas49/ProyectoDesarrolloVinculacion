<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraBene.master" AutoEventWireup="true" CodeFile="Confirmacion.aspx.cs" Inherits="Vista_formularios_BF_Confirmacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
            margin-left: 240px;
        }
        .auto-style16 {
            font-size: 24pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <hr style="border: 4px ridge #FFFFFF" />


    <link href="../../estilos/BF.css" rel="stylesheet" />
        <div class="divMenuM"style="width=100%" >
        <table class="auto-style36">
            <tr>
                <td class="auto-style37" style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td>
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
        </div>
    <hr style="border: 4px ridge #FFFFFF" />


    <div>
        <div class="auto-style15">
        <asp:GridView ID="vistaActividades" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="vistaActividades_SelectedIndexChanged" CssClass="mGrid">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        </div>
        <hr style="border: 4px ridge #FFFFFF" />


        <strong>
        <asp:Label ID="lblControl" runat="server" Text="SIN DATOS" CssClass="auto-style16"></asp:Label>
        </strong>
    </div>
</asp:Content>

