<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirector.master" AutoEventWireup="true" CodeFile="VistaDirectorDepa.aspx.cs" Inherits="Vista_VistaDirectorDepa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../estilos/DD.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style13 {
            height: 50px;
            width: 336px;
        }
        .auto-style19 {
            width: 45px;
        }
        .auto-style20 {
            width: 47px;
        }
        .auto-style22 {
            width: 266px;
        }
        .auto-style23 {
            width: 472px;
            height: 105px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/VistaDD.css" rel="stylesheet" />
    <div class="divMenuM">
        <table>
            <tr>
                <td class="" style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td>
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
    </div>
    <hr style="border: 4px solid #0066FF" />
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
    <div class="auto-style5"><h3 class="auto-style35">Aprobación de solicitudes Estudiantes</h3></div>
    <hr style="border: 4px solid #0066FF" />
    <div >
        <table>
            <tr>
                <td>
                    <asp:GridView ID="vistaSolicitud" runat="server" CellPadding="4" CssClass="mGrid" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="selectedIndexChange" Width="100px">
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
                    
                </td>
                <td>
                    <asp:GridView ID="vistaProyecto" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="30%" CssClass="mGrid" OnSelectedIndexChanged="vistaProyecto_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                            <ControlStyle Height="50px" Width="50px" />
                            </asp:CommandField>
                        </Columns>
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
    <hr style="border: 4px solid #0066FF" />
    <div  id="divDatos"class="divMenuFinal" >
        <table>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style19">

                    <strong>

                    <asp:Label ID="Label1" runat="server" Text="ID: " CssClass="auto-style32"></asp:Label>

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
                <td>

                    <strong>
                    <asp:Label ID="Label10" runat="server" Text="IDPROYECTO"></asp:Label>
                    </strong>

                </td>
                <td>

                    <asp:Label ID="lblProyecto" runat="server" ></asp:Label>

                </td>
            </tr>
        </table>
    </div>
        <div style="width:100%" class="divMenuFinal">
        <table>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style26">
                    <asp:ImageButton ID="btnAprobar" runat="server" Height="100px" ImageUrl="~/Imagenes/aprobar.png" Width="150px" OnClick="ImageButton1_Click" ToolTip="Aprobar" />
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style26">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/Imagenes/rechazar.png" Width="150px" OnClick="ImageButton2_Click" ToolTip="Rechazar" />
                </td>
            </tr>
        </table>
        
    </div>
    </asp:Content>

