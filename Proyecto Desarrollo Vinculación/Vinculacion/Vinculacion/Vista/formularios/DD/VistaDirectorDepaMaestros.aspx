<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirector.master" AutoEventWireup="true" CodeFile="VistaDirectorDepaMaestros.aspx.cs" Inherits="Vista_formularios_VistaDirectorDepaMaestros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style13 {
            height: 50px;
            width: 336px;
        }
        .auto-style40 {
            width: 160px;
        }
        .auto-style41 {
            width: 233px;
        }
        .auto-style42 {
            width: 191px;
        }
        .auto-style43 {
            width: 171px;
        }
        .auto-style44 {
            width: 154px;
        }
        .auto-style45 {
            font-size: 26px;
            font-style: normal;
            border-radius: 15px;
            -moz-border-radius: 15px;
            opacity: 0.8;
            filter: alpha(opacity=20);
            zoom: 1;
            text-align: center;
            background-color: #bbb3b3;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/VistaDD.css" rel="stylesheet" />
    <link href="../../estilos/DD.css" rel="stylesheet" />
    <div class="divMenuM" style="height:100%">
        <table >
            <tr>
                <td  style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td >
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
    </div>
    <hr style="border: 4px solid #0066FF" />

    <div style="height: 378px;overflow-y: scroll;overflow-x: hidden;">
        <h1 class="auto-style5">Asociar Maestros al Proyecto</h1>
        <asp:GridView ID="vistaMaestros" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="mGrid" OnSelectedIndexChanged="seleccionarDocente" Width="100%">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
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
    <hr style="border: 4px solid #0066FF" />

    <div class="divMenuFinal">
        <table style="width:100%">
            <tr>
                <td class="auto-style40">
                    <strong>ID</strong>:</td>
                <td class="auto-style41">
                    <asp:Label ID="lblid" runat="server"></asp:Label>
                </td>
                <td class="auto-style42">
                    <strong>
                    <asp:Label ID="label3" runat="server" Text="NOMBRE"></asp:Label>
                    </strong>:</td>
                <td class="auto-style43">
                    <asp:Label ID="lblnom" runat="server"></asp:Label>
                </td>
                <td class="auto-style44">
                    <strong>APELLIDO</strong>:</td>
                <td>
                    <asp:Label ID="lblape" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="CARRERA:"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style41">
                    <asp:Label ID="lblcarre" runat="server"></asp:Label>
                </td>
                <td class="auto-style42">
                    <strong>
                    <asp:Label ID="Laber5" runat="server" Text="CARGO:"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style43">
                    <asp:DropDownList ID="droCargo" runat="server" CssClass="lista">
                        <asp:ListItem>DP</asp:ListItem>
                        <asp:ListItem>CV</asp:ListItem>
                        <asp:ListItem>MP</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style44">
                    <strong>
                    <asp:Label ID="Label10" runat="server" Text="PROYECTO"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:DropDownList ID="dropProyecto" runat="server" OnSelectedIndexChanged="dropProyecto_SelectedIndexChanged" CssClass="lista">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div class="auto-style45">
        <asp:ImageButton ID="btnAgregar" runat="server" Height="172px" ImageUrl="~/Imagenes/agregar.png" OnClick="btnAgregar_Click" ToolTip="Agregar Maestros" Width="202px" />
    </div>
    
</asp:Content>

