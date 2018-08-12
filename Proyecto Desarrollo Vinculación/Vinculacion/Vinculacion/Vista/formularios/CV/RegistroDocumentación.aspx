<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraCV.master" AutoEventWireup="true" CodeFile="RegistroDocumentación.aspx.cs" Inherits="Vista_formularios_CV_RegistroDocumentación" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            margin-left: 100%;
        }
        .auto-style28 {
            text-align: center;
            margin-left: 320px;
        }
        .auto-style30 {
        font-size: 20pt;
    }
        .auto-style31 {
            background-color: #f7ed68;
            -moz-border-radius: 15px;
            border-radius: 15px;
            font-size: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
     <link href="../estilos/VistaDD.css" rel="stylesheet" />
    <link href="../../estilos/CV.css" rel="stylesheet" />
    <div class="divMenuM">
        <table class="divMenuM">
            <tr>
                <td class="auto-style37" style="height:50px">
                <h3 class="divMenuM">BIENVENIDO:</h3>
                </td>
                <td>
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
        </div>
        <hr style="border: 4px solid #339933; height:100%" />
    <div class="divMenuM" style="background-color: #076c19">
        <h1 class="divMenuM">REGISTRAR DOCUMENTACIÓN ESTUDIANTE</h1>
        <h1 class="divMenuM">SELECCIONAR ESTUDIANTE</h1>
    </div>
        <hr style="border: 4px solid #339933; height:100%" />
    <div class="auto-style5">

        <asp:DropDownList ID="lstEstudiantes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstEstudiantes_SelectedIndexChanged" CssClass="seleccion">
        </asp:DropDownList>

    </div>
        <hr style="border: 4px solid #339933; height:100%" />
        <div>
            <h2>Documentación Entregada&nbsp;&nbsp;&nbsp; </h2>
        </div>
    <div class="auto-style28" style="overflow-y: scroll overflow-x: hidden">
        <table>
            <tr>
                <td class="auto-style27">
             <asp:GridView ID="vistaEstado" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="mGrid" OnSelectedIndexChanged="vistaEstado_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
                 <Columns>
                     <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                     <ControlStyle Height="50px" Width="50px" />
                     </asp:CommandField>
                 </Columns>
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
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="SIN DOCUMENTOS" Enabled="False" Visible="False" CssClass="auto-style30"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
      
    </div>

        <hr style="border: 4px solid #339933; height:100%" />
        <div class="auto-style31">
            <h3 class="divFinal">Subir documento</h3>
            <asp:FileUpload ID="documento" runat="server" />
        </div>
            <hr style="border: 4px solid #339933; height:100%" />
        <div class="auto-style31">
            <asp:ImageButton ID="btnSubir" runat="server" Height="138px" ImageUrl="~/Imagenes/ActualizarFormato.png" OnClick="btnSubir_Click" Width="149px" ToolTip="SUBIR DOCUMENTO" />
        </div>
        <hr style="border: 4px solid #339933; height:100%" />
    
    

</asp:Content>

