<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraCV.master" AutoEventWireup="true" CodeFile="RegistroDocumentación.aspx.cs" Inherits="Vista_formularios_CV_RegistroDocumentación" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    <div>
        <h1>REGISTRAR DOCUMENTACIÓN ESTUDIANTE</h1>
    </div>
    <div>
        <h1>SELECCIONAR ESTUDIANTE</h1>
    </div>
    <div class="auto-style5">

        <asp:DropDownList ID="lstEstudiantes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstEstudiantes_SelectedIndexChanged">
        </asp:DropDownList>

    </div>
        <div>
            <h2>Documentación Entregada</h2>
        </div>
    <div class="auto-style5" style="overflow-y: scroll overflow-x: hidden">
        <table>
            <tr>
                <td>
             <asp:GridView ID="vistaEstado" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="SIN DOCUMENTOS" Enabled="False" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
      
    </div>
        <div class="auto-style5">
            <h3>Subir documento</h3>
            <asp:FileUpload ID="documento" runat="server" />
        </div>
        <div class="auto-style5">
            <asp:ImageButton ID="btnSubir" runat="server" Height="116px" ImageUrl="~/Imagenes/ActualizarFormato.png" OnClick="btnSubir_Click" Width="127px" />
        </div>
    
    

</asp:Content>

