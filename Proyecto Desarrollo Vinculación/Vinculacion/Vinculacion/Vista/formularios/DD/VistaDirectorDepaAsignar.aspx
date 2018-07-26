<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirector.master" AutoEventWireup="true" CodeFile="VistaDirectorDepaAsignar.aspx.cs" Inherits="Vista_formularios_VistaDirectorDepaAsignar" %>

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
        <h1>Asignar Tutor Académico</h1>
    </div>
    <div style="width:100%">
        <table style="width:100%">
            <tr>
                <td>

                    <asp:DropDownList ID="dropEstudiante" runat="server" OnSelectedIndexChanged="dropEstudianteSeleccionar" Height="21px">
                    </asp:DropDownList>

                </td>
                <td>

                    <asp:DropDownList ID="dropMaestro" runat="server" OnSelectedIndexChanged="dropMaestro_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>

                </td>
            </tr>
        </table>    

    </div>
<div class="auto-style5">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="120px" ImageUrl="~/Imagenes/confirmarTutor.png" OnClick="ImageButton1_Click" Width="377px" />
</div>
</asp:Content>

