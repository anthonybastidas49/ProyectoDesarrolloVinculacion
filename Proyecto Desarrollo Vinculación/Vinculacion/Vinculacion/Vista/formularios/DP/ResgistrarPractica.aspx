<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ResgistrarPractica.aspx.cs" Inherits="Vista_formularios_DP_ResgistrarPractica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/DP.css" rel="stylesheet" />
                    <hr style="border: 4px ridge #FF3E3E" />
    
    
    
    <div class="divMenuM"style="width:100%" >
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
    <hr style="border: 4px ridge #FF3E3E" />
    <div>
        <h1 class="auto-style5">RESGISTRO DE PRÁCTICAS</h1>
    </div>
    <hr style="border: 4px ridge #FF3E3E" />
    <div class="auto-style17">
        <div class="auto-style5">
        <asp:GridView ID="vistaEstudiante" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="vistaEstudiante_SelectedIndexChanged" CssClass="mGrid">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <hr style="border: 4px ridge #FF3E3E" />
    <div class="divMenuFinal">
        <table>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label2" runat="server" Text="NOMBRE:"></asp:Label>

                    </strong>

                </td>
                <td>
                        
                    <asp:Label ID="lblNom" runat="server"></asp:Label>
                        
                </td>
                <td>

                    <strong>

                    <asp:Label ID="Label4" runat="server" Text="APELLIDO:"></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:Label ID="lblApe" runat="server"></asp:Label>

                </td>
                 <td>

                     <strong>

                     <asp:Label ID="Label5" runat="server" Text="ID PROYECTO:"></asp:Label>

                     </strong>

                </td>
                <td>

                    <asp:Label ID="lblIdPro" runat="server" Text=""></asp:Label>

                </td>
    
            </tr>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label7" runat="server" Text="NUMERO HORAS"></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:TextBox ID="txtHoras" runat="server"></asp:TextBox>

                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoras" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtHoras" ErrorMessage="solo números" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>

                </td>
                <td>

                    <strong>

                    <asp:Label ID="Label9" runat="server" Text="DESCRIPCIÓN:"></asp:Label>

                    </strong>

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
    <div class="divMenuFinal">
        <table>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style17">
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
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="FECHA"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="divMenuFinal">
        <table>
            <tr>
                <td>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:ImageButton ID="btnRegistrar" runat="server" Height="127px" ImageUrl="~/Imagenes/horas.png" OnClick="btnRegistrar_Click" Width="154px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

