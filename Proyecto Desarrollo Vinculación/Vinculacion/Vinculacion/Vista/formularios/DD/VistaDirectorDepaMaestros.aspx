<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirector.master" AutoEventWireup="true" CodeFile="VistaDirectorDepaMaestros.aspx.cs" Inherits="Vista_formularios_VistaDirectorDepaMaestros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            height: 50px;
            width: 336px;
        }
        .auto-style36 {
            font-family: 'Times New Roman';
            font-size: 14pt;
            color: beige;
            border-radius: 20px 20px 20px 20px;
            background: #045521;
            width: 100%;
            height: 104px;
        }
        .auto-style37 {
            height: 148px;
            width: 337px;
        }
        .auto-style38 {
            letter-spacing: 5px;
            text-transform: capitalize;
            font-family: 'Times New Roman';
            text-align: left;
            font-size: 20pt;
            font-style: oblique;
            font-style: normal;
        }
        .auto-style39 {
            height: 378px;
            overflow-y: scroll;
            overflow-x: hidden;
            text-align: center;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/VistaDD.css" rel="stylesheet" />
    <div class="divTitulo" style="height:100%">
        <table class="auto-style36">
            <tr>
                <td class="auto-style37" style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td class="auto-style38">
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
    </div>
    <div>
        <h1>Asociar Maestros al Proyecto</h1>
    </div>
    <div class="auto-style39" <%--style="width:100%; overflow:auto;"--%>style="overflow-y: scroll overflow-x: hidden">
        <asp:GridView ID="vistaMaestros" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="tdMenu" OnSelectedIndexChanged="seleccionarDocente">
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
    <div>
        <table style="width:100%">
            <tr>
                <td class="auto-style40">
                    ID:</td>
                <td class="auto-style41">
                    <asp:Label ID="lblid" runat="server"></asp:Label>
                </td>
                <td class="auto-style42">
                    <asp:Label ID="label3" runat="server" Text="NOMBRE"></asp:Label>
                    :</td>
                <td class="auto-style43">
                    <asp:Label ID="lblnom" runat="server"></asp:Label>
                </td>
                <td class="auto-style44">
                    APELLIDO:</td>
                <td>
                    <asp:Label ID="lblape" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">
                    <asp:Label ID="Label7" runat="server" Text="CARRERA:"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:Label ID="lblcarre" runat="server"></asp:Label>
                </td>
                <td class="auto-style42">
                    <asp:Label ID="Laber5" runat="server" Text="CARGO:"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:DropDownList ID="droCargo" runat="server">
                        <asp:ListItem>DP</asp:ListItem>
                        <asp:ListItem>CV</asp:ListItem>
                        <asp:ListItem>MP</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style44">
                    <asp:Label ID="Label10" runat="server" Text="PROYECTO"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dropProyecto" runat="server" OnSelectedIndexChanged="dropProyecto_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div class="auto-style5">
        <asp:ImageButton ID="btnAgregar" runat="server" Height="172px" ImageUrl="~/Imagenes/agregar.png" OnClick="btnAgregar_Click" ToolTip="Agregar Maestros" Width="202px" />
    </div>
</asp:Content>

