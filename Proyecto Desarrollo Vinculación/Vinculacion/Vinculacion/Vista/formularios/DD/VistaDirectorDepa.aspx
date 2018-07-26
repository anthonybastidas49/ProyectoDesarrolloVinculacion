<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirector.master" AutoEventWireup="true" CodeFile="VistaDirectorDepa.aspx.cs" Inherits="Vista_VistaDirectorDepa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            height: 50px;
            width: 336px;
        }
        .auto-style18 {
            width: 245px;
            height: 206px;
        }
        .auto-style19 {
            width: 45px;
        }
        .auto-style20 {
            width: 47px;
        }
        .auto-style21 {
            height: 206px;
        }
        .auto-style22 {
            width: 266px;
        }
        .auto-style23 {
            width: 472px;
            height: 105px;
        }
        .auto-style24 {
            font-size: x-large;
        }
        .auto-style26 {
            height: 105px;
        }
        .auto-style28 {
            width: 85px;
        }
        .auto-style32 {
            color: #000000;
        }
        .auto-style33 {
            width: 151px;
        }
        .auto-style34 {
            width: 70px;
        }
        .auto-style35 {
            font-size: xx-large;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/VistaDD.css" rel="stylesheet" />
    <div class="divTitulo">
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
<%--    <div>
        <table id="menu" style="width:100%">
        <tr id="menuColumna">
            <td id="menu1" style="text-align:center;" class="tdMenu">
                <a href="loginVinculacion.aspx"><asp:ImageButton ID="ImageButton1" runat="server" Height="107px" ImageUrl="~/Imagenes/Aprobaciones.png" Width="157px" ToolTip="Aprobar Solicitudes" /></a>
            </td>
            <td id="menu2"style="text-align:center;">
               <a   href="informacionVinculacion.aspx"><h3>INFORMACIÓN</h3></a>
            </td>
            <td id="menu3"style="text-align:center;">
                <a href="inforProyectos.aspx"><h3 >PROYECTOS</h3></a>
            </td>
            <td id="menu4"style="text-align:center;">
               <a href="loginVinculacion.aspx"> <h3 >FORMATOS</h3></a>
            </td>
            <td id="menu5"style="text-align:center;">
               <a href="acercaDE.aspx"> <h3 >ACERCA DE</h3></a>
            </td>
            <td id="menu6"style="text-align:center;">
               <a href="contacto.aspx"> <h3 >CONTACTO</h3></a>
            </td>
        </tr>
    </table>
    </div>--%>
    <div><h3 class="auto-style35">Aprobación de solicitudes Estudiantes</h3></div>
    <div class="auto-style5">
        <table>
            <tr>
                <td class="auto-style18">

                </td>
                <td class="auto-style21">
                    <asp:GridView ID="vistaSolicitud" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" EnableTheming="True" OnRowUpdating="Page_Load" CssClass="diseñoTabla" Height="16px" Width="314px" OnSelectedIndexChanged="selectedIndexChange">
                    <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                     <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="auto-style21">
                    <asp:GridView ID="vistaProyecto" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="154px" CssClass="diseñoTabla">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
        </table> 
    </div>
    <div  id="divDatos"class="estiloTablaMenu" >
        <table class="auto-style24">
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style19">

                    <strong>

                    <asp:Label ID="Label1" runat="server" Text="ID: "></asp:Label>

                    </strong>

                </td>
                <td class="auto-style20">

                    <asp:Label ID="lblid" runat="server" CssClass="auto-style32"></asp:Label>

                </td>
                <td class="auto-style33"></td>
                <td>

                    <strong>NOMBRE:</strong>

                </td>
                <td>

                    <asp:Label ID="lblnom" runat="server" CssClass="auto-style32"></asp:Label>

                </td>
                <td class="auto-style34"></td>
                <td>

                    <strong>

                    <asp:Label ID="Label5" runat="server" Text="APELLIDO: "></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:Label ID="lblape" runat="server" CssClass="auto-style32"></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td>

                    <strong>

                    <asp:Label ID="Label7" runat="server" Text="CEDULA: "></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:Label ID="lblced" runat="server" CssClass="auto-style32"></asp:Label>

                </td>
                <td class="auto-style33"></td>
                <td>

                    <strong>

                    <asp:Label ID="Label9" runat="server" Text="CARRERA: "></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:Label ID="lblcar" runat="server" CssClass="auto-style32"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
    <div style="width:100%" class="auto-style5">
        <table>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style26">
                    <asp:ImageButton ID="btnAprobar" runat="server" Height="101px" ImageUrl="~/Imagenes/listo.png" Width="127px" OnClick="ImageButton1_Click" ToolTip="Aprobar" />
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style26">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="92px" ImageUrl="~/Imagenes/noLiso.png" Width="98px" OnClick="ImageButton2_Click" ToolTip="Rechazar" />
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>

