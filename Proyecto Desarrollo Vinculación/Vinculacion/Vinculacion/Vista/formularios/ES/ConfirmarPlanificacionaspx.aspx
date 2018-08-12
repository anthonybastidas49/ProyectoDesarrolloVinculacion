<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraES.master" AutoEventWireup="true" CodeFile="ConfirmarPlanificacionaspx.aspx.cs" Inherits="Vista_formularios_ES_ConfirmarPlanificacionaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            font-size: 24pt;
        }
        .auto-style17 {
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <hr style="border: 4px ridge #FFFF66" />
      <div class="divMenuM"style="width:100%" >
          <link href="../../estilos/ES.css" rel="stylesheet" />
        <table class="auto-style36">
            <tr>
                <td class="auto-style37" style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td>
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
                <td>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="TUTOR ACADÉMICO:     "></asp:Label><asp:Label ID="lblTU" runat="server" Text="Label"></asp:Label>
                </td>
        </table>
          <hr style="border: 4px ridge #FFFF66" />
          </div>
        <div>

            <h2 class="auto-style5">VISUALIZAR PLANIFICACIÓN</h2>
        </div>
    <hr style="border: 4px ridge #FFFF66" />
          <div class="auto-style17">
              &nbsp;&nbsp;&nbsp;
              <div class="auto-style5">
              <asp:GridView ID="vistaPlanificacion" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="mGrid">
                  <FooterStyle BackColor="White" ForeColor="#333333" />
                  <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="White" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F7F7F7" />
                  <SortedAscendingHeaderStyle BackColor="#487575" />
                  <SortedDescendingCellStyle BackColor="#E5E5E5" />
                  <SortedDescendingHeaderStyle BackColor="#275353" />
              </asp:GridView>
              </div>
              <strong>
              <asp:Label ID="lblControl" runat="server" Text="SIN DATOS" CssClass="auto-style16"></asp:Label>
              </strong>
          </div>
</asp:Content>

