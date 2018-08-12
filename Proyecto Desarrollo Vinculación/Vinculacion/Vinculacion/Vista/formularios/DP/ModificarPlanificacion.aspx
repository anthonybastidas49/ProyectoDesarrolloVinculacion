<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ModificarPlanificacion.aspx.cs" Inherits="Vista_formularios_DP_ModificarPlanificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 363px;
        }
        .auto-style18 {
            font-size: 16pt;
        }
        .auto-style19 {
            margin-left: 200px;
        }
        .auto-style20 {
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/DP.css" rel="stylesheet" />
    <div  class="divMenuM" >
                <hr style="border: 4px ridge #FF3E3E" />
    
        <table ">
            <tr>
                <td style="height:100px">
                <h3 class="auto-style17"><span class="auto-style18">BIENVENIDO: </span> <asp:Label ID="lblNombre" runat="server" CssClass="text" style="font-size: 16pt"></asp:Label></h3> 
                    
                </td>
            </tr>
        </table>
        </div>
    <div>
        <h2 class="auto-style5">MODIFICACIÓN DE PLANIFICACIÓN</h2>
    </div>
            <hr style="border: 4px ridge #FF3E3E" />
    
    <div class="auto-style19">
        <asp:GridView ID="vistaPlanificacion" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="modificarFechas" CssClass="mGrid">
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
        <asp:Label ID="lblControl" runat="server" Text="SIN PLANIFICACIÓN" Visible="False"></asp:Label>
    </div>
            <hr style="border: 4px ridge #FF3E3E" />
    
    <div>
         <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style20">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" OnSelectionChanged="Calendar1_SelectionChanged" Width="330px" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth">
                        <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>

                    <asp:Label ID="lblFechI" runat="server"></asp:Label>

                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" OnSelectionChanged="Calendar2_SelectionChanged" Width="330px" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth">
                        <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>

                    <asp:Label ID="lblFechaF" runat="server"></asp:Label>

                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
            <hr style="border: 4px ridge #FF3E3E" />
    
    <div class="divMenuFinal">
        <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style20">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="134px" ImageUrl="~/Imagenes/editar.png" OnClick="ImageButton1_Click" Width="179px" ToolTip="EDITAR" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="146px" ImageUrl="~/Imagenes/delete.png" OnClick="ImageButton2_Click" Width="178px" ToolTip="ELIMINAR" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

