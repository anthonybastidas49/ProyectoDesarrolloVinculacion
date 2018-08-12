<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraCV.master" AutoEventWireup="true" CodeFile="Certificado.aspx.cs" Inherits="Vista_formularios_CV_Certificado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            font-size: 36pt;
        }
        .auto-style29 {
            background-color: #f7ed68;
            -moz-border-radius: 15px;
            border-radius: 15px;
            font-size: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/CV.css" rel="stylesheet" />
     <div class="divMenuM">
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
        
        <div>
            <asp:GridView ID="vistaCertificaciones" runat="server" CellPadding="4" GridLines="None" OnSelectedIndexChanged="vistaCertificaciones_SelectedIndexChanged" ForeColor="#333333" CssClass="mGrid">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                    <ControlStyle Height="50px" Width="50px" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <strong>
            <asp:Label ID="lblControl" runat="server" Text="SIN DATOS" Visible="False" CssClass="auto-style27"></asp:Label>
            </strong>
        </div>
        </div>
    <hr style="border: 4px solid #339933; height:100%" />

        <div class="divFinal">
            <table>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="NOMBRE:"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:Label ID="lblNom" runat="server" Text=" "></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td>
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="APELLIDO:"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:Label ID="lblAple" runat="server" Text=" "></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="Label5" runat="server" Text="NUMERO DE HORAS:"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblNum" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    <hr style="border: 4px solid #339933; height:100%" />

         <div class="auto-style29">
             <asp:ImageButton ID="ImageButton1" runat="server" Height="179px" ImageUrl="~/Imagenes/pdf.png" OnClick="ImageButton1_Click" Width="194px" />
         </div>
    <hr style="border: 4px solid #339933; height:100%" />

</asp:Content>

