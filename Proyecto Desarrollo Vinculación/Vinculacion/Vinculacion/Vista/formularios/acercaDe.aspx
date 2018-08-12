<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="acercaDe.aspx.cs" Inherits="Vista_acercaDe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 440px;
        }
        .auto-style14 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/acercaDE.css" rel="stylesheet" />
    <div>
        <p class="estiloP" style="line-height: normal; border: 6px solid #008000">Software eleborado por los estudiantes de la Universidad de las Fuerzas Armadas ESPE: </span> <a href="https://www.facebook.com/paula.monteros.5">
        Monteros Paula</a>, <a href="https://www.facebook.com/mayra.alexa.52">Paspuel Mayra</a>,<a href="https://www.facebook.com/anthony.torresbastidas"> Torres Anthony</a>. Con fin del cumplimiento del
        proyecto realizado para la materia de Desarrollo de Software impartida por la ING Celina Hinojosa.
        El programa cuenta con la funcionalidad implantada por la universidad y se acoje a sus estandares, normas y 
        reglas de cumplimiento.
        </p>
    </div>
    <hr style="border: thin outset #008000" />
    <div class="auto-style12">
        <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl="~/Imagenes/acercaDe.png" Width="245px" />
    </div>

</asp:Content>

