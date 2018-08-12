<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="AgregarPlanificacion.aspx.cs" Inherits="Vista_formularios_DP_AgregarPlanificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 192px;
        }
        .auto-style16 {
            width: 9px;
        }
        .auto-style18 {
            margin-left: 240px;
        }
        .auto-style20 {
            font-size: 30px;
            font-style: normal;
            border-radius: 15px;
            -moz-border-radius: 15px;
            opacity: 0.9;
            filter: alpha(opacity=20);
            zoom: 1;
            text-align: center;
            background-color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/DP.css" rel="stylesheet" />
        <hr style="border: 4px ridge #FF3E3E" />
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
<div>
    <h2 class="auto-style5">AGREGAR ACTIVIDADES DE PLANIFICACIÓN</h2>
</div>
    <hr style="border: 4px ridge #FF3E3E" />
    <div class="divMenuM">
        <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style18">

                    <asp:Label ID="Label1" runat="server" Text="DESCRIPCIÓN:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtDescripcion" runat="server" Height="25px" Width="200px"></asp:TextBox>

                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtDescripcion"></asp:RequiredFieldValidator>
                </td>
                <td>

                    <asp:Label ID="Label2" runat="server" Text="LUGAR:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtLugar" runat="server" Height="25px" Width="200px"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtLugar"></asp:RequiredFieldValidator>
                </td>
            </tr>

        </table>
    </div>
    <div class="divMenuM">
        <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="FECHA INICIO"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="FECHA FIN"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <hr style="border: 4px ridge #FF3E3E" />
    <div class="auto-style5">
        <table>
            <tr>
                <td 
                </td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <td>
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
    <div class="auto-style20" >
        <asp:ImageButton ID="btnIngresar" runat="server" Height="165px" ImageUrl="~/Imagenes/ok.png" OnClick="btnIngresar_Click" Width="225px" ToolTip="AgregarPlanificacion" />
    </div>
</asp:Content>

