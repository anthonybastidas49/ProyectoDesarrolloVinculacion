<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/ADMIN.master" AutoEventWireup="true" CodeFile="ProyectoAdminaspx.aspx.cs" Inherits="Vista_formularios_ProyectoAdminaspx" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/admin.css" rel="stylesheet" />
    <div class="divM"><h2>REGISTRAR PROYECTOS</h2></div>
    <div>
        <table>
            <tr>
                <td class="auto-style18">
                    <strong>NOMBRE</strong>:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="text"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <strong>COMUNIDAD:</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtComu" runat="server" CssClass="text"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <strong>NUMERO</strong> <strong>ESTUDIANTES</strong>:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNumE" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>NUM</strong> <strong>PROFESORES</strong>:</td>
                <td>
                    <asp:TextBox ID="txtNumP" runat="server" CssClass="text"></asp:TextBox>
                </td>
                <td>
                    <strong>CARRERA:</strong></td>
                <td>
                    <asp:TextBox ID="txtCarrera" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Label ID="lblIn" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Label ID="lblFin" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="auto-style5">
        <asp:Button ID="Button1" runat="server" Text="REGISTRAR" Height="51px" OnClick="Button1_Click" Width="116px" CssClass="text" />
    </div>
</asp:Content>