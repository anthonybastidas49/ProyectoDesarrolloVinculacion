<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraCV.master" AutoEventWireup="true" CodeFile="Certificado.aspx.cs" Inherits="Vista_formularios_CV_Certificado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
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
        <div>
            <asp:GridView ID="vistaCertificaciones" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="vistaCertificaciones_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:Label ID="lblControl" runat="server" Text="SIN DATOS" Visible="False"></asp:Label>
        </div>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="NOMBRE:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNom" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="APELLIDO:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAple" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="NUMERO DE HORAS:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNum" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
         <div>
             <asp:ImageButton ID="ImageButton1" runat="server" Height="179px" ImageUrl="~/Imagenes/pdf.png" OnClick="ImageButton1_Click" Width="194px" />
         </div>
</asp:Content>

