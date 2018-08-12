<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraCV.master" AutoEventWireup="true" CodeFile="ActualizarFormatos.aspx.cs" Inherits="Vista_formularios_CV_ActualizarFormatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../estilos/CV.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style16 {
            margin-left: 105px;
        }
        .auto-style28 {
            margin-left: 360px;
        }
        .auto-style30 {
            font-size: 16pt;
        }
        .auto-style31 {
            text-align: right;
            height: 35px;
        }
        .auto-style32 {
            width: 136px;
            height: 35px;
        }
        .auto-style33 {
            margin-left: 440px;
        }
        .auto-style34 {
            width: 358px;
        }
        .auto-style35 {
            font-size: 16pt;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/General.css" rel="stylesheet" /> 
    <link href="../estilos/VistaDD.css" rel="stylesheet" />
    
    <div class="divMenu" style="background-color: #006600; font-size: 30px; font-weight: bold; font-style: normal">
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
    <hr style="border: 4px solid #339933; height:100%" />
    <div>
        <h1 class="auto-style5">
            Actualizar Formatos de Documentación
        </h1>
    </div>
    <div class="auto-style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="auto-style5">
                    <asp:GridView ID="vistaDocumentos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" EnableTheming="True" Height="16px" Width="429px" OnSelectedIndexChanged="vistaDocumentos_SelectedIndexChanged" BorderStyle="None" CssClass="mGrid">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                            <ControlStyle Height="50px" Width="50px" />
                            <ItemStyle Height="50px" Width="50px" />
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
                    </div>
  </div>
    <hr style="border: 4px solid #339933; height:100%" />
<div class="divMenu" style="background-color: #FFFF00">
        <div>
            <table>
                <tr>
                    <td class="auto-style31">

                        <strong>

                        <asp:Label ID="Label1" runat="server" Text="ID:" CssClass="auto-style30"></asp:Label>

                        </strong>

                    </td>
                    <td class="auto-style31">

                        <asp:Label ID="lblId" runat="server" CssClass="auto-style30"></asp:Label>

                    </td>
                    <td class="auto-style32"></td>
                    <td class="auto-style31">

                        <strong>

                        <asp:Label ID="Label3" runat="server" Text="NOMBRE:" CssClass="auto-style30"></asp:Label>

                        </strong>

                    </td>
                    <td class="auto-style31">

                        <asp:Label ID="lblNom" runat="server" CssClass="auto-style30"></asp:Label>

                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td class="auto-style8">
                        
                        <strong>
                        
                        <asp:Label ID="Label4" runat="server" Text="NOMBRE DOCUMENTO:" CssClass="auto-style30"></asp:Label>
                        
                        </strong>
                        
                    </td>
                    <td class="auto-style35">

                        &nbsp;</td>
                    <td>

                        <asp:FileUpload ID="documento" runat="server" style="font-size: 16pt" ToolTip="Examinar" />

                    </td>
                </tr>
            </table>
        </div>
</div>
    <hr style="border: 4px solid #339933; height:100%" />
        <div style="background-color: #FFFF00" class="divMenu">
            <table>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="btnActualizar" runat="server" Height="100px" ImageUrl="~/Imagenes/ActualizarFormato.png" OnClick="btnActualizar_Click" Width="140px" ToolTip="ACTUALIZAR" CssClass="button" />
                    </td>
                    <td class="auto-style7">
                            
                        <asp:ImageButton ID="btnDescargar" runat="server" CssClass="auto-style16" Height="100px" ImageUrl="~/Imagenes/descargar.png" OnClick="btnDescargar_Click" ToolTip="DESCARGAR" Width="140px" />
                            
                    </td>
                </tr>
            </table>
        </div>
<hr style="border: 4px solid #339933; height:100%" />
</asp:Content>

