<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraCV.master" AutoEventWireup="true" CodeFile="ActualizarFormatos.aspx.cs" Inherits="Vista_formularios_CV_ActualizarFormatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 304px;
        }
        .auto-style16 {
            margin-left: 105px;
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
    <div>
        <h1>
            Actualizar Formatos de Documentación
        </h1>
        <div class="auto-style5">
            <table>
                <tr>
                    <td class="auto-style15">
                        
                    </td>
                    <td>
                    <asp:GridView AutoGenerateSelectButton = true ID="vistaDocumentos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" EnableTheming="True" OnRowUpdating="Page_Load" CssClass="diseñoTabla" Height="16px" Width="314px" OnSelectedIndexChanged="vistaDocumentos_SelectedIndexChanged" AutoGenerateEditButton="True" OnRowEditing="vistaDocumentos_RowEditing" OnRowUpdated="vistaDocumentos_RowUpdated">
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
    </div>
        <div>
            <table>
                <tr>
                    <td>

                        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>

                    </td>
                    <td>

                        <asp:Label ID="lblId" runat="server"></asp:Label>

                    </td>
                    <td class="auto-style6"></td>
                    <td>

                        <asp:Label ID="Label3" runat="server" Text="NOMBRE:"></asp:Label>

                    </td>
                    <td>

                        <asp:Label ID="lblNom" runat="server"></asp:Label>

                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        
                        <asp:Label ID="Label4" runat="server" Text="NOMBRE DOCUMENTO:"></asp:Label>
                        
                    </td>
                    <td>

                        &nbsp;</td>
                    <td>

                        <asp:FileUpload ID="documento" runat="server" />

                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:ImageButton ID="btnActualizar" runat="server" Height="104px" ImageUrl="~/Imagenes/ActualizarFormato.png" OnClick="btnActualizar_Click" Width="132px" ToolTip="ACTUALIZAR" />
                    </td>
                    <td>

                    </td>
                    <td>
                            
                        <asp:ImageButton ID="btnDescargar" runat="server" CssClass="auto-style16" Height="109px" ImageUrl="~/Imagenes/descargar.png" OnClick="btnDescargar_Click" ToolTip="DESCARGAR" Width="161px" />
                            
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>

