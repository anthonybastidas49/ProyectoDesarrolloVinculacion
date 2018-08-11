<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="AgregarPlanificacion.aspx.cs" Inherits="Vista_formularios_DP_AgregarPlanificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 192px;
        }
        .auto-style16 {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <div class="divTitulo"style="width=100%" >
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
    <h2>AGREGAR ACTIVIDADES DE PLANIFICACIÓN</h2>
</div>
    <div>
        <table>
            <tr>
                <td>

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
    <div>
        <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="FECHA INICIO"></asp:Label>
                </td>
                <td class="auto-style15"></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="FECHA FIN"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>

                    <asp:Label ID="lblFechI" runat="server"></asp:Label>

                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
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
    <div>
        <asp:ImageButton ID="btnIngresar" runat="server" Height="165px" ImageUrl="~/Imagenes/ok.png" OnClick="btnIngresar_Click" Width="225px" />
    </div>
</asp:Content>

