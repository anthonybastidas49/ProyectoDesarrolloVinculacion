<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirector.master" AutoEventWireup="true" CodeFile="VistaDirectorDepaAsignar.aspx.cs" Inherits="Vista_formularios_VistaDirectorDepaAsignar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .auto-style13 {
            height: 50px;
            width: 336px;
        }
          .auto-style20 {
              background-color: #bbb3b3;
              font-size: 26px;
              font-style: normal;
              border-radius: 20px 20px 20px 20px;
              -moz-border-radius: 15px;
              border-radius: 15px;
              opacity: 0.8;
              filter: alpha(opacity=20); /* IE8 and lower */;
              zoom: 1;
              text-align: center;
          }
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/VistaDD.css" rel="stylesheet" />
    <hr style="border: 4px solid #0066FF" />

    <div class="divMenuM" style="height:100%">
        <table >
            <tr>
                <td  style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td >
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
    </div>
    <hr style="border: 4px solid #0066FF" />

    <div>
        <h1 class="auto-style5">Asignar Tutor Académico</h1>
    </div>
    <hr style="border: 4px solid #0066FF" />

    <div style="width:100%" class="divMenuFinal">
        <table class="auto-style9">
            <tr>
                <td class="auto-style5">

                    <asp:DropDownList ID="dropEstudiante" runat="server" OnSelectedIndexChanged="dropEstudianteSeleccionar" Height="21px" CssClass="lista">
                    </asp:DropDownList>

                </td>
                <td class="auto-style5">

                    <asp:DropDownList ID="dropMaestro" runat="server" OnSelectedIndexChanged="dropMaestro_SelectedIndexChanged" AutoPostBack="True" CssClass="lista">
                    </asp:DropDownList>

                </td>
            </tr>
        </table>    

    </div>
<div class="auto-style20">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Imagenes/confirmarTutor.png" OnClick="ImageButton1_Click" Width="300px" />
</div>
    
</asp:Content>

