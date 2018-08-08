<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ResgistrarPractica.aspx.cs" Inherits="Vista_formularios_DP_ResgistrarPractica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        <h1>RESGISTRO DE PRÁCTICAS</h1>
    </div>
    <div>
        <asp:GridView ID="vistaEstudiante" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="vistaEstudiante_SelectedIndexChanged">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </div>
    <div>
        <table>
            <tr>
                <td>

                    <asp:Label ID="Label2" runat="server" Text="NOMBRE:"></asp:Label>

                </td>
                <td>
                        
                    <asp:Label ID="lblNom" runat="server"></asp:Label>
                        
                </td>
                <td>

                    <asp:Label ID="Label4" runat="server" Text="APELLIDO:"></asp:Label>

                </td>
                <td>

                    <asp:Label ID="lblApe" runat="server"></asp:Label>

                </td>
                 <td>

                     <asp:Label ID="Label5" runat="server" Text="ID PROYECTO:"></asp:Label>

                </td>
                <td>

                    <asp:Label ID="lblIdPro" runat="server" Text=""></asp:Label>

                </td>
    
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label7" runat="server" Text="NUMERO HORAS"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtHoras" runat="server"></asp:TextBox>

                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoras" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">*</asp:RequiredFieldValidator>

                </td>
                <td>

                    <asp:Label ID="Label9" runat="server" Text="DESCRIPCIÓN:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>

                </td>

            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Calendar ID="calendario" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="calendario_SelectionChanged" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="FECHA"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td>

                </td>
                <td>
                    <asp:ImageButton ID="btnRegistrar" runat="server" Height="127px" ImageUrl="~/Imagenes/horas.png" OnClick="btnRegistrar_Click" Width="154px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

